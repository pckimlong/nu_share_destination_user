import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({Key? key, this.size = 60}) : super(key: key);

  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size * 1.8,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/LOGO.png'),
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}
