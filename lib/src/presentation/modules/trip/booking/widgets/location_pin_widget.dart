part of '../trip_booking_page.dart';

class _LocationPinWidget extends ConsumerWidget {
  const _LocationPinWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool loading = ref.watch(
      bookingController.select(
        (state) => state.isLoading,
      ),
    );

    return LocationPinWidget(isLoading: loading);
  }
}
