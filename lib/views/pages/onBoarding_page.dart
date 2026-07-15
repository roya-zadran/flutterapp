import 'package:flutter/material.dart';
import 'package:flutterapp/views/pages/login_page.dart';
import 'package:lottie/lottie.dart';

class onBoardingPage extends StatelessWidget {
  const onBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => FractionallySizedBox(
        widthFactor: constraints.maxWidth > 500? 0.5 : 1.0,
        child: Scaffold(
          appBar: AppBar(),
          body: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 200),
                child: Column(
                  children: [
                    Lottie.asset("assets/lotties/welcome2.json"),

                    SizedBox(height: 150),
                    Text(
                      "Learn Flutter with Flutter Map anytime and anywhere",
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(height: 30,),
                    FilledButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return LoginPage(
                                myTitle: "Register",
                                buttonTitle: "Register",
                              );
                            },
                          ),
                        );
                      },
                      child: Text("Next"),
                      style: FilledButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.tealAccent,
                        minimumSize: Size(double.infinity, 40.0),
                      ),
                    ),
                    SizedBox(height: 50),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
