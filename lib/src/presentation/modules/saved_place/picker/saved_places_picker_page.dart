import 'package:flutter/material.dart';
import 'package:nu_share_destination_user/src/presentation/modules/payment/list/payment_list_page.dart';

class SavedPlacePickerPage extends StatelessWidget {
  const SavedPlacePickerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const PaymentListPage(openAsPicker: true);
  }
}
