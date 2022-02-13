import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../_core/app_styles.dart';
import '../../../widgets/circle_location_button.dart';
import '../../../widgets/my_elevated_button.dart';
import '../widgets/google_map_content.dart';

part 'widgets/actions_tile_bar_widget.dart';
part 'widgets/book_now_button.dart';
part 'widgets/vehicle_tile_widget.dart';
part 'widgets/where_to_tile_widget.dart';

class TripBookingPage extends StatefulHookConsumerWidget {
  const TripBookingPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _TripBookingPageState();
}

class _TripBookingPageState extends ConsumerState<TripBookingPage> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'Pickup Location',
          style: TextStyle(
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Stack(
              children: [
                //Todo - replace this with map widget
                // Container(
                //   decoration: const BoxDecoration(
                //     image: DecorationImage(
                //       fit: BoxFit.fitHeight,
                //       image: AssetImage('assets/map.png'),
                //     ),
                //   ),
                // ),
                const GoogleMapWidget(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(bottom: 12, top: 12),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.9),
                      ),
                      child: const Center(
                        child: Text(
                          'Phnom Penh',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: CircleLocationButton(
                          onTap: () {},
                        ),
                      ),
                    ),
                  ],
                ),
                const Center(
                  child: Icon(
                    Icons.location_on,
                    color: Colors.red,
                    size: 42,
                  ),
                ),
              ],
            ),
          ),
          const _ActionCard(),
        ],
      ),
    );
  }
}

class _ActionCard extends StatelessWidget {
  const _ActionCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(4, 0, 4, 10),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(AppStyles.borderRadiusValue),
          topRight: Radius.circular(AppStyles.borderRadiusValue),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 0.1,
            blurRadius: 10,
            offset: Offset(-3, 0),
            blurStyle: BlurStyle.solid,
          ),
        ],
      ),
      child: Column(
        children: const [
          _WhereToTileWidget(),
          Divider(height: 0),
          _VehicleTileWidget(),
          Divider(height: 0),
          _ActionsTileBar(),
          // Divider(),
          SizedBox(height: 12),
          _BookNowButton(),
        ],
      ),
    );
  }
}
