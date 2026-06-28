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
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Lottie.asset("assets/lotties/lottie.json"),
            // Generate a list automatically!
            ...List.generate(5, (index) {
              return ContainerWidget(title: list.elementAt(index), des: "Desc");
            },)
          ],
        ),
      ),
    );
  }
}
