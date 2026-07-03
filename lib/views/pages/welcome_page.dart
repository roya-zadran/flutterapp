import 'package:flutter/material.dart';
import 'package:flutterapp/data/notifiers.dart';
import 'package:flutterapp/views/pages/login_page.dart';
import 'package:flutterapp/views/pages/onBoarding_page.dart';
import 'package:lottie/lottie.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key, required });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(30.0),
            child: LayoutBuilder(builder: (context, constraints) {
              return FractionallySizedBox(
                widthFactor: constraints.maxWidth > 500 ? 0.5: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Lottie.asset("assets/lotties/welcome.json"),
                    FittedBox(child: Text("Flutter Mapp", style: TextStyle(fontSize: 20, letterSpacing: 20),)),
                    SizedBox(height: 20.0),
                    FilledButton(
                      onPressed: () {
                        selectedPageNotifier.value = 0;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return onBoardingPage();
                            },
                          ),
                        );
                      },
                      child: Text("Get Started"),
                      style: FilledButton.styleFrom(
                        backgroundColor: Colors.tealAccent,
                        minimumSize: Size(double.infinity, 40.0),
                      ),
                    ),
                    TextButton(style: TextButton.styleFrom(minimumSize: Size( double.infinity, 40.0)),
                      onPressed: () {
                        selectedPageNotifier.value = 0;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return LoginPage(myTitle: "Login", buttonTitle: "Login",);
                            },
                          ),
                        );
                      },
                      child: Text("Login"),
                    ),
                  ],
                ),
              );
            },)          ),
        ),
      ),
    );
  }
}
