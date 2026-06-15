import 'package:flutter/material.dart';

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
        child: Image.asset(
          "assets/images/bg.jpg",
          color: Colors.blue.shade600,
          colorBlendMode: BlendMode.modulate,
        ),
      ),
    );
  }
}
