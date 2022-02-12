part of 'trip_booking_page.dart';

final _cacheCoordinateProvider = StateNotifierProvider.autoDispose<
    LastCoordinateNotifier, Option<Coordinate>>((ref) {
  return LastCoordinateNotifier(ref.watch(cachServiceProvider));
});
