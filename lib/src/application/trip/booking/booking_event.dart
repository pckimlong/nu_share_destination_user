import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:nu_share_destination_user/src/domain/_core/entities/coordinate.dart';
import 'package:nu_share_destination_user/src/domain/_core/entities/location_point_detail.dart';
import 'package:nu_share_destination_user/src/domain/_core/enums/vehicle_types.dart';

part 'booking_event.freezed.dart';

@freezed
class BookingEvent with _$BookingEvent {
  const factory BookingEvent.initializeMapController(
      GoogleMapController controller) = _InitializeMapController;
  const factory BookingEvent.onMapMoved(Coordinate coordinate) = _OnMapMoved;
  const factory BookingEvent.moveToMyLocation() = _MoveToMyLocation;
  const factory BookingEvent.updateOriginPosition() = _UpdateOriginPosition;
  const factory BookingEvent.changeDestinationPosition(
          Option<LocationPointDetail> pointDetailOption) =
      _ChangeDestinationPosition;
  const factory BookingEvent.changedVehicleType(VehicleTypes vehicle) =
      _ChangeVehicleType;
  const factory BookingEvent.changedNoteToDriver(String note) =
      _ChangedNoteToDriver;
  const factory BookingEvent.toggleAllowShare() = _ToggleAllowShare;
}
