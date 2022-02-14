part of '../trip_booking_page.dart';

class _ActionsTileBar extends ConsumerWidget {
  const _ActionsTileBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _Item(
            icon: const Icon(
              Icons.share_location_outlined,
              size: 36,
              color: AppColors.primaryColor,
            ),
            label: 'Allow Share',
            onTap: () {},
          ),
          const VerticalDivider(width: 0),
          _Item(
            icon: const Icon(
              Icons.money,
              size: 36,
              color: AppColors.primaryColor,
            ),
            label: 'Cash',
            onTap: () {},
          ),
          const VerticalDivider(width: 0),
          _Item(
            icon: const Icon(
              Icons.card_giftcard_rounded,
              size: 36,
              color: AppColors.primaryColor,
            ),
            label: 'Voucher',
            onTap: () {},
          ),
          const VerticalDivider(width: 0),
          const _NoteToDriverButton(),
        ],
      ),
    );
  }
}

class _Item extends StatelessWidget {
  const _Item({
    Key? key,
    required this.icon,
    required this.label,
    required this.onTap,
  }) : super(key: key);

  final Widget icon;
  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width / 4 * 0.9,
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            icon,
            const SizedBox(height: 6),
            Text(
              label,
              style: Theme.of(context).textTheme.bodySmall,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
