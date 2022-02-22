// import 'package:auto_route/auto_route.dart';
// import 'package:bot_toast/bot_toast.dart';
// import 'package:fpdart/fpdart.dart';

// import 'package:flutter/material.dart';
// import 'package:easy_debounce/easy_debounce.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
// import '../../../domain/core/entities/location_address.dart';
// import '../../_core/app_styles.dart';
// import '../../_core/app_utilz.dart';
// import '../../_core/service_providers.dart';
// import '../../routes/router.gr.dart';
// import '../../widgets/circle_icon.dart';
// import '../../widgets/my_textform_field.dart';

// final _controllerProvider = StateNotifierProvider.autoDispose<
//     LocationPickerController, LocationPickerState>((ref) {
//   final locationService = ref.watch(locationServiceProvider);
//   return LocationPickerController(locationService);
// });

// class LocationPickerPage extends HookConsumerWidget {
//   /// Get [LocationAddress] by search or pick on map
//   const LocationPickerPage({
//     Key? key,
//     this.initial,
//     this.initialOrigin,
//     this.title,
//     this.textFieldHint = "Where to?",
//     this.onPickByMapPress,
//   }) : super(key: key);

//   /// Where address start from
//   final LocationAddress? initialOrigin;
//   final LocationAddress? initial;
//   final String? title;
//   final String textFieldHint;

//   /// If this not null, it will replace default function which open map picker
//   /// and update state in this
//   final VoidCallback? onPickByMapPress;

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final controller = ref.watch(_controllerProvider.notifier);
//     final state = ref.watch(_controllerProvider);

//     /// This call only one time
//     useMemoized(() {
//       Future.microtask(
//         () => controller.initialLocation(
//           initialOrigin: initialOrigin,
//           initialDestination: initial,
//         ),
//       );
//     });

//     ref.listen<LocationPickerState>(
//       _controllerProvider,
//       (previous, next) {
//         if (previous?.failure != next.failure) {
//           next.failure.match(
//             (failure) {
//               String message = "";
//               failure.when(
//                 permissionDeny: () => message = "Permission required",
//                 packageError: (mgs) => message = mgs,
//                 requestDenied: () =>
//                     message = 'Error: Google API request denied!',
//               );
//               BotToast.showText(text: message);
//             },
//             () => null,
//           );
//         }
//       },
//     );

//     useEffect(() => () => EasyDebounce.cancel('my-debouncer'));

//     return GestureDetector(
//       onTap: () => AppUtilzs.closeKeyBoard(context),
//       child: Scaffold(
//         resizeToAvoidBottomInset: false,
//         appBar: AppBar(
//           title: title != null ? Text(title!) : null,
//           actions: [
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: IconButton(
//                 onPressed: onPickByMapPress ??
//                     () async {
//                       /// Get result from map instead
//                       final result = await context.router
//                           .replace<LocationAddress?>(LocationPickerFromMapRoute(
//                               initial: ref
//                                   .read(_controllerProvider)
//                                   .selectedDesitination
//                                   .match(id, () => null)));

//                       if (result != null) {
//                         controller.onChangeDestination(result);
//                       }
//                     },
//                 icon: const Icon(Icons.map),
//                 color: AppColors.primaryColor,
//               ),
//             ),
//           ],
//         ),
//         body: Column(
//           children: [
//             Container(
//               padding: const EdgeInsets.only(left: 20, right: 30, top: 10),
//               child: Column(
//                 children: [
//                   if (initialOrigin != null)
//                     Padding(
//                       padding: const EdgeInsets.only(left: 15),
//                       child: Row(
//                         children: const [
//                           CircleIcon(),
//                           SizedBox(width: 10),
//                           _InitialOriginAddress(),
//                         ],
//                       ),
//                     ),
//                   const SizedBox(height: 20),
//                   MyTextFormField(
//                     onChanged: (value) async {
//                       EasyDebounce.debounce(
//                         'my-debouncer',
//                         const Duration(milliseconds: 300),
//                         () async => await controller.searchFieldChanged(value),
//                       );
//                     },
//                     //todo - this not update...
//                     initialValue: state.selectedDesitination.match(
//                       (a) => a.address,
//                       () => null,
//                     ),
//                     prefixIcon: const Icon(
//                       Icons.my_location_sharp,
//                       color: AppColors.primaryColor,
//                     ),
//                     capitalization: TextCapitalization.sentences,
//                     textStyle: const TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 22,
//                     ),
//                     hintText: textFieldHint,
//                   ),
//                 ],
//               ),
//             ),
//             const Expanded(child: _ResultList()),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class _InitialOriginAddress extends ConsumerWidget {
//   const _InitialOriginAddress({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context, ref) {
//     final state = ref.watch(
//       _controllerProvider.select(
//         (value) => value.initialOriginLocation.match(
//           (a) => a.address,
//           () => 'Not specified',
//         ),
//       ),
//     );

//     return Text(state);
//   }
// }

// class _ResultList extends ConsumerWidget {
//   const _ResultList({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final isLoading =
//         ref.watch(_controllerProvider.select((value) => value.isLoading));
//     final placesState =
//         ref.watch(_controllerProvider.select((value) => value.places));

//     return isLoading
//         ? const Center(child: CircularProgressIndicator())
//         : ListView.separated(
//             shrinkWrap: true,
//             itemBuilder: (_, index) {
//               final data = placesState[index];
//               return ListTile(
//                 title: Text(data.name),
//               );
//             },
//             separatorBuilder: (_, __) => const Divider(height: 0),
//             itemCount: placesState.length,
//           );
//   }
// }
