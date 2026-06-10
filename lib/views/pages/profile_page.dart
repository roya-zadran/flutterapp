import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController controller = TextEditingController();
  bool? isChecked = false;
  bool isSwitched = false;
  double sliderValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(border: OutlineInputBorder()),
            controller: controller,
            onEditingComplete: () {
              setState(() {});
            },
          ),
          Text(controller.text),
          CheckboxListTile.adaptive(
            title: Text("Click Me"),
            value: isChecked,
            onChanged: (value) {
              setState(() {
                isChecked = value;
              });
            },
            tristate: true,
          ),
          //.adaptive = makes the widget ios
          SwitchListTile.adaptive(
            title: Text("Switch Me"),
            value: isSwitched,
            onChanged: (value) {
              setState(() {
                isSwitched = value;
              });
            },
          ),
          Slider.adaptive(
            inactiveColor: Colors.white,
            activeColor: Colors.tealAccent,
            value: sliderValue,
            onChanged: (value) {
              setState(() {
                sliderValue = value;
              });
              print(sliderValue);
            },
            max: 100,
            divisions: 100,
          ),
        ],
      ),
    );
  }
}
