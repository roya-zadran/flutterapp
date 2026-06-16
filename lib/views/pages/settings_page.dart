import 'package:flutter/material.dart';
import 'package:flutterapp/views/widgets/hero_widget.dart';

class SettingsPage extends StatefulWidget {
  final String title;

  const SettingsPage({super.key, required this.title});

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
        // In statefull widget for the varibles that takes passing data,
        // u must also use ".widget" keyword.
        title: Text(widget.title),
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
              ElevatedButton(
                onPressed: () {
                  // SnackBar Widget display a small massage at the bottom of Scaffold.
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Hi, your message has been sent!"),
                      duration: Duration(seconds: 2),
                      behavior: SnackBarBehavior.floating,
                    ),
                  );
                },
                child: Text("Click Me"),
              ),
              Divider(color: Colors.deepOrange, endIndent: 150, thickness: 1),
              // Vertical Divider
              Container(
                height: 100,
                child: VerticalDivider(thickness: 1, color: Colors.deepOrange),
              ),
              // AlertDialog() another kind of pop up message. AboutDialog() shows the liscense of the app.
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text('Hi'),
                      content: Text("Your massage has been sent!"),
                      actions: [
                        FilledButton(
                          onPressed: () {
                            // This function close the open page and brings its previous.
                            Navigator.pop(context);
                          },
                          child: Text("Close"),
                        ),
                      ],
                    ),
                  );
                },
                child: Text("Click Me"),
              ),

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
