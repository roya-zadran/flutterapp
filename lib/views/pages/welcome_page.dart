import 'package:flutter/material.dart';
import 'package:flutterapp/data/notifiers.dart';
import 'package:flutterapp/views/pages/login_page.dart';
import 'package:flutterapp/views/widgets/widget_tree.dart';
import 'package:lottie/lottie.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset("assets/lotties/welcome.json"),
            FittedBox(child: Text("Flutter Mapp", style: TextStyle(fontSize: 20, letterSpacing: 20),)),
            SizedBox(height: 20.0),
            FilledButton(
              onPressed: () {
                selectedPageNotifier.value = 0;
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginPage();
                    },
                  ),
                );
              },
              child: Text("Get Started"),
              style: FilledButton.styleFrom(
                minimumSize: Size(double.infinity, 40.0),
              ),
            ),
            TextButton(style: TextButton.styleFrom(minimumSize: Size( double.infinity, 40.0)),
              onPressed: () {
                selectedPageNotifier.value = 0;
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginPage();
                    },
                  ),
                );
              },
              child: Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
