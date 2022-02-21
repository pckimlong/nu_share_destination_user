import 'package:fpdart/fpdart.dart';
import '../core/entities/coordinate.dart';
import 'cache_failure.dart';

abstract class ICacheService {
  /// Cache last coordinate, will be use to initial camera for google map
  Future<Either<CacheFailure, Unit>> storeLastCoordinate(Coordinate coordinate);
  Future<Either<CacheFailure, Option<Coordinate>>> getLastCoordinate();
}
