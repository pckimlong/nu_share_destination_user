import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nu_share_destination_user/src/presentation/_providers/user_provider.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    return InkWell(
      onTap: () async {
        await ref.read(authControllerProvider.notifier).signOut();
      },
      child: const Center(
        child: Text('Home'),
      ),
    );
  }
}
