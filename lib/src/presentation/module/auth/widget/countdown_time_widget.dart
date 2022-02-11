part of '../sign_in_page.dart';

class CountDownTimer extends StatefulWidget {
  const CountDownTimer({
    Key? key,
    required this.smsCodeTimeoutSeconds,
    required this.onTimerCompleted,
  }) : super(key: key);

  final int smsCodeTimeoutSeconds;
  final VoidCallback onTimerCompleted;

  @override
  _CountDownTimerState createState() => _CountDownTimerState();
}

class _CountDownTimerState extends State<CountDownTimer> {
  late Timer? _timer;

  int _seconds = 0;

  @override
  void initState() {
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        if (_seconds == widget.smsCodeTimeoutSeconds) {
          _timer?.cancel();
          widget.onTimerCompleted();
        } else {
          setState(() => _seconds++);
        }
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  String formatSeconds(int value) =>
      "${formatDecimal(value ~/ 60)}:${formatDecimal(value % 60)}";

  String formatDecimal(int value) => value < 10 ? "0$value" : "$value";

  @override
  Widget build(BuildContext context) {
    return Text(
      "Request new code in ${formatSeconds(widget.smsCodeTimeoutSeconds - _seconds)}",
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 16,
        color: AppColors.hintColor,
      ),
    );
  }
}
