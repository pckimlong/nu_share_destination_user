import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_place/google_place.dart' as gp;
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:location/location.dart' as lc;

final firebaseAuthProvider = Provider<FirebaseAuth>((ref) {
  return FirebaseAuth.instance;
});

final firestoreProvider = Provider<FirebaseFirestore>((ref) {
  return FirebaseFirestore.instance;
});

final realTimeDatabaseProvider = Provider<FirebaseDatabase>((ref) {
  return FirebaseDatabase.instanceFor(
    app: Firebase.app(),
    databaseURL:
        "https://nu-share-destination-f6916-default-rtdb.asia-southeast1.firebasedatabase.app",
  );
});

final getStorageProvider = Provider<GetStorage>((ref) {
  throw UnimplementedError();
});

final geoFireProvider = Provider<Geoflutterfire>((ref) {
  return Geoflutterfire();
});

final googlePlaceProvider = Provider<gp.GooglePlace>((ref) {
  return gp.GooglePlace('AIzaSyAKkIU49XTswfYXshm0kC5QnTHODKc3EIA');
});

final locationProvider = Provider<lc.Location>((ref) {
  return lc.Location();
});
