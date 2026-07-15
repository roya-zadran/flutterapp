import 'package:flutter/material.dart';
import 'package:flutterapp/data/notifiers.dart';


class MyDividerWidget extends StatelessWidget {

  final int isSelected;
  MyDividerWidget({ required this.isSelected});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ValueListenableBuilder(valueListenable: SelectedTapNotifier, builder: (context, selectedTap, child) {
      return Container(
        alignment: Alignment.bottomLeft,
        height:3,
        width: size.width * 0.50,
        color: selectedTap == isSelected ? Colors.black45 : Colors.teal,
      );
    },);
  }
}