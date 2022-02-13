import 'package:bot_toast/bot_toast.dart';
import 'package:permission_handler/permission_handler.dart' as hd;
import 'package:flutter/material.dart';
import 'package:location/location.dart';

Future<bool> requestLocationPermission() async {
  final location = Location();

  bool _serviceEnabled;
  PermissionStatus _permissionGranted;

  _serviceEnabled = await location.serviceEnabled();
  if (!_serviceEnabled) {
    _serviceEnabled = await location.requestService();
    if (!_serviceEnabled) {
      return false;
    }
  }

  _permissionGranted = await location.hasPermission();
  if (_permissionGranted == PermissionStatus.denied) {
    // If user denie gps permission forever. we need to return
    if (_permissionGranted == PermissionStatus.deniedForever) {
      _alert();
      return false;
    }

    // try ask for permission again
    _permissionGranted = await location.requestPermission();

    if (_permissionGranted == PermissionStatus.denied ||
        _permissionGranted == PermissionStatus.deniedForever) {
      _alert();
      return false;
    }
    if (_permissionGranted != PermissionStatus.granted) {
      return false;
    }
  }
  return true;
}

void _alert() {
  BotToast.showNotification(
    duration: const Duration(seconds: 4),
    title: (_) => const Text(
      'Please enable location service permission in app setting!',
    ),
    trailing: (_) => TextButton(
      onPressed: () => hd.openAppSettings(),
      child: const Text('SETTING'),
    ),
  );
}
