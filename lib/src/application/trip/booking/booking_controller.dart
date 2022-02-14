import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nu_share_destination_user/main.dart';
import 'package:nu_share_destination_user/src/application/trip/booking/booking_event.dart';
import 'package:nu_share_destination_user/src/domain/_core/constants.dart';
import 'package:nu_share_destination_user/src/domain/_core/entities/coordinate.dart';
import 'package:nu_share_destination_user/src/domain/_core/entities/location_point.dart';
import 'package:nu_share_destination_user/src/domain/_core/entities/location_point_detail.dart';
import 'package:nu_share_destination_user/src/domain/_core/enums/vehicle_types.dart';

import '../../../domain/location/i_location_service.dart';
import '../../../domain/location/location_failure.dart';
import '../../../domain/user/user_entity.dart';
import 'booking_state.dart';

/// The prepared set of data before send to server

class BookingControllerNotifier extends StateNotifier<BookingState> {
  BookingControllerNotifier({
    required UserEntity userEntity,
    required this.locationService,
  }) : super(BookingState.initial(userEntity));

  final ILocationService locationService;
  late final GoogleMapController mapController;
  Coordinate _pinnedCoordinate = const Coordinate(0, 0);

  @override
  void dispose() {
    debugPrint("$runtimeType on disposed called");
    mapController.dispose();
    super.dispose();
  }

  Future mapEventToState(BookingEvent event) async {
    event.when(
      updateOriginPosition: _updateOriginPosition,
      changedVehicleType: _changeVehicleType,
      changedNoteToDriver: _changeNoteToDriver,
      initializeMapController: (mapController) async {
        debugPrint('Initilize map controller');
        this.mapController = mapController;
        await _moveMapToMyLocation();
      },
      onMapMoved: (coor) {
        debugPrint('move map to ${coor.toString()}');
        _pinnedCoordinate = Coordinate(coor.latitude, coor.longitude);
      },
      moveToMyLocation: _moveMapToMyLocation,
      toggleAllowShare: () {
        state = state.copyWith(allowShare: !state.allowShare);
      },
      changeDestinationPosition: (locationOption) async {
        state = state.copyWith(expectedEndedPositionDetail: locationOption);
      },
    );
  }

  void _changeNoteToDriver(String note) {
    if (note.trim().isEmpty) {
      state = state.copyWith(note: none());
    } else {
      state = state.copyWith(note: some(note));
    }
  }

  Future<void> _updateOriginPosition() async {
    state = state.copyWith(
      errorMessage: none(),
      isLoading: true,
    );

    await _fetchLocationAddressByCoordinate();
    await _fetchNearbyTaxiDriverAround();

    state = state.copyWith(isLoading: false);
  }

  void _changeVehicleType(VehicleTypes vehicle) {
    state = state.copyWith(vehicleTypes: some(vehicle));
  }

  Future<void> _fetchLocationAddressByCoordinate() async {
    final failureOrLocation =
        await _getLocationPointDetailByCoor(_pinnedCoordinate);
    state = state.copyWith(startedPositionDetail: failureOrLocation);
  }

  Future<Option<LocationPointDetail>> _getLocationPointDetailByCoor(
      Coordinate coordinate) async {
    final failureOrLocation =
        await locationService.getAddressByLocationPoint(coordinate);
    return failureOrLocation.fold((l) => none(), id);
  }

  Future<void> _moveMapToMyLocation() async {
    final myLocation = await locationService.getDeviceLocationPoint();
    myLocation.fold(
      _handlingLocationFailure,
      (point) {
        mapController.animateCamera(
          CameraUpdate.newCameraPosition(CameraPosition(
            target: LatLng(
              point.coordinate.latitude,
              point.coordinate.longitude,
            ),
            zoom: DomainValues.mapPointZoom,
          )),
        );
      },
    );
  }

  Future<void> _fetchNearbyTaxiDriverAround() async {}

  void _handlingLocationFailure(LocationFailure failure) {
    failure.when(
      permissionDeny: () => state = state.copyWith(
        errorMessage: some('Location permission deny!'),
      ),
      packageError: (_) => state = state.copyWith(
        errorMessage: some('Something went wrong!'),
      ),
      requestDenied: () => state = state.copyWith(
        errorMessage: some('Something went wrong!'),
      ),
    );
  }
}
