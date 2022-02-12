import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nu_share_destination_user/src/presentation/_providers/user_provider.dart';
import 'package:nu_share_destination_user/src/presentation/module/splash/splash_page.dart';
import 'package:nu_share_destination_user/src/presentation/routes/router.gr.dart';
import 'package:nu_share_destination_user/src/presentation/widgets/user_photo_avartar.dart';

import '../../../constants/app_styles.dart';
import '../../../widgets/my_textform_field.dart';

class UserRegisterPage extends HookConsumerWidget {
  const UserRegisterPage({
    Key? key,
    this.openAsRegister = true,
  }) : super(key: key);

  final bool openAsRegister;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final initialUser = ref.watch(userControllerProvider).user;

    final formKey = useMemoized(() => GlobalKey<FormState>());
    final nameController = useTextEditingController(
      text: initialUser.fold(() => null, (user) => user.fullname),
    );
    final emailController = useTextEditingController(
      text: initialUser.fold(() => null, (user) => user.email),
    );
    final phoneController = useTextEditingController(
      text: initialUser.fold(() => null, (user) => user.phone),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: openAsRegister
            ? IconButton(
                onPressed: () async {
                  await ref.read(authControllerProvider.notifier).signOut();
                  context.router.replaceAll([const SplashRoute()]);
                },
                icon: const Icon(Icons.logout),
              )
            : null,
        title: const Text('Register'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 8),
              GestureDetector(
                onTap: () {
                  ///todo pick image and save to database
                },
                child: UserPhotoAvatar(
                  photoUrl: initialUser.fold(() => null, (a) => a.photoUrl),
                ),
              ),
              const SizedBox(height: 20),
              Form(
                key: formKey,
                child: Column(
                  children: [
                    MyTextFormField(
                      controller: nameController,
                      textInputAction: TextInputAction.done,
                      capitalization: TextCapitalization.words,
                      validator: (s) {
                        if (s == null) {
                          return 'Please enter fullname';
                        }
                        if (s.isEmpty) {
                          return 'Please enter fullname';
                        }
                        if (s.contains("\n")) {
                          return 'Name must in one line';
                        }
                        return null;
                      },
                      label: 'Name',
                      isRequired: true,
                      hintText: 'Enter your name',
                    ),
                    const SizedBox(height: 12),
                    MyTextFormField(
                      controller: emailController,
                      label: 'Email (Optional)',
                      hintText: 'Enter your email',
                      textInputAction: TextInputAction.done,
                    ),
                    const SizedBox(height: 12),
                    MyTextFormField(
                      controller: phoneController,
                      label: 'Phone (Optional)',
                      hintText: 'Enter your phone',
                      textInputAction: TextInputAction.done,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50),
              SizedBox(
                width: double.infinity,
                height: 44,
                child: ElevatedButton(
                  onPressed: () async {
                    if (formKey.currentState!.validate()) {
                      BotToast.showNotification(
                        title: (_) => const Text('Registering...'),
                        trailing: (_) => const CircularProgressIndicator(),
                        duration: const Duration(seconds: 10),
                      );
                      await ref.read(userControllerProvider.notifier).update(
                            fullName: nameController.text.trim(),
                            email: emailController.text.trim(),
                            phone: phoneController.text.trim(),
                          );
                      BotToast.cleanAll();

                      /// Check if there are any error
                      ref.read(userControllerProvider).failureOption.fold(
                        () {
                          // successfully update and also in register page
                          if (openAsRegister) {
                            // only navigate to root page when register
                            // Edit will stay in the save page
                            context.router.replace(const RootRoute());
                          } else {
                            BotToast.showText(
                              text:
                                  'Your Profile has been successfully updated',
                            );
                          }
                        },
                        (failure) {
                          BotToast.showSimpleNotification(
                            title: 'Something went wrong!',
                          );
                        },
                      );
                    }
                  },
                  child: Text(
                    openAsRegister ? 'Register' : 'Save',
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
