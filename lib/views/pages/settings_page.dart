import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  TextEditingController controller = TextEditingController();
  bool? isChecked = false;
  bool isSwitched = false;
  double sliderValue = 0.0;
  String? SelectedItem = "e1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        automaticallyImplyLeading: false,
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              DropdownButton(
                value: SelectedItem,
                items: [
                  DropdownMenuItem(child: Text('Option 1'), value: "e1"),
                  DropdownMenuItem(child: Text('Option 2'), value: "e2"),
                  DropdownMenuItem(child: Text('Option 3'), value: "e3"),
                ],
                onChanged: (value) {
                  setState(() {
                    SelectedItem = value;
                  });
                },
              ),
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
                activeThumbColor: Colors.deepOrangeAccent,
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
                thumbColor: Colors.deepOrange,
                activeColor: Colors.deepOrangeAccent,
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
              InkWell(
                onTap: () {
                  print("It is clicked InkWell");
                },
                child: Container(
                  height: 100,
                  width: double.infinity,
                  color: Colors.deepOrange,
                ),
              ),
              GestureDetector(
                onTap: () {
                  print("It is clicked GestureDetector");
                },
                child: Container(
                  height: 100,
                  width: double.infinity,
                  color: Colors.deepOrange,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
