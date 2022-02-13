import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PaymentListPage extends ConsumerWidget {
  const PaymentListPage({
    Key? key,
    this.openAsPicker = false,
  }) : super(key: key);

  final bool openAsPicker;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: openAsPicker
            ? const Text('Select Payment')
            : const Text('Payments'),
      ),
    );
  }
}
