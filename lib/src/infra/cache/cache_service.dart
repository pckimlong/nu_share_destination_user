import 'package:get_storage/get_storage.dart';
import 'package:nu_share_destination_user/src/domain/cache/cache_failure.dart';
import 'package:nu_share_destination_user/src/domain/_core/entities/coordinate.dart';
import 'package:dartz/dartz.dart';
import 'package:nu_share_destination_user/src/domain/cache/i_cache_service.dart';

const _lastCoordinate = "lastCoordinate";

class CacheServiceImpl implements ICacheService {
  CacheServiceImpl(this._storage);
  final GetStorage _storage;

  @override
  Future<Either<CacheFailure, Option<Coordinate>>> getLastCoordinate() async {
    try {
      final data = _storage.read(_lastCoordinate);
      if (data == null) return Right(none());
      return Right(some(Coordinate.fromJson(data)));
    } catch (e) {
      return Left(CacheFailure.error(e.toString()));
    }
  }

  @override
  Future<Either<CacheFailure, Unit>> storeLastCoordinate(
      Coordinate coordinate) async {
    try {
      await _write(_lastCoordinate, coordinate.toJson());
      return const Right(unit);
    } catch (e) {
      return Left(CacheFailure.error(e.toString()));
    }
  }

  Future<void> _write<T>(String key, T value) async {
    value == null
        ? await _storage.remove(key)
        : await _storage.write(key, value);
  }
}
