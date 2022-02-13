part of '../sign_in_page.dart';

class _OtherLoginProvider extends ConsumerWidget {
  const _OtherLoginProvider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    return Column(
      children: [
        GoogleAuthButton(
          style: AuthButtonStyle(
            width: double.infinity,
            borderRadius: AppStyles.borderRadiusValue,
            height: 46,
            elevation: 1,
            textStyle: AppStyles.bottonTextStyle.copyWith(color: Colors.black),
          ),
          onPressed: () async {
            await ref.read(authControllerProvider.notifier).signInWithGoogle();
          },
        ),
        const SizedBox(height: 16),
        FacebookAuthButton(
          style: const AuthButtonStyle(
            width: double.infinity,
            borderRadius: AppStyles.borderRadiusValue,
            height: 46,
            elevation: 1,
            buttonColor: AppColors.facebookBlue,
            textStyle: AppStyles.bottonTextStyle,
          ),
          onPressed: () async {
            await ref
                .read(authControllerProvider.notifier)
                .signInWithFacebook();
          },
        ),
      ],
    );
  }
}
