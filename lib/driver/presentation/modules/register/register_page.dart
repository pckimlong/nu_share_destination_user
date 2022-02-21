import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../domain/domain.dart';
import '../root/root_page.dart';
import '../../provider/driver_provider.dart';
import '../../widgets/my_textform_field.dart';

import '../../core/core.dart';

class RegisterPage extends HookConsumerWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final fullname = useTextEditingController();

    ref.listen<DriverState>(driverProvider, (previous, next) {
      next.failureOption.match(
        (failure) {
          if (failure != const DriverFailure.driverNotExisted()) {
            AppUtilzs.pushReplace(context, (_) => const RootPage());
          } else {
            BotToast.showText(text: failure.toString());
          }
        },
        () => null,
      );
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              MyTextFormField(
                controller: fullname,
                label: 'Fullname',
                hintText: 'Enter fullname',
                textInputType: TextInputType.name,
                capitalization: TextCapitalization.words,
                validator: (s) {
                  final value = s ?? "";
                  if (value.isEmpty) {
                    return "Please enter fullname";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                height: 44,
                child: ElevatedButton(
                  onPressed: () async {
                    if (formKey.currentState!.validate()) {
                      BotToast.showLoading();
                      await ref
                          .read(driverProvider.notifier)
                          .registerDriver(fullname: fullname.text.trim());
                      BotToast.closeAllLoading();
                    }
                  },
                  child: const Text(
                    'Register',
                    style: AppStyles.bottonTextStyle,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
