part of '../trip_booking_page.dart';

class _WhereToTileWidget extends ConsumerWidget {
  const _WhereToTileWidget({Key? key}) : super(key: key);

  Future<void> _addMarker() async {}

  Future<void> _pickByMap(
    BuildContext context,
    WidgetRef ref,
    LocationAddress? destination,
  ) async {
    LocationAddress? result;

    /// If this is not the root page we do replace. Why doing this?
    /// When navigate to pick my map page, we want to get the result
    /// when click confirm button then navigate to pickup location page instead.
    /// Because this pick map is push from search place page. so when get the result from pickByMap with pop
    /// the result will stay inside search place only. so to deal with this. I need to replace route
    if (context.router.current.name == TripRoute.name) {
      result = await context.router.replace<LocationAddress?>(
        LocationPickerFromMapRoute(
          initial: destination,
        ),
      );
    } else {
      result = await context.router.replace<LocationAddress?>(
        LocationPickerFromMapRoute(
          initial: destination,
        ),
      );
    }

    if (result != null) {
      // ref.read(bookingController.notifier).mapEventToState(
      //       BookingEvent.changeDestinationPosition(some(result)),
      //     );
    } else {
      /// User might click back button.
      await _pickBySearch(context, ref, destination);
    }
  }

  Future<void> _pickBySearch(
    BuildContext context,
    WidgetRef ref,
    LocationAddress? destination,
  ) async {
    // final route = LocationPickerRoute(
    //   onPickByMapPress: () async {
    //     await _pickByMap(context, ref, destination);
    //   },
    //   initial: destination,
    //   initialOrigin:
    //       ref.read(bookingController).originLocation.fold(() => null, id),
    // );

    Option<LocationAddress>? result;

    /// If this is not the root page we do replace.
    // if (context.router.current.name == TripRoute.name) {
    //   result = await context.router.push<Option<LocationAddress>?>(route);
    // } else {
    //   result = await context.router.replace<Option<LocationAddress>?>(route);
    // }

    // if (result != null) {
    //   ref.read(bookingController.notifier).mapEventToState(
    //         BookingEvent.changeDestinationPosition(result),
    //       );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final destination = ref.watch(tripBookingController
        .select((state) => state.definationLocation.match(id, () => null)));

    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        constraints: const BoxConstraints(minHeight: 58),
        child: Row(
          children: [
            destination == null
                ? const Text(
                    '+',
                    style: TextStyle(
                      fontSize: 38,
                      fontWeight: FontWeight.w300,
                    ),
                  )
                : const Icon(Icons.location_on),
            const SizedBox(width: 25),
            Expanded(
              child: Text(
                destination == null ? 'Where to' : destination.address,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
