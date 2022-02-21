import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';

// class AuthGuard extends AutoRouteGuard {
//   @override
//   void onNavigation(NavigationResolver resolver, StackRouter router) {
//     final authenitcated = FirebaseAuth.instance.currentUser != null;
//     // the navigation is paused until resolver.next() is called with either
//     // true to resume/continue navigation or false to abort navigation
//     if (authenitcated) {
//       // if user is authenticated we continue
//       resolver.next(true);
//     } else {
//       // we redirect the user to our login page
//       router.push(const SignInRoute());
//     }
//   }
// }
