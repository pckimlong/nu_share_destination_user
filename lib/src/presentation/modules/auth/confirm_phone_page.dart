part of 'sign_in_page.dart';

class _ConfirmPhonePage extends HookConsumerWidget {
  const _ConfirmPhonePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textController = useTextEditingController();
    final textFocus = useFocusNode();
    final formEvent = ref.watch(_signInWithGoogleController.notifier);
    final showResendButton = useState<bool>(false);

    final phone = ref.watch(
        _signInWithGoogleController.select((value) => value.phoneNumber));
    final failure = ref.watch(
        _signInWithGoogleController.select((value) => value.falureOption));

    // If user input wrong verification code
    bool hasWrongVerificationCode = false;
    failure.fold(() => null, (failure) {
      failure.whenOrNull(
        invalidVerificationCode: () {
          hasWrongVerificationCode = true;
          textController.selection = TextSelection(
            baseOffset: 0,
            extentOffset: textController.text.length,
          );
        },
      );
    });

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("We've sent you and SMS with the code to vertify"),
                const SizedBox(height: 2),
                Text(phone, style: AppStyles.labelStyle.copyWith(fontSize: 18)),
                TextField(
                  controller: textController,
                  focusNode: textFocus,
                  onChanged: (s) async {
                    return await formEvent.mapEventToState(
                      PhoneSignInEvent.smsCodeChanged(s),
                    );
                  },
                  autofocus: true,
                  keyboardType: TextInputType.number,
                  style: const TextStyle(fontSize: 38),
                  decoration: const InputDecoration(
                    hintText: "000000",
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(0),
                  ),
                  maxLength: 6,
                ),
                if (hasWrongVerificationCode)
                  const Text(
                    'Invalid verification code',
                    style: TextStyle(color: AppColors.errorColor),
                  ),
              ],
            ),
            Column(
              children: [
                const Text("Didn't receive it?"),
                if (showResendButton.value)
                  TextButton(
                    onPressed: () {
                      formEvent.mapEventToState(
                        const PhoneSignInEvent.nextButtonPress(),
                      );
                      showResendButton.value = false;
                    },
                    child: const Text('RESEND'),
                  )
                else
                  CountDownTimer(
                    smsCodeTimeoutSeconds: 30,
                    onTimerCompleted: () {
                      showResendButton.value = true;
                    },
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
