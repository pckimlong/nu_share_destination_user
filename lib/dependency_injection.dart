import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_place/google_place.dart' as gp;
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:location/location.dart' as lc;

import 'src/domain/domain.dart';
import 'src/infra/infra.dart';

final authRepoProvider = Provider<IAuthRepository>((ref) {
  final firebaseAuth = ref.watch(firebaseAuthProvider);
  final googleSignIn = GoogleSignIn();
  final facebookAuth = FacebookAuth.instance;

  return AuthRepoImpl(
    firebaseAuth,
    googleSignIn,
    facebookAuth,
  );
});

final userReposProvider = Provider<IUserRepository>((ref) {
  final firestore = ref.watch(firestoreProvider);
  final auth = ref.watch(firebaseAuthProvider);
  return UserRepoImpl(firestore, auth);
});

final driverReposProvider = Provider<IDriverRepository>((ref) {
  return DriverRepoImpl(
    ref.watch(firestoreProvider),
    ref.watch(geoFireProvider),
    ref.watch(realTimeDatabaseProvider),
  );
});

final tripReposProvider = Provider<ITripRepository>((ref) {
  return TripReposImpl(ref.watch(firestoreProvider));
});

final locationServiceProvider = Provider<ILocationService>((ref) {
  return LocationRepoImpl(
    ref.watch(geoFireProvider),
    ref.watch(googlePlaceProvider),
    ref.watch(locationProvider),
  );
});

final firebaseAuthProvider = Provider<FirebaseAuth>((ref) {
  return FirebaseAuth.instance;
});

final firestoreProvider = Provider<FirebaseFirestore>((ref) {
  return FirebaseFirestore.instance;
});

final realTimeDatabaseProvider = Provider<FirebaseDatabase>((ref) {
  return FirebaseDatabase.instance;
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
