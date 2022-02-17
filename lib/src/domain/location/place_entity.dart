import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nu_share_destination_user/src/domain/core/entities/coordinate.dart';

part 'place_entity.freezed.dart';

@freezed
class PlaceEntity with _$PlaceEntity {
  factory PlaceEntity({
    required Coordinate coordinate,
    required String name,
    required String address,
  }) = _PlaceEntity;
}
