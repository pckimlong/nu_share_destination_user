import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nu_share_destination_user/src/application/location/picker/location_picker_state.dart';
import 'package:nu_share_destination_user/src/domain/_core/entities/location_point_detail.dart';
import 'package:nu_share_destination_user/src/domain/location/i_location_service.dart';
import 'package:nu_share_destination_user/src/domain/location/place_entity.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart'
    as fic;

class LocationPickerController extends StateNotifier<LocationPickerState> {
  LocationPickerController(this._locationService)
      : super(LocationPickerState.initial());

  final ILocationService _locationService;

  void initialLocation({
    required LocationPointDetail? initialOrigin,
    required LocationPointDetail? initialDestination,
  }) {
    state = state.copyWith(
      initialOriginLocation:
          initialOrigin == null ? none() : some(initialOrigin),
      selectedDesitination:
          initialDestination == null ? none() : some(initialDestination),
    );
  }

  void onChangeDestination(LocationPointDetail pointDetail) {
    state = state.copyWith(selectedDesitination: some(pointDetail));
  }

  Future<void> searchFieldChanged(String value) async {
    if (value.isEmpty) {
      state = state.copyWith(places: <PlaceEntity>[].lock);
      return;
    }

    state = state.copyWith(isLoading: true, failure: none());
    final result = await _locationService.findAllPlaceByString(value);
    result.fold(
      (failure) => state = state.copyWith(failure: some(failure)),
      (results) => state = state.copyWith(places: results),
    );
    state = state.copyWith(isLoading: false);
  }
}
