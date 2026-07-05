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
      body: Column(children: [
        Expanded(
          // Makes the size bigger or smaller
          flex: 6,
          child: Container(color: Colors.purple,),
        ),
        Expanded( flex:  6,
          child: Container(color: Colors.pink,),
        ),
      ]),
    );
  }
}
