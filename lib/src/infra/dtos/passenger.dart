import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fpdart/fpdart.dart';
import 'dtos.dart';
import '../../domain/domain.dart';

part "passenger.freezed.dart";
part "passenger.g.dart";

@freezed
class PassengerDto with _$PassengerDto {
  static const actualDestinationLocationKey = "actualDestinationLocation";
  static const allowShareKey = "allowToShare";
  static const destinationLocationKey = "destinationLocation";
  static const noteKey = "note";
  static const originLocationKey = "originLocation";
  static const userKey = "user";

  factory PassengerDto({
    required UserDto user,
    required String note,
    required bool allowToShare,
    required LocationAddressDto originLocation,
    required LocationAddressDto? destinationLocation,
    required LocationAddressDto? actualDestinationLocation,
  }) = _Passenger;

  const PassengerDto._();

  factory PassengerDto.fromDomain(Passenger domain) {
    return PassengerDto(
      user: UserDto.fromDomain(domain.user),
      note: domain.note,
      allowToShare: domain.allowToShare,
      originLocation: LocationAddressDto.fromDomain(domain.originLocation),
      destinationLocation: domain.destinationLocation.match(
        (address) => LocationAddressDto.fromDomain(address),
        () => null,
      ),
      actualDestinationLocation: domain.destinationLocation.match(
        (address) => LocationAddressDto.fromDomain(address),
        () => null,
      ),
    );
  }

  factory PassengerDto.fromJson(Map<String, dynamic> json) =>
      _$PassengerDtoFromJson(json);
}

extension PassengerDtoX on PassengerDto {
  Passenger toDomain() {
    return Passenger(
      user: user.toDomain(),
      note: note,
      allowToShare: allowToShare,
      originLocation: originLocation.toDomain(),
      destinationLocation: destinationLocation == null
          ? none()
          : some(destinationLocation!.toDomain()),
      actualDestinationLocation: actualDestinationLocation == null
          ? none()
          : some(actualDestinationLocation!.toDomain()),
    );
  }
}
