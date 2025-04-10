import 'package:beginner/data/notifier.dart';
import 'package:beginner/views/pages/HomePage.dart';
import 'package:beginner/views/pages/ProfilePage.dart';
import 'package:flutter/material.dart';

import './widgets/NavBarWiget.dart';

const String title = 'Flutter Mapp';

const List<Widget> pages = [
  HomePage(),
  ProfilePage(),
];

class WidgetTree extends StatelessWidget {
  const WidgetTree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
        centerTitle: true,
      ),
      body: ValueListenableBuilder(
        valueListenable: selectedPageIndexNotifier,
        builder: (context, selectedPageIndex, child) {
          return pages.elementAt(selectedPageIndex);
        },
      ),
      bottomNavigationBar: const NavBarWidget(),
    );
  }
}
