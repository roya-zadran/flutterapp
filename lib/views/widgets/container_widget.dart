import 'package:flutter/material.dart';
import 'package:flutterapp/data/constants.dart';


class ContainerWidget extends StatelessWidget {
  const ContainerWidget({
    super.key, required this.title, required this.des
  });
 final String title;
 final String des;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(2),
      child: Card(
        margin: EdgeInsets.only(top: 10),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: KCardTextStyle.cardTitleStyle),
              Text(
                des,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
