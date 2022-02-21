import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../domain/core/entities/coordinate.dart';
import '../../../domain/core/entities/location_address.dart';
import '../../../domain/driver/vehicle_types.dart';

part 'booking_event.freezed.dart';

@freezed
class BookingEvent with _$BookingEvent {
  const factory BookingEvent.initializeMapController(
      GoogleMapController controller) = _InitializeMapController;
  const factory BookingEvent.onMapMoved(Coordinate coordinate) = _OnMapMoved;
  const factory BookingEvent.moveToMyLocation() = _MoveToMyLocation;
  const factory BookingEvent.updateOriginPosition() = _UpdateOriginPosition;
  const factory BookingEvent.changeDestinationPosition(
      Option<LocationAddress> pointDetailOption) = _ChangeDestinationPosition;
  const factory BookingEvent.changedVehicleType(VehicleTypes vehicle) =
      _ChangeVehicleType;
  const factory BookingEvent.changedNoteToDriver(String note) =
      _ChangedNoteToDriver;
  const factory BookingEvent.toggleAllowShare() = _ToggleAllowShare;
}
