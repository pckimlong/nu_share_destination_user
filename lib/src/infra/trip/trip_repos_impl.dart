import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart'
    as fic;

import 'package:nu_share_destination_user/src/domain/trip/i_trip_repository.dart';
import 'package:nu_share_destination_user/src/domain/trip/trip_entity.dart';
import 'package:nu_share_destination_user/src/domain/trip/trip_failure.dart';

class TripReposImpl implements ITripRepository {
  final FirebaseFirestore _firestore;

  TripReposImpl(this._firestore);

  @override
  Future<Either<TripFailure, Unit>> acceptTripRequest(
      {required String tripId}) {
    // TODO: implement acceptTripRequest
    throw UnimplementedError();
  }

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
}
