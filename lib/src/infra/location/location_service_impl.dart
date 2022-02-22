import 'package:fpdart/fpdart.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart'
    as fic;
import 'package:flutter/foundation.dart';
import 'package:geocoding/geocoding.dart' as geo_coding;
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_place/google_place.dart' as gp;
import 'package:nu_share_destination_user/src/domain/core/constants.dart';
import 'package:nu_share_destination_user/src/domain/core/entities/coordinate.dart';
import 'package:nu_share_destination_user/src/domain/core/entities/location_detail.dart';
import 'package:nu_share_destination_user/src/domain/core/entities/location_address.dart';
import 'package:nu_share_destination_user/src/domain/location/i_location_service.dart';
import 'package:nu_share_destination_user/src/domain/location/location_failure.dart';
import 'package:nu_share_destination_user/src/domain/location/place_entity.dart';
import 'package:nu_share_destination_user/src/infra/location/place_entity_mapper.dart';

import 'mappers.dart';

import 'package:location/location.dart' as lc;

class LocationServiceImpl implements ILocationService {
  LocationServiceImpl(
    this._geoflutterfire,
    this._googlePlace,
    this._location,
  );

  final Geoflutterfire _geoflutterfire;
  final gp.GooglePlace _googlePlace;
  final lc.Location _location;

  @override
  Future<Either<LocationFailure, fic.IList<PlaceEntity>>> findAllPlaceByString(
      String query) async {
    try {
      final result = await _googlePlace.search.getTextSearch(query);

      if (result?.status == "REQUEST_DENIED") {
        return const Left(LocationFailure.requestDenied());
      }

      final places = result?.results ?? [];

      final results = places.map((place) => place.toDomain()).toIList();

      return right(results);
    } catch (e) {
      return Left(LocationFailure.packageError(e.toString()));
    }
  }

  @override
  Future<Either<LocationFailure, LocationAddress>> getAddressByCoordinate(
      Coordinate coordinate) async {
    try {
      final locationPoint = coordinate.toLocationPoint();
      final address = await _getAddressByCoor(coordinate);

      return Right(
        LocationAddress(
          address: address,
          locationPoint: locationPoint,
          time: DateTime.now(),
        ),
      );
    } catch (_) {
      debugPrint(_.toString());
      return Left(LocationFailure.packageError(_.toString()));
    }
  }

  @override
  Future<Either<LocationFailure, Option<LocationAddress>>> getAddressByString(
      String address) async {
    try {
      final locations = await geo_coding.locationFromAddress(address);

      if (locations.isEmpty) return Right(none());

      final location = locations.first;

      final value = LocationAddress(
        address: address,
        locationPoint: _geoflutterfire
            .point(latitude: location.latitude, longitude: location.longitude)
            .toDomain(),
        time: location.timestamp,
      );
      return Right(some(value));
    } catch (e) {
      debugPrint(e.toString());
      return Left(LocationFailure.packageError(e.toString()));
    }
  }

  @override
  double getDistance(
      {required Coordinate startedPosition,
      required Coordinate endedPosition}) {
    final result = Geolocator.distanceBetween(
      startedPosition.latitude,
      startedPosition.longitude,
      endedPosition.latitude,
      endedPosition.longitude,
    );

    return result;
  }

  @override
  Future<Either<LocationFailure, LocationAddress>> getMyAddress() async {
    try {
      final Position pos = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.bestForNavigation,
      );
      final coor = Coordinate(pos.latitude, pos.longitude);
      return await getAddressByCoordinate(coor);
    } catch (_) {
      debugPrint(_.toString());
      return const Left(LocationFailure.permissionDeny());
    }
  }

  @override
  Future<Either<LocationFailure, Coordinate>> getMyCoordinate() async {
    try {
      final Position pos = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.bestForNavigation,
      );
      // final pos = await _location.getLocation();
      final coor = Coordinate(pos.latitude, pos.longitude);
      return Right(coor);
    } catch (_) {
      debugPrint(_.toString());
      return const Left(LocationFailure.permissionDeny());
    }
  }

  @override
  Future<LocationAddress?> getMyLastLocationAddress() async {
    final pos = await Geolocator.getLastKnownPosition();
    if (pos == null) return null;
    final coor = Coordinate(pos.latitude, pos.longitude);
    final address = await getAddressByCoordinate(coor);
    return address.fold((l) => null, id);
  }

  @override
  Stream<Either<LocationFailure, LocationDetail>> watchMyLocationDetail(
      [int meterFilter = 10]) {
    return Geolocator.getPositionStream(
      locationSettings: LocationSettings(
        accuracy: LocationAccuracy.bestForNavigation,
        distanceFilter: meterFilter,
      ),
    ).map(
      (event) {
        //todo handling error.
        final result = LocationDetail(
          locationPoint: Coordinate(
            event.latitude,
            event.longitude,
          ).toLocationPoint(),
          accuracy: event.accuracy,
          altitude: event.altitude,
          speed: event.speed,
          speedAccuracy: event.speedAccuracy,
          heading: event.heading,
          time: event.timestamp,
        );
        return right(result);
      },
    );
  }

  Future<String> _getAddressByCoor(Coordinate coordinate) async {
    final placeMarks = await geo_coding.placemarkFromCoordinates(
      coordinate.latitude,
      coordinate.longitude,
    );

    if (placeMarks.isEmpty) return 'Unknown';

    final placeMark = placeMarks.first;
    String address = "";

    if (placeMark.subThoroughfare!.isNotEmpty) {
      address += "${placeMark.subThoroughfare!} ";
    }
    if (placeMark.thoroughfare!.isNotEmpty) {
      address += placeMark.thoroughfare!;
    }

    if (placeMark.subThoroughfare!.isEmpty && placeMark.thoroughfare!.isEmpty) {
      address += "Unnamed Road";
    }

    if (placeMark.locality != null) {
      if (address.isNotEmpty) address += ", ";
      address += placeMark.locality!;
    }

    if (placeMark.country != null) {
      if (address.isNotEmpty) address += ", ";
      address += placeMark.country!;
    }

    return address;
  }

  @override
  Either<LocationFailure, String> coordinateToGeoHash(Coordinate coordinate) {
    try {
      final result = _geoflutterfire.point(
        latitude: coordinate.latitude,
        longitude: coordinate.longitude,
      );
      return Right(result.hash);
    } catch (e) {
      return Left(LocationFailure.packageError(e.toString()));
    }
  }
}
