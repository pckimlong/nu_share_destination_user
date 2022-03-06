import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/domain.dart';
import '../core/core.dart';
import 'auth_provider.dart';
import '../../../src/domain/core/entities/location_detail.dart';
import '../../../src2/domain/repositories/i_location_service.dart';
import '../../../src2/domain/failures/location_failure.dart';

part 'driver_provider.freezed.dart';

final driverProvider =
    StateNotifierProvider<DriverNotifier, DriverState>((ref) {
  final authState = ref.watch(authProvider);
  final repo = ref.watch(driverReposProvider);
  final location = ref.watch(locationServiceProvider);
  return DriverNotifier(authState, repo, location);
});

@freezed
class DriverState with _$DriverState {
  factory DriverState({
    required Option<DriverEntity> driver,
    required Option<DriverFailure> failureOption,
    required Option<LocationFailure> locationFailureOption,
    required LocationDetail? realtime,
  }) = _DriverState;

  const DriverState._();

  factory DriverState.initial() => DriverState(
        driver: none(),
        failureOption: none(),
        locationFailureOption: none(),
        realtime: null,
      );
}

class DriverNotifier extends StateNotifier<DriverState> {
  DriverNotifier(
    this._authState,
    this._driverRepository,
    this._locationService,
  ) : super(DriverState.initial()) {
    _authDriverListener();
    // this update to server every 10m
    _delayLocationListener();
    // This update to server every 2m
    _realTimeLocationListener();

    _driverRepository.watchRealTimeDriverLocation(_driverId).listen(
      (event) {
        state = state.copyWith(realtime: event.fold((l) => null, id));
      },
    );
  }

  final AuthState _authState;
  final IDriverRepository _driverRepository;
  final ILocationService _locationService;
  StreamSubscription<Either<LocationFailure, LocationDetail>>? _locationStream;
  StreamSubscription<Either<LocationFailure, LocationDetail>>?
      _realTimeLocationStream;

  StreamSubscription<Either<DriverFailure, DriverEntity>>? _streamSubscription;

  @override
  void dispose() {
    _streamSubscription?.cancel();
    _locationStream?.cancel();
    super.dispose();
  }

  Future<void> registerDriver({
    required String fullname,
  }) async {
    state = state.copyWith(failureOption: none());
    final entity = state.driver.match(
      id,
      () => DriverEntity(
        id: _authState.whenOrNull(authenticated: id),
        fullname: fullname,
        available: false,
        location: none(),
        vehicleType: VehicleTypes.car,
        inProgressTrip: none(),
      ),
    );

    final result = await _driverRepository.update(
      entity.copyWith(
        fullname: fullname,
      ),
    );

    result.fold(
      (failure) => state = state.copyWith(
        failureOption: some(failure),
      ),
      (r) => null,
    );
  }

  void _authDriverListener() {
    _streamSubscription?.cancel();
    _authState.whenOrNull(
      authenticated: (value) {
        _streamSubscription = _driverRepository.watchOne(value).listen(
          (driverOrFailure) {
            driverOrFailure.fold(
              (failure) => state = state.copyWith(failureOption: some(failure)),
              (driver) {
                state = state.copyWith(
                  driver: some(driver),
                  failureOption: none(),
                );
              },
            );
          },
        );
      },
      unauthenticated: () {
        _streamSubscription?.cancel();
        state = state.copyWith(
          driver: none(),
          failureOption: none(),
        );
      },
    );
  }

  void _delayLocationListener() {
    _locationStream?.cancel();
    _locationStream = _locationService.watchMyLocationDetail(1).listen(
      (locationOrFailure) {
        locationOrFailure.fold(
          (failure) {
            return state = state.copyWith(locationFailureOption: some(failure));
          },
          _updateDriverLocation,
        );
      },
    );
  }

  String get _driverId => _authState.whenOrNull(authenticated: id)!;

  void _realTimeLocationListener() {
    _realTimeLocationStream?.cancel();
    _realTimeLocationStream = _locationService.watchMyLocationDetail(1).listen(
      (locationOrFailure) {
        locationOrFailure.fold(
          (failure) {
            return state = state.copyWith(locationFailureOption: some(failure));
          },
          _updateDriverLocation,
        );
      },
    );
  }

  Future<void> _updateDriverLocation(LocationDetail location) async {
    state.driver.match(
      (driver) async {
        if (driver.updateDriverLocation) {
          /// Update firestore
          await _driverRepository.updateDriverLocation(
            driverId: _driverId,
            locationDetail: location,
          );
        }
        if (driver.updateRealTimeLocation) {
          /// update real time database
          await _driverRepository.updateRealTimeDriverLocation(
            driverId: _driverId,
            locationDetail: location,
          );
        }
      },
      () => null,
    );
  }
}
