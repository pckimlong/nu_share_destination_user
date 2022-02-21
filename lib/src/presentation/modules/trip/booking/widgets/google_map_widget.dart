part of '../trip_booking_page.dart';

/// Default marker id fro origin marker and destination marker
const _originMarkerId = MarkerId('origin');
const _destinationMarkerId = MarkerId('destination');

/// Where the map camera should be placed when first created
final _initialCameraPosition = CameraPosition(
  zoom: DomainValues.initialMapZoom,
  target: LatLng(
    DomainValues.initialMapPoint.latitude,
    DomainValues.initialMapPoint.longitude,
  ),
);

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

  void _drawDriverMarkers(
      Map<MarkerId, Marker> markers, fic.IList<DriverEntity> nearbyDrivers) {
    useEffect(
      () {
        /// Remove all old drivers marker to fetch new one
        markers.removeWhere(
          (key, value) => key != _originMarkerId && key != _destinationMarkerId,
        );

        for (final driver in nearbyDrivers) {
          /// Add marker
          final id = MarkerId(driver.id!);
          final double lat = driver.location.match(
            (a) => a.locationPoint.coordinate.latitude,
            () => 0,
          );
          final double long = driver.location.match(
            (a) => a.locationPoint.coordinate.longitude,
            () => 0,
          );
          markers[id] = Marker(
            markerId: id,
            position: LatLng(lat, long),
          );
        }
        return;
      },
      [nearbyDrivers],
    );
  }

  void _drawerOriginAndDesinationMarker(Option<LocationAddress> originLoc,
      Option<LocationAddress> destinationLoc, Map<MarkerId, Marker> markers) {
    // only add marker when desition address has been add
    useEffect(
      () => originLoc.match(
        (origin) => destinationLoc.match(
          (destination) {
            // create my marker
            final originMarker = markers[_originMarkerId];
            if (originMarker != null) {
              markers[_originMarkerId] = originMarker.copyWith(
                positionParam: LatLng(
                  origin.locationPoint.coordinate.latitude,
                  origin.locationPoint.coordinate.longitude,
                ),
              );
            } else {
              markers[_originMarkerId] = Marker(
                markerId: MarkerId(origin.locationPoint.geoHash),
                position: LatLng(
                  origin.locationPoint.coordinate.latitude,
                  origin.locationPoint.coordinate.longitude,
                ),
              );
            }

            /// create destination mark
            final desMarker = markers[_destinationMarkerId];
            if (desMarker != null) {
              markers[_destinationMarkerId] = desMarker.copyWith(
                positionParam: LatLng(
                  destination.locationPoint.coordinate.latitude,
                  destination.locationPoint.coordinate.longitude,
                ),
              );
            } else {
              markers[_destinationMarkerId] = Marker(
                markerId: MarkerId(destination.locationPoint.geoHash),
                position: LatLng(
                  destination.locationPoint.coordinate.latitude,
                  destination.locationPoint.coordinate.longitude,
                ),
              );
            }
            return;
          },
          () => null,
        ),
        () => null,
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
        next.myLocation.match(
          (myLocation) {
            next.originLocation.match(
              (originAddress) {
                if (originAddress.locationPoint.coordinate != myLocation) {
                  previous!.myLocation.match(
                    (preLoc) {
                      if (myLocation != preLoc) {
                        _moveToCoordinate(myLocation);
                      }
                    },
                    () => _moveToCoordinate(myLocation),
                  );
                }
              },
              () => _moveToCoordinate(myLocation),
            );
          },
          () => null,
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

    _drawDriverMarkers(markers, nearbyDrivers);

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
