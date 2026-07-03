import 'package:flutter/material.dart';
import 'package:flutterapp/views/pages/welcome_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(
      children: [
        ListTile(
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
        ),
        CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage("assets/images/bg.jpg"),
        ),

      ],
    ),);
  }
}
