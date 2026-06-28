import 'package:flutter/material.dart';
import 'package:flutterapp/views/pages/login_page.dart';
import 'package:lottie/lottie.dart';

class onBoardingPage extends StatelessWidget {
  const onBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              children: [
                Lottie.asset("assets/lotties/lottie.json"),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Learn Flutter with Flutter Map anytime and anywhere", textAlign: TextAlign.justify, style: TextStyle(fontSize: 15),),
                ),
                FilledButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return LoginPage(myTitle: "Register", buttonTitle:"Register");
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
    );
  }





}
