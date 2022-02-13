import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SavedPlaceListPage extends ConsumerWidget {
  const SavedPlaceListPage({
    Key? key,
    this.openAsPicker = false,
  }) : super(key: key);

  final bool openAsPicker;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: openAsPicker
            ? const Text('Pick Place')
            : const Text('Saved Places'),
      ),
    );
  }
}
