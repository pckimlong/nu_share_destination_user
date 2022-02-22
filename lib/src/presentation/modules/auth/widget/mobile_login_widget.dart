part of '../sign_in_page.dart';

class _MobileLogin extends HookConsumerWidget {
  const _MobileLogin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final phoneNumberController = useTextEditingController();
    final formEvent = ref.watch(signInWithGoogleController.notifier);
    final formState = ref.watch(signInWithGoogleController);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Mobile Number', style: AppStyles.labelStyle),
        const SizedBox(height: 4),
        Row(
          children: [
            SizedBox(
              width: 80,
              child: Column(
                children: [
                  Row(
                    children: const [
                      Text('+ 855'),
                      SizedBox(width: 5),
                      Icon(Icons.expand_more),
                    ],
                  ),
                  const Divider(thickness: 2)
                ],
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: phoneNumberController,
                      onChanged: (value) {
                        //Todo - make country code dynamic
                        formEvent.mapEventToState(
                          PhoneSignInEvent.phoneNumberChanged("+855" + value),
                        );
                      },
                      keyboardType: TextInputType.phone,
                      validator: (s) {
                        if (s == null) {
                          return 'Please enter phone';
                        } else if (s.isEmpty) {
                          return 'Please enter phone';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        isDense: true,
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(vertical: 2.4),
                      ),
                    ),
                    const Divider(thickness: 2),
                  ],
                ),
              ),
            )
          ],
        ),
        const SizedBox(height: 30),
        SizedBox(
          width: double.infinity,
          height: 42,
          child: ElevatedButton(
            onPressed: formState.showNextButton
                ? () {
                    if (formKey.currentState!.validate()) {
                      AppUtilzs.closeKeyBoard(context);
                      formEvent.mapEventToState(
                        const PhoneSignInEvent.nextButtonPress(),
                      );
                    }
                  }
                : null,
            child: const Text('Send Code', style: AppStyles.bottonTextStyle),
          ),
        )
      ],
    );
  }
}
