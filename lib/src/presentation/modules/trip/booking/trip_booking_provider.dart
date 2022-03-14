import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../dependency_injection.dart';
import '../../../../domain/domain.dart';

part 'trip_booking_provider.freezed.dart';

final tripBookingController =
    StateNotifierProvider.autoDispose<TripBookingNotifier, TripBookingState>(
  (ref) => TripBookingNotifier(
    ref.watch(locationServiceProvider),
    ref.watch(driverReposProvider),
    ref.watch(userReposProvider),
    ref.watch(tripReposProvider),
  ),
);

@freezed
class TripBookingEvent with _$TripBookingEvent {
  const factory TripBookingEvent.changeDestinationLocation(Coordinate coor) =
      _ChangeDestinationLocation;

  const factory TripBookingEvent.changeOriginLocation(Coordinate coor) =
      _ChangeOriginLocation;

  const factory TripBookingEvent.moveToMyLocation() = _MoveToMyLocation;
  const factory TripBookingEvent.changeNote(String value) = _ChangeNote;
}

@freezed
class TripBookingState with _$TripBookingState {
  factory TripBookingState({
    required IList<LocationDetail> nearbyDrivers,
    required Option<LocationAddress> originLocation,
    required Option<LocationAddress> definationLocation,
    required bool isLoading,
    required String note,
    required Option<LocationFailure> failure,
    required Option<DriverFailure> driverFailure,

    /// This use for navigate to my location in google map
    /// because google map controller cannot put inside state.
    /// And I want to move to my location from other widget which not contain
    /// google map controller. This will use listener to navigate
    required Option<Coordinate> myLocation,
  }) = _TripBookingState;

  factory TripBookingState.initial() => TripBookingState(
        originLocation: none(),
        definationLocation: none(),
        nearbyDrivers: <LocationDetail>[].lock,
        isLoading: false,
        note: '',
        failure: none(),
        myLocation: none(),
        driverFailure: none(),
      );
}

class TripBookingNotifier extends StateNotifier<TripBookingState> {
  TripBookingNotifier(
    this._locationService,
    this._driverRepository,
    this._userRepository,
    this._tripRepository,
  ) : super(TripBookingState.initial()) {
    _moveToMyLocation();
  }

  final IDriverRepository _driverRepository;
  final ILocationService _locationService;
  final ITripRepository _tripRepository;
  final IUserRepository _userRepository;

  Future mapEventToState(TripBookingEvent event) async {
    event.when(
      moveToMyLocation: _moveToMyLocation,
      changeOriginLocation: _updateOriginAddress,
      changeDestinationLocation: _changeDestination,
      changeNote: (v) => state = state.copyWith(note: v),
    );
  }

  Future<void> _changeDestination(Coordinate coordinate) async {
    state = state.copyWith(isLoading: true);

    final addressOrF =
        await _locationService.getAddressByCoordinate(coordinate);
    addressOrF.fold(
      (l) => state = state.copyWith(failure: some(l)),
      (address) => state = state.copyWith(definationLocation: some(address)),
    );

    state = state.copyWith(isLoading: false);
  }

  Future<void> _fetchNearbyDrivers(Coordinate coor) async {
    final driversOrFail = await _driverRepository.getLocationByCoor(
      coordinate: coor,
      radius: 1,
    );

    driversOrFail.fold(
      (fail) => state = state.copyWith(driverFailure: some(fail)),
      (drivers) => state = state.copyWith(nearbyDrivers: drivers),
    );
  }

  Future<void> _moveToMyLocation() async {
    state = state.copyWith(isLoading: true);

    final coorOrFailure = await _locationService.getMyCoordinate();
    coorOrFailure.fold(
      (l) => state = state.copyWith(failure: some(l)),
      (coor) => state = state.copyWith(myLocation: some(coor)),
    );
    state = state.copyWith(isLoading: false);
  }

  Future<void> _updateOriginAddress(Coordinate coor) async {
    state = state.copyWith(isLoading: true);

    /// First get location detail like address
    final addressOrF = await _locationService.getAddressByCoordinate(coor);
    addressOrF.fold(
      (l) => state = state.copyWith(failure: some(l)),
      (address) => state = state.copyWith(originLocation: some(address)),
    );

    /// Fetch all nearby driver around this location
    await _fetchNearbyDrivers(coor);

    // _driverRepository.streamAroundCoordinate(coordinate: coor).listen((event) {
    //   print(event.toString());
    //   state = state.copyWith(nearbyDrivers: event);
    // });

    state = state.copyWith(isLoading: false);
  }
}
