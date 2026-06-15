import 'package:flutter/material.dart';
import 'package:flutterapp/views/widgets/widget_tree.dart';

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
          HeroWidget(),
            FilledButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return WidgetTree();
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
 class HeroWidget extends StatelessWidget {
   const HeroWidget({super.key});

   @override
   Widget build(BuildContext context) {
     return Hero(
       // Tag should be used in order to use hero widget, and it takes an unique value.
       tag: "hero1",
       // ClipRReact round each widget borders
       child: ClipRRect(
         borderRadius: BorderRadius.circular(20.0),
         child: Image.asset("assets/images/download.jpg"),
       ),
     );
   }
 }
