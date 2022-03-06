// import 'package:bot_toast/bot_toast.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

// import '../../core/core.dart';
// import '../../provider/auth_provider.dart';
// import '../../widgets/widgets.dart';
// import '../root/root_page.dart';

// class SignInPage extends HookConsumerWidget {
//   const SignInPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final formKey = useMemoized(() => GlobalKey<FormState>());
//     final emailController = useTextEditingController();
//     final passwordController = useTextEditingController();
//     final controller = ref.watch(authProvider.notifier);

//     ref.listen<AuthState>(
//       authProvider,
//       (_, state) => state.whenOrNull(
//         authenticated: (_) {
//           return AppUtilzs.pushTo(context, (_) => const RootPage());
//         },
//       ),
//     );

//     ///todo show error if incorrect email or password

//     return GestureDetector(
//       onTap: () => AppUtilzs.closeKeyBoard(context),
//       child: Scaffold(
//         body: SafeArea(
//           minimum: const EdgeInsets.symmetric(horizontal: 20),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Expanded(
//                 child: Form(
//                   key: formKey,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Row(children: const [
//                         AppLogo(size: 80),
//                         Expanded(
//                           child: Text(
//                             'For Driver',
//                             textAlign: TextAlign.center,
//                             style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               fontSize: 26,
//                               color: AppColors.primaryColor,
//                             ),
//                           ),
//                         ),
//                       ]),
//                       const SizedBox(height: 50),
//                       MyTextFormField(
//                         controller: emailController,
//                         textInputType: TextInputType.emailAddress,
//                         label: 'Email',
//                         maxLines: 1,
//                         hintText: 'Enter email',
//                         validator: (s) {
//                           final value = s ?? "";
//                           if (value.isEmpty) {
//                             return 'Required email address';
//                           }
//                           return null;
//                         },
//                       ),
//                       const SizedBox(height: 20),
//                       MyTextFormField(
//                         controller: passwordController,
//                         label: 'Password',
//                         obscureText: true,
//                         maxLines: 1,
//                         hintText: 'Enter password',
//                         validator: (s) {
//                           final value = s ?? "";
//                           if (value.isEmpty) {
//                             return 'Required password';
//                           }
//                           if (value.length < 6) {
//                             return 'Password should be 6 characters';
//                           }
//                           return null;
//                         },
//                       ),
//                       const SizedBox(height: 40),
//                       SizedBox(
//                         width: double.infinity,
//                         height: 42,
//                         child: ElevatedButton(
//                           onPressed: () async {
//                             if (formKey.currentState!.validate()) {
//                               BotToast.showLoading();
//                               await controller.signIn(
//                                 email: emailController.text.trim(),
//                                 password: passwordController.text.trim(),
//                               );
//                               BotToast.closeAllLoading();
//                             }
//                           },
//                           child: const Text(
//                             'Send Code',
//                             style: AppStyles.bottonTextStyle,
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
