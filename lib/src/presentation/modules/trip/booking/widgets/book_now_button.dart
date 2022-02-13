part of '../trip_booking_page.dart';

class _BookNowButton extends ConsumerWidget {
  const _BookNowButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      height: 40,
      child: MyElevatedButton(
        label: 'Book Now',
        onTap: () {},
      ),
    );
  }
}
