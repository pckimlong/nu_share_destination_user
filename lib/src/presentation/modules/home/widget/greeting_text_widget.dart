import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../_core/app_extensions.dart';
import '../../../_providers/user_provider.dart';

class GreetingTextWithNameWidget extends ConsumerWidget {
  const GreetingTextWithNameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final userFullname = ref.watch(
      userControllerProvider.select(
        (value) => value.user.match(
          (user) => user.fullname,
          () => '',
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
