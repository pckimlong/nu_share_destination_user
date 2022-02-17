import 'package:bot_toast/bot_toast.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter/material.dart';

Future<bool> requestLocationPermission() async {
  bool _serviceEnabled;
  LocationPermission _permissionGranted;

  _serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!_serviceEnabled) {
    // Location services are not enabled don't continue
    // accessing the position and request users of the
    // App to enable the location services.
    debugPrint('Location services are disabled.');
    _alertForService();
    return false;
  }

  _permissionGranted = await Geolocator.checkPermission();
  if (_permissionGranted == LocationPermission.denied) {
    // If user denie gps permission forever. we need to return
    if (_permissionGranted == LocationPermission.deniedForever) {
      _alert();
      return false;
    }

    // try ask for permission again
    _permissionGranted = await Geolocator.requestPermission();

    if (_permissionGranted == LocationPermission.denied ||
        _permissionGranted == LocationPermission.deniedForever) {
      _alert();
      return false;
    }
  }
  return true;
}

void _alert() {
  BotToast.showNotification(
    duration: const Duration(seconds: 4),
    title: (_) => const Text(
      'Please enable location permission in app setting!',
    ),
    trailing: (_) => TextButton(
      onPressed: () async => await Geolocator.openAppSettings(),
      child: const Text('SETTING'),
    ),
  );
}

void _alertForService() {
  BotToast.showNotification(
    duration: const Duration(seconds: 4),
    title: (_) => const Text(
      'Please enable location service in setting!',
    ),
    trailing: (_) => TextButton(
      onPressed: () async => await Geolocator.openLocationSettings(),
      child: const Text('SETTING'),
    ),
  );
}
