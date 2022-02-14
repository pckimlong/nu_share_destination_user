part of '../trip_booking_page.dart';

class _OriginAddressWidget extends ConsumerWidget {
  const _OriginAddressWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Filter rebuild. increase app performance
    final String originAddress = ref.watch(
      bookingController.select(
        (state) => state.startedPositionDetail.fold(
          () => 'Loading...',
          (a) => a.address,
        ),
      ),
    );

    return Text(
      originAddress,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    );
  }
}
