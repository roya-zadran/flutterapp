import 'package:flutter/material.dart';

import '../../data/notifiers.dart';

class NavbarWidget extends StatelessWidget {
  const NavbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isDarkModeNotifier,
      builder: (context, isDarkMode, child) {
        return ValueListenableBuilder(
          valueListenable: selectedPageNotifier,
          builder: (context, selectedPage, child) {
            return NavigationBar(
              destinations: [
                NavigationDestination(
                  icon: Icon(
                    Icons.home,
                    color: isDarkMode == true
                        ? Colors.deepOrangeAccent
                        : Colors.orangeAccent,
                  ),
                  label: "Home",
                ),
                NavigationDestination(
                  icon: Icon(
                    Icons.person,
                    color: isDarkMode == true
                        ? Colors.deepOrangeAccent
                        : Colors.orangeAccent,
                  ),
                  label: "Profile",
                ),
              ],
              onDestinationSelected: (int value) {
                selectedPageNotifier.value = value;
              },
              selectedIndex: selectedPage,
            );
          },
        );
      },
    );
  }
}
