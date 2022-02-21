import 'package:flutter/material.dart';

import '../../widgets/my_list_tile.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListView(
        children: [
          MyListTile(
            iconData: Icons.language_outlined,
            label: "Language",
            onTap: () {},
          ),
          MyListTile(
            iconData: Icons.info_outline,
            label: "About",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
