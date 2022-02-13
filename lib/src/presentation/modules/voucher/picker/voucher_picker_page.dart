import 'package:flutter/material.dart';
import 'package:nu_share_destination_user/src/presentation/modules/voucher/list/voucher_list_page.dart';

class VoucherPickerPage extends StatelessWidget {
  const VoucherPickerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const VoucherListPage(openAsPicker: true);
  }
}
