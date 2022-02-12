import 'package:flutter/material.dart';
import 'package:nu_share_destination_user/src/presentation/module/payment/list/payment_list_page.dart';

class PaymentPickerPage extends StatelessWidget {
  const PaymentPickerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const PaymentListPage(openAsPicker: true);
  }
}
