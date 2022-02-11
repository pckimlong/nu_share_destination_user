import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nu_share_destination_user/src/domain/auth/i_auth_facade.dart';
import 'package:nu_share_destination_user/src/domain/user/i_user_repository.dart';
import 'package:nu_share_destination_user/src/infra/auth/auth_facade_impl.dart';
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
  return UserReposImpl(firestore);
});
