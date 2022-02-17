import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart'
    as fic;
import 'package:geoflutterfire/geoflutterfire.dart';

import 'package:nu_share_destination_user/src/domain/core/entities/coordinate.dart';
import 'package:nu_share_destination_user/src/domain/core/entities/location_detail.dart';
import 'package:nu_share_destination_user/src/domain/driver/driver_entity.dart';
import 'package:nu_share_destination_user/src/domain/driver/driver_failure.dart';
import 'package:nu_share_destination_user/src/domain/driver/i_driver_repository.dart';
import 'package:nu_share_destination_user/src/domain/trip/trip_entity.dart';
import 'package:nu_share_destination_user/src/infra/driver/driver_entity_dto.dart';
import 'package:nu_share_destination_user/src/infra/trip/trip_entity_dto.dart';
import '../_core/firebase/firebase_extensions.dart';
import '../location/mappers.dart';

class DriverReposImpl implements IDriverRepository {
  final FirebaseFirestore _firestore;
  final Geoflutterfire _geoflutterfire;

  DriverReposImpl(
    this._firestore,
    this._geoflutterfire,
  );

  @override
  Stream<Either<DriverFailure, DriverEntity>> watchOne(String driverId) {
    // TODO: implement watchOne
    throw UnimplementedError();
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
      return Right(<DriverEntity>[].lock);
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
      {required String driverId, required LocationDetail locationDetail}) {
    // TODO: implement updateDriverLocation
    throw UnimplementedError();
  }

  @override
  Future<Either<DriverFailure, Unit>> updateRealTimeDriverLocation(
      {required String driverId, required LocationDetail locationDetail}) {
    // TODO: implement updateRealTimeDriverLocation
    throw UnimplementedError();
  }

  @override
  Stream<Either<DriverFailure, LocationDetail>> watchRealTimeDriverLocation(
      String driverId) {
    // TODO: implement watchRealTimeDriverLocation
    throw UnimplementedError();
  }

  @override
  Future<Either<DriverFailure, Unit>> acceptTripRequest({
    required String tripId,
    required String driverId,
  }) async {
    // late Either<DriverFailure, Unit> result;

    try {
      return await _firestore.runTransaction(
        (transaction) async {
          final tripDocRef = _firestore.tripColRef.doc(tripId);
          final tripDoc = await tripDocRef.get();
          final driverDocRef = _firestore.driverColRef.doc(driverId);
          final driverDoc = await driverDocRef.get();

          if (!tripDoc.exists) {
            return Left(DriverFailure.tripRequestUnavailable());
          }
          if (!driverDoc.exists) {
            return Left(DriverFailure.notExisted());
          }

          final tripData = tripDoc.data()!;
          final driverData = driverDoc.data()!;

          if (tripData.driverId != null) {
            return Left(DriverFailure.tripRequestUnavailable());
          }

          transaction.set<TripEntityDto>(
            tripDocRef,
            tripData.copyWith(
              driverId: driverId,
              status: TripStatus.picking(),
              startedTime: DateTime.now(),
            ),
          );
          transaction.set<DriverEntityDto>(
            driverDocRef,
            driverData.copyWith(
              available: tripData.toDomain().allowSharing,
              inProgressTrip: tripId,
            ),
          );
          return const Right(unit);
        },
      );
    } on FirebaseException catch (e) {
      return Left(DriverFailure.serverError(e.message));
    }
  }
}
