import 'package:flutter/material.dart';

class VehicleTypeCard extends StatelessWidget {
  const VehicleTypeCard({
    Key? key,
    required this.child,
    required this.label,
    required this.onTap,
    required this.seatCount,
  }) : super(key: key);

  final Widget child;
  final String label;
  final int seatCount;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Card(
            child: Container(
              width: 70,
              height: 70,
              child: child,
            ),
          ),
          Text(label),
          Text("$seatCount Seats"),
        ],
      ),
    );
  }
}
