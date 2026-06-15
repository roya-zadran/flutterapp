import 'package:flutter/material.dart';
import 'package:flutterapp/views/pages/home_page.dart';
import 'package:flutterapp/views/pages/profile_page.dart';
import 'package:flutterapp/data/notifiers.dart';
import 'package:flutterapp/views/pages/settings_page.dart';

import 'navbar_widget.dart' show NavbarWidget;

List<Widget> pages = [HomePage(), ProfilePage()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          ValueListenableBuilder(
            valueListenable: isDarkModeNotifier,
            builder: (context, isDarkMode, child) {
              return IconButton(
                onPressed: () {
                  // Change the value of is DarkModeNotifier
                  isDarkModeNotifier.value = !isDarkModeNotifier.value;
                },
                icon: isDarkMode == true
                    ? Icon(
                        Icons.light_mode_outlined,
                        color: Colors.deepOrangeAccent,
                      )
                    : Icon(Icons.dark_mode, color: Colors.orangeAccent),
              );
            },
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SettingsPage();
                  },
                ),
              );
            },
            icon: Icon(Icons.settings),
          ),
        ],
        title: Text("Flutter Map"),
        centerTitle: true,
      ),
      bottomNavigationBar: NavbarWidget(),
      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, selectedPage, child) {
          return pages.elementAt(selectedPage);
        },
      ),
    );
  }
}
