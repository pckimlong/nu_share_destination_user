import 'package:fpdart/fpdart.dart';
import '../core/entities/coordinate.dart';
import '../core/entities/location_detail.dart';
import 'driver_failure.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';

import 'driver_entity.dart';

abstract class IDriverRepository {
  Future<Either<DriverFailure, Unit>> update(DriverEntity driver);

  /// Watch stream of one driver
  Stream<Either<DriverFailure, DriverEntity>> watchOne(String driverId);

  /// Get list of available drivers around a coordinate. [radius] is circle
  /// around area to query within default is 1km
  Future<Either<DriverFailure, IList<DriverEntity>>> getAroundCoordinate(
      {required Coordinate coordinate, double radius = 1});

  /// Get list of locationDetail around a coordinate.
  /// LocationDetail in this case represent as drivers.
  /// This will return all available driver around the coordinate,
  ///
  /// Why not return DriverEntity? This is because parsing big json to data object is expensive
  /// In our app we just want to fetch nearby taxi driver without view any infomation of them
  /// So parsing only coordinate could be better
  Future<Either<DriverFailure, IList<LocationDetail>>> getLocationByCoor(
      {required Coordinate coordinate, double radius = 1});

  /// Watch real time location update of given driver id
  /// This will update only when driver [available] is set to false and [inProgressing]
  /// is not null, This mean that the driver is in driver state.
  ///
  /// In this app I use firebase real-time database for this, because cloud firestore
  /// will be so expensive in this situation
  Stream<Either<DriverFailure, LocationDetail>> watchRealTimeDriverLocation(
    String driverId,
  );

  /// Update real time location of driver to real-time database
  Future<Either<DriverFailure, Unit>> updateRealTimeDriverLocation({
    required String driverId,
    required LocationDetail locationDetail,
  });

  /// This will update driver location in real-time as well, but only when
  /// [available] in driver entity is set to true
  ///,l
  /// In this app I will use firestore in here, This will update driver location
  /// only when they are avaible, this mean they are not in trip state. Doing this because
  /// we need to use the power of cloud firestore to to query nearby driver stuff...
  Future<Either<DriverFailure, Unit>> updateDriverLocation({
    required String driverId,
    required LocationDetail locationDetail,
  });

  /// Manually switch available state of driver.
  ///
  /// This will throw [DriverFailure.bannedActionWhileInProgress()] failure
  ///  if toggle [available] to false while in trip state
  /// ( [inProgress] not null )
  Future<Either<DriverFailure, Unit>> toggleAvailable(String driverId);

  ///! For testing purpose
  Future<Unit> createMockDriver(DriverEntity driverEntity);
  Stream<IList<DriverEntity>> streamAll();
}
