import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:location/location.dart';

final firebaseAuthProvider = Provider<FirebaseAuth>((ref) {
  return FirebaseAuth.instance;
});

final firestoreProvider = Provider<FirebaseFirestore>((ref) {
  return FirebaseFirestore.instance;
});

final locationProvider = Provider<Location>((ref) {
  return Location();
});

final getStorageProvider = Provider<GetStorage>((ref) {
  throw UnimplementedError();
});

final geoFireProvider = Provider<Geoflutterfire>((ref) {
  return Geoflutterfire();
});
