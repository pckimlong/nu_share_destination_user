import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart'
    as fic;
import 'package:firebase_database/firebase_database.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:nu_share_destination_user/src/domain/core/entities/coordinate.dart';
import 'package:nu_share_destination_user/src/domain/core/entities/location_detail.dart';
import 'package:nu_share_destination_user/src/domain/driver/driver_entity.dart';
import 'package:nu_share_destination_user/src/domain/driver/driver_failure.dart';
import 'package:nu_share_destination_user/src/domain/driver/i_driver_repository.dart';
import 'package:nu_share_destination_user/src/infra/driver/driver_entity_dto.dart';

import '../_core/firebase/firebase_extensions.dart';
import '../location/mappers.dart';

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
    return _firestore.driverColRef.doc(driverId).snapshots().map(
      (event) {
        if (!event.exists) {
          return Left(DriverFailure.notExisted());
        }
        final domain = event.data()!.toDomain();
        return Right(domain);
      },
    );
  }

  @override
  Future<Either<DriverFailure, fic.IList<DriverEntity>>> getAroundCoordinate(
      {required Coordinate coordinate, double radius = 1}) async {
    try {
      final collectionRef = _firestore.driverColRef
        ..where(
          DriverEntityDto.availableKey,
          isEqualTo: true,
        );

      final geoRef = _geoflutterfire.collection(collectionRef: collectionRef);

      final result = geoRef.within(
        center: coordinate.toGeoFirePoint(),
        radius: radius,
        field: DriverEntityDto.geoFirePointKey,
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
        final docRef = _firestore.driverColRef.doc(driverId);
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
      final ref = _firestore.driverColRef.doc(driverId);
      await ref.update({DriverEntityDto.locationKey: locationDetail.toJson()});
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
      final ref = _realTimeDatabase.userLocationRef(driverId);
      await ref.set(locationDetail.toJson());
      return const Right(unit);
    } on FirebaseException catch (e) {
      return Left(DriverFailure.serverError(e.message));
    }
  }

  @override
  Stream<Either<DriverFailure, LocationDetail>> watchRealTimeDriverLocation(
      String driverId) {
    try {
      final ref = _realTimeDatabase.userLocationRef(driverId);
      return ref.onValue.map((event) {
        final json = event.snapshot.value as Map<String, dynamic>;
        return right(LocationDetail.fromJson(json));
      });
    } on FirebaseException catch (e) {
      return Stream.error(Left(DriverFailure.serverError(e.message)));
    }
  }
}
