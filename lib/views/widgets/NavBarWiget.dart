import 'package:beginner/data/notifier.dart';
import 'package:flutter/material.dart';

class NavBarWidget extends StatefulWidget {
  const NavBarWidget({Key? key}) : super(key: key);

  @override
  State<NavBarWidget> createState() => _NavBarWidgetState();
}

class _NavBarWidgetState extends State<NavBarWidget> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: selectedPageIndexNotifier,
        builder: (context, selectedPageIndex, child) {
          return NavigationBar(
            destinations: const <NavigationDestination>[
              NavigationDestination(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              NavigationDestination(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
            onDestinationSelected: (int value) {
              selectedPageIndexNotifier.value = value;
            },
            selectedIndex: selectedPageIndex,
          );
        });
  }
}
