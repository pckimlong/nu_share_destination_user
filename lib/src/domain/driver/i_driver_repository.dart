import 'package:dartz/dartz.dart';
import 'package:nu_share_destination_user/src/domain/driver/driver_failure.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart'
    as fic;

import 'driver_entity.dart';

abstract class IDriverRepository {
  Stream<Either<DriverFailure, fic.IList<DriverEntity>>> watchAllNearby();
  Stream<Either<DriverFailure, DriverEntity>> watchOne(String driverId);
}
