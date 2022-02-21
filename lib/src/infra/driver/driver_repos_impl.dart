import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:fpdart/fpdart.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:nu_share_destination_user/src/infra/_core/dto_extensions.dart';

import '../../domain/core/entities/coordinate.dart';
import '../../domain/core/entities/location_detail.dart';
import '../../domain/driver/driver_entity.dart';
import '../../domain/driver/driver_failure.dart';
import '../../domain/driver/i_driver_repository.dart';
import '../_core/entity_dtos/location_detail_dto.dart';
import '../_core/firebase/firebase_extensions.dart';
import '../location/mappers.dart';
import 'driver_entity_dto.dart';

class DriverReposImpl implements IDriverRepository {
  final FirebaseFirestore _firestore;
  final Geoflutterfire _geoflutterfire;
  final FirebaseDatabase _realTimeDatabase;

  DriverReposImpl(
    this._firestore,
    this._geoflutterfire,
    this._realTimeDatabase,
  );

  @override
  Stream<Either<DriverFailure, DriverEntity>> watchOne(String driverId) {
    return _firestore.driverColRefConverter.doc(driverId).snapshots().map(
      (event) {
        if (!event.exists) {
          return const Left(DriverFailure.driverNotExisted());
        }
        final domain = event.data()!.toDomain();
        return Right(domain);
      },
    );
  }

  @override
  Future<Either<DriverFailure, IList<DriverEntity>>> getAroundCoordinate(
      {required Coordinate coordinate, double radius = 1}) async {
    try {
      final collectionRef = _firestore.driverColRef;

      final geoRef = _geoflutterfire.collection(collectionRef: collectionRef);

      final result = geoRef.within(
        center: coordinate.toGeoFirePoint(),
        radius: 0.1, //use map zoom
        field: DriverEntityDto.geoFirePointKey,
        strictMode: true,
      );

      final resultFuture = await result.first;
      final r = resultFuture
          .map((e) => DriverEntityDto.fromDocument(e).toDomain())
          .toList()
          .lock;

      return Right(r);
    } on FirebaseException catch (e) {
      return Left(DriverFailure.serverError(e.message));
    }
  }

  @override
  Future<Either<DriverFailure, Unit>> toggleAvailable(String driverId) async {
    try {
      return await _firestore.runTransaction((transaction) async {
        final docRef = _firestore.driverColRefConverter.doc(driverId);
        final driver = await transaction.get(docRef);

        if (driver.data() == null) {
          return left(DriverFailure.notExisted());
        }

        final available = driver.data()!.available;
        final inProgress = driver.data()!.inProgressTrip;

        if (available) {
          if (inProgress != null) {
            return Left(DriverFailure.bannedActionWhileInProgress(inProgress));
          }
          transaction.update(docRef, {DriverEntityDto.availableKey: false});
        } else {
          transaction.update(docRef, {DriverEntityDto.availableKey: true});
        }
        return const Right(unit);
      });
    } on FirebaseException catch (e) {
      return Left(DriverFailure.serverError(e.message));
    }
  }

  @override
  Future<Either<DriverFailure, Unit>> updateDriverLocation(
      {required String driverId,
      required LocationDetail locationDetail}) async {
    try {
      final dto = LocationDetailDto.fromDomain(locationDetail);
      final ref = _firestore.driverColRefConverter.doc(driverId);
      await ref.update({DriverEntityDto.locationKey: dto.toJson()});
      return const Right(unit);
    } on FirebaseException catch (e) {
      return Left(DriverFailure.serverError(e.message));
    }
  }

  @override
  Future<Either<DriverFailure, Unit>> updateRealTimeDriverLocation(
      {required String driverId,
      required LocationDetail locationDetail}) async {
    try {
      final dto = LocationDetailDto.fromDomain(locationDetail);
      final ref = _realTimeDatabase.driverLocationRef(driverId);
      await ref.set(dto.toJson());
      return const Right(unit);
    } on FirebaseException catch (e) {
      return Left(DriverFailure.serverError(e.message));
    }
  }

  @override
  Stream<Either<DriverFailure, LocationDetail>> watchRealTimeDriverLocation(
      String driverId) {
    try {
      final ref = _realTimeDatabase.driverLocationRef(driverId);
      return ref.onValue.map((event) {
        final Map<String, dynamic> json =
            jsonDecode(jsonEncode(event.snapshot.value));
        return right(LocationDetailDto.fromJson(json).toDomain());
      });
    } on FirebaseException catch (e) {
      return Stream.error(Left(DriverFailure.serverError(e.message)));
    }
  }

  @override
  Future<Either<DriverFailure, Unit>> update(DriverEntity driver) async {
    try {
      final id = driver.id;
      final docRef = _firestore.driverColRefConverter.doc(id);
      final dto = DriverEntityDto.fromDomain(driver);
      await docRef.set(dto);
      return const Right(unit);
    } on FirebaseException catch (e) {
      return Left(DriverFailure.serverError(e.message));
    }
  }

  @override
  Future<Either<DriverFailure, IList<LocationDetail>>> getLocationByCoor(
      {required Coordinate coordinate, double radius = 1}) async {
    try {
      final collectionRef = _firestore.driverColRef;

      final geoRef = _geoflutterfire.collection(collectionRef: collectionRef);

      final result = geoRef.within(
        center: coordinate.toGeoFirePoint(),
        radius: 0.1, //use map zoom
        field: DriverEntityDto.geoFirePointKey,
        strictMode: true,
      );

      final resultFuture = await result.first;
      final r = resultFuture
          .map(
            (e) {
              final map = e.toMap();
              final locationDetailJson = map[DriverEntityDto.locationKey];
              final dto = LocationDetailDto.fromJson(locationDetailJson);
              return dto.toDomain();
            },
          )
          .toList()
          .lock;

      return Right(r);
    } on FirebaseException catch (e) {
      return Left(DriverFailure.serverError(e.message));
    }
  }
}
