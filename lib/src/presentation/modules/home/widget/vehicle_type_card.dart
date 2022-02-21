import 'package:flutter/material.dart';
import '../../../_core/app_permission.dart';

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
      onTap: () async {
        // Check permission first
        await requestLocationPermission().then((value) {
          ///  failed to enable permission
          if (value == false) {
            return;
          }

          /// Permission grant
          onTap();
        });
      },
      child: Column(
        children: [
          Card(
            child: SizedBox(
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
