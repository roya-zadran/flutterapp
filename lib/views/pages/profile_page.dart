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
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) => FractionallySizedBox(
          widthFactor: constraints.maxWidth >500? 0.5:1.0,
          child: Column(
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
          ),
        ),
      ),
    );
  }
}
