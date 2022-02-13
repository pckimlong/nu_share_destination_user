import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nu_share_destination_user/src/presentation/_core/app_extensions.dart';
import 'package:nu_share_destination_user/src/presentation/_providers/user_provider.dart';

class GreetingTextWithNameWidget extends ConsumerWidget {
  const GreetingTextWithNameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final userFullname = ref.watch(
      userControllerProvider.select(
        (value) => value.user.fold(
          () => '',
          (user) => user.fullname,
        ),
      ),
    );
    final now = DateTime.now().toLocal();
    final text = "${now.greetingText()}!";

    return Text(
      text,
      style: const TextStyle(fontSize: 28),
    );
  }
}
