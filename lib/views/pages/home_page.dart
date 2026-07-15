import 'package:flutter/material.dart';
import 'package:flutterapp/data/constants.dart';
import 'package:flutterapp/views/widgets/container_widget.dart';
import 'package:lottie/lottie.dart';

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
    return LayoutBuilder(builder: (context, constraints) => FractionallySizedBox(
      widthFactor: constraints.maxWidth > 500? 0.5: 1.0,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
            Lottie.asset("assets/lotties/home.json"),
              // Generate a list automatically! , (...) Tells flutter that this list is a list where it can have a list of several other widgets.
              ...List.generate(list.length, (index) {
                return ContainerWidget(title: list.elementAt(index), des: "Desc");
              },)
            ],
          ),
        ),
      ),
    ),);
  }
}
