import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:location/location.dart';
import 'package:nu_share_destination_user/src/domain/auth/i_auth_facade.dart';
import 'package:nu_share_destination_user/src/domain/cache/i_cache_service.dart';
import 'package:nu_share_destination_user/src/domain/driver/i_driver_repository.dart';
import 'package:nu_share_destination_user/src/domain/location/i_location_service.dart';
import 'package:nu_share_destination_user/src/domain/trip/i_trip_repository.dart';
import 'package:nu_share_destination_user/src/domain/user/i_user_repository.dart';
import 'package:nu_share_destination_user/src/infra/auth/auth_facade_impl.dart';
import 'package:nu_share_destination_user/src/infra/cache/cache_service.dart';
import 'package:nu_share_destination_user/src/infra/driver/driver_repos_impl.dart';
import 'package:nu_share_destination_user/src/infra/location/location_service_impl.dart';
import 'package:nu_share_destination_user/src/infra/trip/trip_repos_impl.dart';
import 'package:nu_share_destination_user/src/infra/user/user_repos_impl.dart';

import 'common_provider.dart';

final authFacadeProvider = Provider<IAuthFacade>((ref) {
  final firebaseAuth = ref.watch(firebaseAuthProvider);
  final googleSignIn = GoogleSignIn();
  final facebookAuth = FacebookAuth.instance;

  return AuthFacadeImpl(
    firebaseAuth,
    googleSignIn,
    facebookAuth,
  );
});

final userReposProvider = Provider<IUserRepository>((ref) {
  final firestore = ref.watch(firestoreProvider);
  final auth = ref.watch(firebaseAuthProvider);
  return UserReposImpl(firestore, auth);
});

final driverReposProvider = Provider<IDriverRepository>((ref) {
  return DriverReposImpl(ref.watch(firestoreProvider));
});

final tripReposProvider = Provider<ITripRepository>((ref) {
  return TripReposImpl(ref.watch(firestoreProvider));
});

final cachServiceProvider = Provider<ICacheService>((ref) {
  final getStorage = ref.watch(getStorageProvider);
  return CacheServiceImpl(getStorage);
});

final locationServiceProvider = Provider<ILocationService>((ref) {
  return LocationServiceImpl(
    ref.watch(locationProvider),
    ref.watch(geoFireProvider),
    ref.watch(googlePlaceProvider),
  );
});
