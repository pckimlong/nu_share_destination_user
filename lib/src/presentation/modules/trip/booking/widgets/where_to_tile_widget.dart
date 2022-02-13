part of '../trip_booking_page.dart';

class _WhereToTileWidget extends ConsumerWidget {
  const _WhereToTileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        constraints: const BoxConstraints(minHeight: 62),
        child: Row(
          children: [
            const Text(
              '+',
              style: TextStyle(
                fontSize: 38,
                fontWeight: FontWeight.w300,
              ),
            ),
            const SizedBox(width: 25),
            Text(
              'Where to',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
