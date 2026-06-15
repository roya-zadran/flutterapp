import 'package:flutter/material.dart';
import 'package:flutterapp/views/pages/welcome_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("Log out"),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return WelcomePage();
            },
          ),
        );
      },
    );
  }
}
