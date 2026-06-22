import 'package:flutter/material.dart';
import 'package:flutterapp/data/notifiers.dart';
import 'package:flutterapp/views/widgets/hero_widget.dart';
import 'package:flutterapp/views/widgets/widget_tree.dart';

class LoginPage extends StatefulWidget {
  final String myTitle;
  final String buttonTitle;

  const LoginPage({super.key, required this.myTitle, required this.buttonTitle});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void dispose() {
    super.dispose();
    EmailController.dispose();
    PasswordController.dispose();
  }

  void initState() {
    super.initState();
    print("HIIh ");
  }

  TextEditingController EmailController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();
  late String confirmedEmail = "123";
  late String confirmedPassword = "456";

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              children: [
                HeroWidget(title: widget.myTitle,),
                SizedBox(height: 15),
                TextField(
                  controller: EmailController,
                  decoration: InputDecoration(
                    hintText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onEditingComplete: () {
                    setState(() {});
                  },
                ),
                SizedBox(height: 15),
                TextField(
                  controller: PasswordController,
                  decoration: InputDecoration(
                    hintText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onEditingComplete: () {
                    setState(() {});
                  },
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    login();
                  },
                  child: Text(widget.buttonTitle),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.tealAccent,
                    minimumSize: Size(double.infinity, 40.0),
                  ),
                ),
                SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void login() {
    if (confirmedEmail == EmailController.text &&
        confirmedPassword == PasswordController.text) {
      selectedPageNotifier.value = 0;
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return WidgetTree();
          },
        ),
      );
    }
  }
}
