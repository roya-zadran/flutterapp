import 'package:flutter/material.dart';

class ExpandedFlexiblePage extends StatefulWidget {
  const ExpandedFlexiblePage({super.key});

  @override
  State<ExpandedFlexiblePage> createState() => _ExpandedFlexiblePageState();
}

class _ExpandedFlexiblePageState extends State<ExpandedFlexiblePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Row(children: [
        // Flexible shrinks the widget based on the size of the content and it will not take all empty space.
        Flexible(
          flex: 2,
          child: Container(color: Colors.purple,),
        ),
        Expanded(
          flex: 1,
          child: Container(color: Colors.pink,),
        ),
        SizedBox(height: 20),
        Expanded(
          flex: 1,
          child: Container(color: Colors.pink,),
        ),
        Flexible(
          flex: 6,
          child: Container(color: Colors.purple,),
        ),
      ]),
    );
  }
}
