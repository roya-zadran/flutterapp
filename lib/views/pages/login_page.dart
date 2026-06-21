import 'package:flutter/material.dart';
import 'package:flutterapp/data/notifiers.dart';
import 'package:flutterapp/views/widgets/hero_widget.dart';
import 'package:flutterapp/views/widgets/widget_tree.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

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

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            HeroWidget(title: "Login"),
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
            FilledButton(
              onPressed: () {
                selectedPageNotifier.value = 0;
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return WidgetTree();
                    },
                  ),
                );
              },
              child: Text("Login"),
              style: FilledButton.styleFrom(
                backgroundColor: Colors.tealAccent,
                minimumSize: Size(double.infinity, 40.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
