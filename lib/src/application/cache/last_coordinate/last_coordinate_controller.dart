import 'package:fpdart/fpdart.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../domain/core/entities/coordinate.dart';
import '../../../domain/cache/i_cache_service.dart';

class LastCoordinateNotifier extends StateNotifier<Option<Coordinate>> {
  LastCoordinateNotifier(this._cacheService) : super(none()) {
    getFromCache();
  }

  final ICacheService _cacheService;

  Future<void> getFromCache() async {
    final result = await _cacheService.getLastCoordinate();

    /// This is just small data, No need to notify user even when failure accour
    state = result.fold((failure) {
      debugPrint(failure.message);
      return none();
    }, id);
  }

  Future<void> save(Coordinate coordinate) async {
    await _cacheService.storeLastCoordinate(coordinate);
  }
}
