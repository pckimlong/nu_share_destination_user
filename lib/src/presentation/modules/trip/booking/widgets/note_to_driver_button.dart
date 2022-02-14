part of '../trip_booking_page.dart';

class _NoteToDriverButton extends ConsumerWidget {
  const _NoteToDriverButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final note = ref.watch(bookingController.select(
      (value) => value.note.fold(() => null, id),
    ));

    return _Item(
      icon: const Icon(
        Icons.notes_outlined,
        size: 36,
        color: AppColors.primaryColor,
      ),
      label: note ?? 'Note to Driver',
      onTap: () async {
        final result = await AutoRouter.of(context).push<String?>(
          TextInputRoute(
            pageTitle: 'Note to Driver',
            submitButtonLabel: 'Confirm',
            initialText: note,
          ),
        );

        if (result != null) {
          ref.read(bookingController.notifier).mapEventToState(
                BookingEvent.changedNoteToDriver(result),
              );
        }
      },
    );
  }
}
