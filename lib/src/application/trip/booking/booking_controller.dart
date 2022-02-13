import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nu_share_destination_user/src/application/trip/booking/booking_event.dart';
import 'package:nu_share_destination_user/src/application/trip/booking/booking_state.dart';
import 'package:nu_share_destination_user/src/domain/_core/entities/coordinate.dart';
import 'package:nu_share_destination_user/src/domain/location/i_location_service.dart';
import 'package:nu_share_destination_user/src/domain/trip/trip_entity.dart';
import 'package:nu_share_destination_user/src/domain/user/user_entity.dart';

class BookControllerNotifier extends StateNotifier<BookingState?> {
  BookControllerNotifier(this._locationService, this.user) : super(null) {
    _createInitial();
  }

  final UserEntity user;
  final ILocationService _locationService;

  Future mapEventToState(BookingEvent event) async {
    event.when(
      changeOriginPosition: _updateOriginLocationPointDetail,
    );
  }

  void _updateOriginLocationPointDetail(Coordinate coordinate) async {
    state = state?.copyWith(isLoading: true);
    await _locationService.getAddressByLocationPoint(coordinate).then(
      (failureOrLocation) {
        failureOrLocation.fold(
          (l) => null,
          (pointDetailOption) {
            pointDetailOption.fold(
              () => null,
              (data) {
                state = state?.copyWith.passengerEntity(
                  startedPositionDetail: data,
                );
              },
            );
          },
        );
      },
    );
    state = state?.copyWith(isLoading: false);
  }

  void _createInitial() async {
    final currentPos = await _locationService.getDeviceLocationPoint();
    currentPos.fold(
      (l) => null,
      (locationPoint) async {
        final pointDetail = await _locationService.getAddressByLocationPoint(
          locationPoint.coordinate,
        );
        pointDetail.fold(
          (l) => null,
          (locationDetail) {
            final model = PassengerEntity(
              user: user,
              note: '',
              allowToShare: false,
              startedPositionDetail:
                  locationDetail.getOrElse(() => throw Error()),
              expectedEndedPositionDetail: none(),
              actualEndedPositionDetail: none(),
            );

            if (state == null) {
              state = BookingState(passengerEntity: model);
            } else {
              state = state?.copyWith(passengerEntity: model);
            }
          },
        );
      },
    );
  }
}
