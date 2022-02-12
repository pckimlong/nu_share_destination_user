import 'package:flutter/material.dart';

class InboxListPage extends StatelessWidget {
  const InboxListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inbox'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.delete_sweep_outlined),
          ),
        ],
      ),
      body: const Center(
        child: Text('Inbox list'),
      ),
    );
  }
}
