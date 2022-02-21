import 'package:fast_immutable_collections/fast_immutable_collections.dart'
    as fic;
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/core/entities/location_address.dart';
import '../../../domain/location/location_failure.dart';
import '../../../domain/location/place_entity.dart';

part "location_picker_state.freezed.dart";

@freezed
class LocationPickerState with _$LocationPickerState {
  factory LocationPickerState({
    required fic.IList<PlaceEntity> places,
    required Option<LocationAddress> initialOriginLocation,
    required Option<LocationAddress> selectedDesitination,
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
