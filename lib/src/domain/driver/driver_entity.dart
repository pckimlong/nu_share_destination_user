import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nu_share_destination_user/src/domain/_core/entities/location_detail.dart';
import 'package:nu_share_destination_user/src/domain/_core/enums/vehicle_types.dart';

part 'driver_entity.freezed.dart';

@freezed
class DriverEntity with _$DriverEntity {
  factory DriverEntity({
    required String? id,
    required String fullname,

    /// Make driver visible to map or not
    required bool visible,
    required LocationDetail location,
    required VehicleTypes vehicleType,
  }) = _DriverEntity;
}
