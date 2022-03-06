import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nu_share_destination_user/src/presentation/modules/mock/create_mock_driver_page.dart';
import '../../../domain/domain.dart';
import 'widget/vehicle_type_card.dart';
import '../../routes/router.gr.dart';

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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (_) => const CreateMockDriverPage(),
                  ),
                );
              },
              child: const Text('Create fake driver'),
            )
          ],
        ),
      ),
    );
  }
}
