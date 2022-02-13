import 'package:flutter/material.dart';

import 'package:nu_share_destination_user/src/presentation/_core/app_styles.dart';

class MyElevatedButton extends StatelessWidget {
  const MyElevatedButton({
    Key? key,
    required this.label,
    required this.onTap,
  }) : super(key: key);

  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: Text(label),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            AppStyles.borderRadiusValue,
          ),
        ),
      ),
    );
  }
}
