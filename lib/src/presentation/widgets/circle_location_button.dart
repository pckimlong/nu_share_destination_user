import 'package:flutter/material.dart';

import '../_core/app_styles.dart';

class CircleLocationButton extends StatelessWidget {
  const CircleLocationButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 0.1,
              blurRadius: 3,
              offset: Offset(1, 1),
              blurStyle: BlurStyle.solid,
            ),
          ],
          shape: BoxShape.circle,
          color: Colors.white,
        ),
        child: const Icon(
          Icons.gps_fixed,
          color: AppColors.primaryColor,
          size: 28,
        ),
      ),
    );
  }
}
