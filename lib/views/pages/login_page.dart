import 'package:flutter/material.dart';
import 'package:flutterapp/data/notifiers.dart';
import 'package:flutterapp/views/widgets/hero_widget.dart';
import 'package:flutterapp/views/widgets/widget_tree.dart';

class LoginPage extends StatefulWidget {
  final String myTitle;
  final String buttonTitle;

  const LoginPage({
    super.key,
    required this.myTitle,
    required this.buttonTitle,
  });

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
    return LayoutBuilder(
      builder: (context, constraints) => FractionallySizedBox(
        widthFactor: constraints.maxWidth > 500? 0.5: 1.0,
        child: Scaffold(
          appBar: AppBar(),
          body: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  children: [
                    HeroWidget(title: widget.myTitle),
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
                        selectedPageNotifier.value = 0;
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return WidgetTree();
                            },
                          ),
                          (route) => false,
                        );
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
        ),
      ),
    );
  }
}
