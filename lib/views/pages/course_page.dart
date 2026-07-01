import 'package:flutter/material.dart';
import 'package:flutterapp/views/widgets/hero_widget.dart';

class CoursePage extends StatelessWidget {

  CoursePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              HeroWidget(title: "Courses"),

            ],
          ),
        ),
      ),
    );
  }
}
