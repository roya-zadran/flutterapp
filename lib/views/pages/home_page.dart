import 'package:flutter/material.dart';
import 'package:flutterapp/data/constants.dart';
import 'package:flutterapp/views/pages/course_page.dart';
import 'package:flutterapp/views/widgets/container_widget.dart';
import 'package:flutterapp/views/widgets/hero_widget.dart';

class HomePage extends StatelessWidget {
  final List<String> list =[
    kConstantValues.KeyConcepts,
    kConstantValues.fixBugs,
    kConstantValues.code,
    kConstantValues.CourseMaterial,
    kConstantValues.Review,
  ];
  HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            HeroWidget(title: "Home", nextPage: CoursePage(),),
            // Generate a list automatically! , (...) Tells flutter that this list is a list where it can have a list of several other widgets.
            ...List.generate(list.length, (index) {
              return ContainerWidget(title: list.elementAt(index), des: "Desc");
            },)
          ],
        ),
      ),
    );
  }
}
