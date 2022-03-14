import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nu_share_destination_user/driver/presentation/core/app_widget.dart'
    as driver;
import 'package:nu_share_destination_user/firebase_options.dart';
import 'package:nu_share_destination_user/src/presentation/core/app_widget.dart'
    as user;

import 'dependency_injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  await GetStorage.init();
  runApp(
    ProviderScope(
      overrides: [
        getStorageProvider.overrideWithValue(GetStorage()),
      ],
      child: const user.AppWidget(),
      // child: const driver.AppWidget(),
    ),
  );
}
