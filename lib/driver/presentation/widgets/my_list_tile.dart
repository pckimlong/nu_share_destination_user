import 'package:flutter/material.dart';

import '../core/core.dart';

class MyListTile extends StatelessWidget {
  const MyListTile({
    Key? key,
    required this.iconData,
    required this.label,
    required this.onTap,
  }) : super(key: key);

  final IconData iconData;
  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Icon(iconData, color: AppColors.primaryColor),
      horizontalTitleGap: 4,
      title: Text(label),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        size: 16,
      ),
    );
  }
}
