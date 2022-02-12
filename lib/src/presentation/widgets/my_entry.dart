import 'package:flutter/material.dart';

class MyEntry extends StatelessWidget {
  const MyEntry({
    Key? key,
    this.onTap,
    required this.label,
    this.isRequired = false,
    required this.child,
  }) : super(key: key);

  final Widget child;
  final String label;
  final bool isRequired;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return InkWell(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                label,
                style: textTheme.caption!.copyWith(fontWeight: FontWeight.w600),
              ),
              if (isRequired)
                const Text(' *', style: TextStyle(color: Colors.red))
            ],
          ),
          const SizedBox(height: 8),
          child,
          const SizedBox(height: 12),
          const Divider(height: 0, color: Colors.black),
        ],
      ),
    );
  }
}
