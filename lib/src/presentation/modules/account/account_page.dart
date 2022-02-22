import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../providers/user_provider.dart';
import '../../routes/router.gr.dart';
import '../../widgets/my_list_tile.dart';
import '../../widgets/user_photo_avartar.dart';

part 'widgets/user_info_card.dart';

class AccountPage extends ConsumerWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    return SafeArea(
      child: Column(
        children: [
          const _UserInfoCard(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                MyListTile(
                  iconData: Icons.card_giftcard,
                  label: 'My Voucher',
                  onTap: () => context.router.push(VoucherListRoute()),
                ),
                const Divider(height: 0),
                MyListTile(
                  iconData: Icons.payment,
                  label: 'Payment',
                  onTap: () => context.router.push(PaymentListRoute()),
                ),
                const Divider(height: 0),
                MyListTile(
                  iconData: Icons.location_on,
                  label: 'Saved Places',
                  onTap: () => context.router.push(SavedPlaceListRoute()),
                ),
                const Divider(height: 0),
                MyListTile(
                  iconData: Icons.message_outlined,
                  label: 'Message',
                  onTap: () => context.router.push(const MessageListRoute()),
                ),
                const Divider(height: 0),
                MyListTile(
                  iconData: Icons.settings,
                  label: 'Settings',
                  onTap: () => context.router.push(const SettingRoute()),
                ),
                const Divider(height: 0),
                MyListTile(
                  iconData: Icons.contact_support,
                  label: 'Contact Us',
                  onTap: () => context.router.push(const ContactUsRoute()),
                ),
                const Divider(height: 0),
                MyListTile(
                  iconData: Icons.logout,
                  label: 'Logout',
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (_) {
                        return AlertDialog(
                          title: const Text(
                              'Are you sure you want to logout now?'),
                          actions: [
                            TextButton(
                              onPressed: () async {
                                await ref
                                    .read(authControllerProvider.notifier)
                                    .signOut();
                              },
                              child: const Text('Yes sure!'),
                            ),
                            TextButton(
                              onPressed: () {
                                context.popRoute();
                              },
                              child: const Text('Cancel'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
