import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../core/core.dart';
import '../register/register_page.dart';
import '../../provider/auth_provider.dart';
import '../../provider/driver_provider.dart';
import '../../../../src/domain/core/entities/location_detail.dart';

class RootPage extends ConsumerWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hasRegister = ref.watch(
      driverProvider.select(
        (value) {
          return value.failureOption.match(
            (failure) => failure.maybeWhen(
              driverNotExisted: () => false,
              orElse: () => true,
            ),
            () => true,
          );
        },
      ),
    );

    ref.listen<DriverState>(driverProvider, (previous, next) {
      next.locationFailureOption.match(
        (failure) {
          BotToast.showText(text: failure.toString());
        },
        () => null,
      );
    });

    final state = ref.watch(driverProvider.select((value) => value.driver));

    return hasRegister
        ? Scaffold(
            appBar: AppBar(
              title: const Text('Root'),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  state.match(
                    (a) => a.location.match(
                      (a) => a.toString(),
                      () => 'null',
                    ),
                    () => 'null',
                  ),
                ),
                TextButton(
                    onPressed: () async {
                      ref.read(authProvider.notifier).signOut();
                    },
                    child: const Text('Sign Out')),
                Text(ref.watch(driverProvider
                    .select((value) => value.realtime.toString())))
              ],
            ),
          )
        : const RegisterPage();
  }
}
