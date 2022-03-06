// import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
// import '../../../src/domain/auth/i_auth_facade.dart';
// import '../../../src2/domain/repositories/i_cache_service.dart';
// import '../../../src2/domain/repositories/i_driver_repository.dart';
// import '../../../src2/domain/repositories/i_location_service.dart';
// import '../../../src2/domain/repositories/i_trip_repository.dart';
// import '../../../src2/domain/repositories/i_user_repository.dart';
// import '../../../src2/infra/repositories/auth_facade_impl.dart';
// import '../../../src/infra/cache/cache_service.dart';
// import '../../../src2/infra/repositories/driver_repos_impl.dart';
// import '../../../src2/infra/repositories/location_service_impl.dart';
// import '../../../src2/infra/repositories/trip_repos_impl.dart';
// import '../../../src2/infra/repositories/user_repos_impl.dart';

// import 'common_provider.dart';

// final authFacadeProvider = Provider<IAuthFacade>((ref) {
//   final firebaseAuth = ref.watch(firebaseAuthProvider);
//   final googleSignIn = GoogleSignIn();
//   final facebookAuth = FacebookAuth.instance;

//   return AuthFacadeImpl(
//     firebaseAuth,
//     googleSignIn,
//     facebookAuth,
//   );
// });

// final userReposProvider = Provider<IUserRepository>((ref) {
//   final firestore = ref.watch(firestoreProvider);
//   final auth = ref.watch(firebaseAuthProvider);
//   return UserReposImpl(firestore, auth);
// });

// final driverReposProvider = Provider<IDriverRepository>((ref) {
//   return DriverReposImpl(
//     ref.watch(firestoreProvider),
//     ref.watch(geoFireProvider),
//     ref.watch(realTimeDatabaseProvider),
//   );
// });

// final tripReposProvider = Provider<ITripRepository>((ref) {
//   return TripReposImpl(ref.watch(firestoreProvider));
// });

// // final cachServiceProvider = Provider<ICacheService>((ref) {
// //   final getStorage = ref.watch(getStorageProvider);
// //   return CacheServiceImpl(getStorage);
// // });

// final locationServiceProvider = Provider<ILocationService>((ref) {
//   return LocationServiceImpl(
//     ref.watch(geoFireProvider),
//     ref.watch(googlePlaceProvider),
//     ref.watch(locationProvider),
//   );
// });
