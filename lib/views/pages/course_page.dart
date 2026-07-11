import 'package:flutter/material.dart';
import 'package:flutterapp/views/widgets/hero_widget.dart';
import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

class CoursePage extends StatefulWidget {
  CoursePage({super.key});

  @override
  State<CoursePage> createState() => _CoursePageState();
}

void initSate() {
  getData();
}

void getData() async {
  var url = Uri.https('bored-api.appbrewery.com', '/random');
  var response = await http.get(url);
  if (response.statusCode == 200) {
    var jsonResponse =
        convert.jsonDecode(response.body) as Map<String, dynamic>;
    var itemCount = jsonResponse['activity'];
    print(itemCount);
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
}

class _CoursePageState extends State<CoursePage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => FractionallySizedBox(
        widthFactor: constraints.maxWidth > 500 ? 0.5 : 1.0,
        child: Scaffold(
          appBar: AppBar(),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: AnimatedCrossFade(
                firstChild: Text("FirstChild"),
                secondChild: Text("SecondChild"),
                crossFadeState: CrossFadeState.showSecond,
                duration: Duration(seconds: 5),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
