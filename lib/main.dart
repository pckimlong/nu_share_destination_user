import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nu_share_destination_user/driver/presentation/core/app_widget.dart'
    as driver;
import 'package:nu_share_destination_user/firebase_options.dart';
import 'package:nu_share_destination_user/src/presentation/_core/app_widget.dart'
    as user;
import 'package:nu_share_destination_user/src/presentation/_core/common_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  /// Initialize cache box
  await GetStorage.init();

  runApp(
    ProviderScope(
      // observers: [Logger()],
      overrides: [
        getStorageProvider.overrideWithValue(GetStorage()),
      ],
      child: const user.AppWidget(),
      // child: const driver.AppWidget(),
    ),
  );
}

class Logger extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderBase provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    debugPrint('''
{
  #Update --- ${provider.name ?? provider.runtimeType}
  Previous Value: $previousValue
  New Value: $newValue
}''');
  }

  @override
  void didAddProvider(
      ProviderBase provider, Object? value, ProviderContainer container) {
    debugPrint("#Add ---${provider.name ?? provider.runtimeType} provider");
//     debugPrint('''
// {
//   #Add -----------------------------------------------
//   "provider": "${provider.name ?? provider.runtimeType}",
// }''');
  }
  // "with inital value": "$value"

  @override
  void didDisposeProvider(ProviderBase provider, ProviderContainer containers) {
    debugPrint(
        "#Disposed ---${provider.name ?? provider.runtimeType} provider");
//     debugPrint('''
// {
//   #Dispose -----------------------------------------------
//   "provider": "${provider.name ?? provider.runtimeType}" disposed,
// }''');f
  }
}
