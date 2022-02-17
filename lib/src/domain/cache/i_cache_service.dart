import 'package:dartz/dartz.dart';
import 'package:nu_share_destination_user/src/domain/core/entities/coordinate.dart';
import 'package:nu_share_destination_user/src/domain/cache/cache_failure.dart';

abstract class ICacheService {
  /// Cache last coordinate, will be use to initial camera for google map
  Future<Either<CacheFailure, Unit>> storeLastCoordinate(Coordinate coordinate);
  Future<Either<CacheFailure, Option<Coordinate>>> getLastCoordinate();
}
