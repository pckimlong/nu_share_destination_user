import 'package:dartz/dartz.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart'
    as fic;
import 'package:nu_share_destination_user/src/domain/trip/trip_entity.dart';
import 'package:nu_share_destination_user/src/domain/trip/trip_failure.dart';

abstract class ITripRepository {
  /// Watch and get all requests which nearby driver.
  /// This use to alert to driver for pick any passenger who request for trip
  Stream<Either<TripFailure, fic.IList<TripEntity>>> watchRequests();

  /// Watch a trip changes
  /// This method allow to watch everything of the trip.
  /// View the driver location...
  Stream<Either<TripFailure, TripEntity>> watchOne(String tripId);

  /// Create a trip model with only one passenger.
  /// return created trip id. This will be call by passenger
  Future<Either<TripFailure, String>> createTripRequest({
    required PassengerEntity passenger,
  });

  /// Bind driver to the requested trip, and start picking up passenger
  /// this will be called by driver
  Future<Either<TripFailure, Unit>> acceptTripRequest({
    required String tripId,
  });

  /// After driver arrived start the trip progress
  /// this will update passenger start position and alot of more
  Future<Either<TripFailure, Unit>> progressTrip({
    required String tripId,
  });

  /// Fisnish a trip. [userId] is the id of user relate to passenger.
  /// if after finish the trip, both passenger status are finished or
  /// there is only one passenger
  /// This will finished the entire trip then calculate price
  Future<Either<TripFailure, Unit>> finishTrip({
    required String tripId,
    required String userId,
  });
}
