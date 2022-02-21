import 'package:flutter/material.dart';
import '../list/payment_list_page.dart';

class PaymentPickerPage extends StatelessWidget {
  const PaymentPickerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const PaymentListPage(openAsPicker: true);
  }
}
