import 'package:flutter/material.dart';

import '../core/app_styles.dart';

class CircleIcon extends StatelessWidget {
  const CircleIcon({Key? key, this.size = 18}) : super(key: key);

  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.primaryColor,
        border: Border.all(color: Colors.white),
      ),
      child: Center(
        child: Icon(
          Icons.circle,
          size: size / 2,
          color: Colors.white,
        ),
      ),
    );
  }
}
