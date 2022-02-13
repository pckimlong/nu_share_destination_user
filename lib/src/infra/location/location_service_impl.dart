import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:geocoding/geocoding.dart' as geo_coding;
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:location/location.dart';

import 'package:nu_share_destination_user/src/domain/_core/entities/coordinate.dart';
import 'package:nu_share_destination_user/src/domain/_core/entities/location_detail.dart';
import 'package:nu_share_destination_user/src/domain/_core/entities/location_point.dart';
import 'package:nu_share_destination_user/src/domain/_core/entities/location_point_detail.dart';
import 'package:nu_share_destination_user/src/domain/location/i_location_service.dart';
import 'package:nu_share_destination_user/src/domain/location/location_failure.dart';
import 'mappers.dart';

class LocationServiceImpl implements ILocationService {
  final Location _location;
  final Geoflutterfire _geoflutterfire;

  LocationServiceImpl(
    this._location,
    this._geoflutterfire,
  );

  @override
  Future<Either<LocationFailure, Option<LocationPointDetail>>>
      getAddressByLocationPoint(Coordinate coordinate) async {
    try {
      final placeMarks = await geo_coding.placemarkFromCoordinates(
        coordinate.latitude,
        coordinate.longitude,
      );

      if (placeMarks.isEmpty) return Right(none());

      final placeMark = placeMarks.first;
      debugPrint(placeMark.toString());
      String address = "";

      if (placeMark.subThoroughfare!.isNotEmpty) {
        address += "${placeMark.subThoroughfare!} ";
      }
      if (placeMark.thoroughfare!.isNotEmpty) {
        address += placeMark.thoroughfare!;
      }

      if (placeMark.subThoroughfare!.isEmpty &&
          placeMark.thoroughfare!.isEmpty) {
        address += "Unnamed Road";
      }

      // if (placeMark.name != null) {
      //   if (address.isNotEmpty) address += ", ";
      //   address += placeMark.name!;
      // }

      if (placeMark.locality != null) {
        if (address.isNotEmpty) address += ", ";
        address += placeMark.locality!;
      }

      if (placeMark.country != null) {
        if (address.isNotEmpty) address += ", ";
        address += placeMark.country!;
      }

      final geoPoint = GeoFirePointX.fromDomain(coordinate);

      return Right(
        some(
          LocationPointDetail(
            address: address,
            locationPoint: geoPoint.toDomain(),
            time: null,
          ),
        ),
      );
    } catch (_) {
      debugPrint(_.toString());
      return Left(LocationFailure.packageError(_.toString()));
    }
  }

  @override
  Future<Either<LocationFailure, LocationPoint>>
      getDeviceLocationPoint() async {
    try {
      final LocationData location = await _location.getLocation();
      final geoPoint = _geoflutterfire.point(
        latitude: location.latitude!,
        longitude: location.longitude!,
      );
      return Right(geoPoint.toDomain());
    } catch (_) {
      debugPrint(_.toString());
      return const Left(LocationFailure.permissionDeny());
    }
  }

  @override
  Future<Either<LocationFailure, Option<LocationPointDetail>>>
      translateAddressToLocation(String address) async {
    try {
      final locations = await geo_coding.locationFromAddress(address);

      if (locations.isEmpty) return Right(none());

      final location = locations.first;

      final value = LocationPointDetail(
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
  Stream<Either<LocationFailure, LocationDetail>> watchDeviceLocation() {
    //todo handling error. Set filter for push new stream
    _location.changeSettings(accuracy: LocationAccuracy.high);
    return _location.onLocationChanged.map(
      (loc) => right(
        loc.toDomain(),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }
}
