import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nu_share_destination_user/src/domain/_core/enums/vehicle_types.dart';
import 'package:nu_share_destination_user/src/presentation/modules/home/widget/vehicle_type_card.dart';
import 'package:nu_share_destination_user/src/presentation/routes/router.gr.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NU Share Destination'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                VehicleTypeCard(
                  child: const Icon(Icons.car_rental),
                  label: 'Rickshaw',
                  seatCount: 3,
                  onTap: () {
                    AutoRouter.of(context).push(
                      TripRoute(vehicleTypes: VehicleTypes.ricksaw),
                    );
                  },
                ),
                VehicleTypeCard(
                  child: const Icon(Icons.car_rental),
                  label: 'Tuk Tuk',
                  seatCount: 3,
                  onTap: () {},
                ),
                VehicleTypeCard(
                  child: const Icon(Icons.car_rental),
                  label: 'Car',
                  seatCount: 3,
                  onTap: () {},
                ),
                VehicleTypeCard(
                  child: const Icon(Icons.car_rental),
                  label: 'SUV',
                  seatCount: 3,
                  onTap: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
