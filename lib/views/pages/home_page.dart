import 'package:flutter/material.dart';
import 'package:flutterapp/data/constants.dart';
import 'package:flutterapp/views/widgets/container_widget.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Lottie.asset("assets/lotties/lottie.json"),
            ContainerWidget(title: "Title", des: "This is a description"),
            ContainerWidget(title: "Title", des: "This is a description"),
            ContainerWidget(title: "Title", des: "This is a description"),
            ContainerWidget(title: "Title", des: "This is a description"),
          ],
        ),
      ),
    );
  }
}
