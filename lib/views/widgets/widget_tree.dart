import 'package:flutter/material.dart';
import 'package:flutterapp/data/constants.dart';
import 'package:flutterapp/views/pages/home_page.dart';
import 'package:flutterapp/views/pages/profile_page.dart';
import 'package:flutterapp/data/notifiers.dart';
import 'package:flutterapp/views/pages/settings_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
                onPressed: () async {
                  isDarkModeNotifier.value = !isDarkModeNotifier.value;
                  // it saves the value
                  final SharedPreferences prefs = await SharedPreferences.getInstance();
                  await prefs.setBool(kMyKeyClass.myKey, isDarkModeNotifier.value);
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
          ValueListenableBuilder(valueListenable: isDarkModeNotifier, builder: (context, isDarkMode, child) {
            return IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SettingsPage(title: "Settings",);
                    },
                  ),
                );
              },
              icon: Icon(Icons.settings, color: isDarkMode == true? Colors.deepOrangeAccent: Colors.orangeAccent,),
            );
          },)
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
