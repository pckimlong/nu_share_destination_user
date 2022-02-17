part of '../trip_booking_page.dart';

class _MapWidget extends StatefulHookConsumerWidget {
  const _MapWidget({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => __MapWidgetState();
}

class __MapWidgetState extends ConsumerState<_MapWidget> {
  Coordinate _currentCoordinate = DomainValues.initialMapPoint;
  late final GoogleMapController _mapController;

  @override
  void initState() {
    super.initState();
  }

  void _drawerOriginAndDesinationMarker(Option<LocationAddress> originLoc,
      Option<LocationAddress> destinationLoc, Map<MarkerId, Marker> markers) {
    // only add marker when desition address has been add
    useEffect(
      () => originLoc.fold(
        () => null,
        (origin) => destinationLoc.fold(() => null, (destination) {
          // create my marker
          const originMarkerId = MarkerId('origin');
          final originMarker = markers[originMarkerId];
          if (originMarker != null) {
            markers[originMarkerId] = originMarker.copyWith(
              positionParam: LatLng(
                origin.locationPoint.coordinate.latitude,
                origin.locationPoint.coordinate.longitude,
              ),
            );
          } else {
            markers[originMarkerId] = Marker(
              markerId: MarkerId(origin.locationPoint.geoHash),
              position: LatLng(
                origin.locationPoint.coordinate.latitude,
                origin.locationPoint.coordinate.longitude,
              ),
            );
          }

          /// create destination mark
          const desMarkerId = MarkerId('destination');
          final desMarker = markers[desMarkerId];
          if (desMarker != null) {
            markers[desMarkerId] = desMarker.copyWith(
              positionParam: LatLng(
                destination.locationPoint.coordinate.latitude,
                destination.locationPoint.coordinate.longitude,
              ),
            );
          } else {
            markers[desMarkerId] = Marker(
              markerId: MarkerId(destination.locationPoint.geoHash),
              position: LatLng(
                destination.locationPoint.coordinate.latitude,
                destination.locationPoint.coordinate.longitude,
              ),
            );
          }
          return;
        }),
      ),
      [originLoc, destinationLoc],
    );
  }

  /// Move map to a coordinate
  void _moveToCoordinate(Coordinate coor) {
    _mapController.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: LatLng(coor.latitude, coor.longitude),
          zoom: DomainValues.mapPointZoom,
        ),
      ),
    );
  }

  /// Bind map controller to local map controller
  void _onMapCreated(GoogleMapController controller) {
    _mapController = controller;
  }

  // When map stop moving update my address state
  Future<void> _onMapIdle() async {
    final controller = ref.read(tripBookingController.notifier);
    //todo update only when ...
    await controller.mapEventToState(
      TripBookingEvent.changeOriginLocation(_currentCoordinate),
    );
  }

  /// Update currentCoordinate when map camera move
  void _onMapMove(CameraPosition cPos) {
    _currentCoordinate = Coordinate(
      cPos.target.latitude,
      cPos.target.longitude,
    );
  }

  void _stateListener() {
    ref.listen<TripBookingState>(
      tripBookingController,
      (previous, next) {
        /// Move map to my location when I click my location button
        next.myLocation.fold(
          () => null,
          (myLocation) {
            next.originLocation.fold(
              () => _moveToCoordinate(myLocation),
              (originAddress) {
                if (originAddress.locationPoint.coordinate != myLocation) {
                  previous!.myLocation.fold(
                    () => _moveToCoordinate(myLocation),
                    (preLoc) {
                      if (myLocation != preLoc) {
                        _moveToCoordinate(myLocation);
                      }
                    },
                  );
                }
              },
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('Trip booking map widget rebuild............................');

    /// Listen for some change and perform some task
    _stateListener();

    final originLoc = ref.watch(
      tripBookingController.select((value) => value.originLocation),
    );
    final destinationLoc = ref.watch(
      tripBookingController.select((value) => value.definationLocation),
    );
    final nearbyDrivers = ref.watch(
      tripBookingController.select((value) => value.nearbyDrivers),
    );

    final markers = useMemoized<Map<MarkerId, Marker>>(() => {}, const []);

    _drawerOriginAndDesinationMarker(originLoc, destinationLoc, markers);

    useEffect(
      () {},
      [nearbyDrivers],
    );

    return GoogleMap(
      markers: Set<Marker>.from(markers.values),
      initialCameraPosition: _initialCameraPosition,
      onMapCreated: _onMapCreated,
      onCameraMove: _onMapMove,
      onCameraIdle: _onMapIdle,
      mapToolbarEnabled: true,
      myLocationEnabled: true,
      zoomControlsEnabled: false,
      myLocationButtonEnabled: false,
    );
  }
}

/// Where the map camera should be placed when first created
final _initialCameraPosition = CameraPosition(
  zoom: DomainValues.initialMapZoom,
  target: LatLng(
    DomainValues.initialMapPoint.latitude,
    DomainValues.initialMapPoint.longitude,
  ),
);
