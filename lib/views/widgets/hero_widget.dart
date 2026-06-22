import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  final String title;
  const HeroWidget({super.key, required this.title});


  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Hero(
          // Tag should be used in order to use hero widget, and it takes an unique value.
          tag: "hero1",
          // ClipRReact round each widget borders
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset(
              "assets/images/bg.jpg",
              color: Colors.blue.shade600,
              colorBlendMode: BlendMode.modulate,
            ),
          ),
        ),
        FittedBox(
          child: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white60,
              fontSize: 25,
              letterSpacing: 45,
            ),
          ),
        ),
      ],
    );
  }
}
