import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settinsg'),
        automaticallyImplyLeading: false,
      ),
      body: const Padding(padding: EdgeInsets.all(10.0)),
    );
  }
}
