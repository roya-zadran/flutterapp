import 'package:flutter/material.dart';
import 'package:flutterapp/views/pages/home_page.dart';
import 'package:flutterapp/views/pages/profile_page.dart';
import 'package:flutterapp/views/widgets/notifiers.dart';

import 'navbar_widget.dart' show NavbarWidget;

List<Widget> pages = [HomePage(), ProfilePage()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter Map"), centerTitle: true),
      bottomNavigationBar: NavbarWidget(),
      body: ValueListenableBuilder(valueListenable: selectedPageNotifier, builder: (context, selectedPage, child) {
        return pages.elementAt(selectedPage);
      },)
    );
  }
}
