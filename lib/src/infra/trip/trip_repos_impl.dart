import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fpdart/fpdart.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart'
    as fic;

import 'package:nu_share_destination_user/src/domain/trip/i_trip_repository.dart';
import 'package:nu_share_destination_user/src/domain/trip/trip_entity.dart';
import 'package:nu_share_destination_user/src/domain/trip/trip_failure.dart';
import 'package:nu_share_destination_user/src/infra/_core/firebase/firebase_extensions.dart';
import 'package:nu_share_destination_user/src/infra/trip/trip_entity_dto.dart';

import '../../domain/trip/passenger_entity.dart';
import '../driver/driver_entity_dto.dart';

class TripReposImpl implements ITripRepository {
  final FirebaseFirestore _firestore;

  TripReposImpl(this._firestore);

  @override
  Future<Either<TripFailure, String>> createTripRequest(
      {required PassengerEntity passenger}) {
    // TODO: implement createTripRequest
    throw UnimplementedError();
  }

  @override
  Future<Either<TripFailure, Unit>> finishTrip(
      {required String tripId, required String userId}) {
    // TODO: implement finishTrip
    throw UnimplementedError();
  }

  @override
  Future<Either<TripFailure, Unit>> progressTrip({required String tripId}) {
    // TODO: implement progressTrip
    throw UnimplementedError();
  }

  @override
  Stream<Either<TripFailure, TripEntity>> watchOne(String tripId) {
    // TODO: implement watchOne
    throw UnimplementedError();
  }

  @override
  Stream<Either<TripFailure, fic.IList<TripEntity>>> watchRequests() {
    // TODO: implement watchRequests
    throw UnimplementedError();
  }

  @override
  Future<Either<TripFailure, Unit>> acceptTripRequest(
      {required String tripId, required String driverId}) async {
    try {
      return await _firestore.runTransaction(
        (transaction) async {
          final tripDocRef = _firestore.tripColRef.doc(tripId);
          final tripDoc = await transaction.get(tripDocRef);
          final driverDocRef = _firestore.driverColRefConverter.doc(driverId);
          final driverDoc = await transaction.get(driverDocRef);

          if (!tripDoc.exists) {
            return Left(TripFailure.tripRequestUnavailable());
          }
          if (!driverDoc.exists) {
            return Left(TripFailure.notExisted());
          }

          final tripData = tripDoc.data()!;
          final driverData = driverDoc.data()!;

          if (tripData.driverId != null) {
            return Left(TripFailure.tripRequestUnavailable());
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
      return Left(TripFailure.serverError(e.message));
    }
  }
}
