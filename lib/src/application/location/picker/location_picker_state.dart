import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nu_share_destination_user/src/domain/_core/entities/location_point_detail.dart';
import 'package:nu_share_destination_user/src/domain/location/place_entity.dart';

import '../../../domain/location/location_failure.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart'
    as fic;
part "location_picker_state.freezed.dart";

@freezed
class LocationPickerState with _$LocationPickerState {
  factory LocationPickerState({
    required fic.IList<PlaceEntity> places,
    required Option<LocationPointDetail> initialOriginLocation,
    required Option<LocationPointDetail> selectedDesitination,
    @Default(false) bool isLoading,
    required Option<LocationFailure> failure,
  }) = _LocationPickerState;

  factory LocationPickerState.initial() => LocationPickerState(
        places: <PlaceEntity>[].lock,
        initialOriginLocation: none(),
        selectedDesitination: none(),
        failure: none(),
      );
}
