import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:nu_share_destination_user/src/presentation/routes/router.gr.dart';

class SplashPage extends HookWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final timer = Timer(const Duration(seconds: 3), () {
      context.router.replace(const RootRoute());
    });
    useEffect(() {
      return () => timer.cancel();
    });

    return const Scaffold(
      body: Center(
        child: Text('Splash Page'),
      ),
    );
  }
}
