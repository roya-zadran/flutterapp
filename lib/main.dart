import 'package:flutter/material.dart';
import 'package:flutterapp/data/constants.dart';
import 'package:flutterapp/data/notifiers.dart';
import 'package:flutterapp/views/pages/welcome_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  void initState (){
    Theme();
  }
  @override
  State<MyApp> createState() => _MyAppState();
}
//solve SharedPreference part.
 void Theme ()async{
   final SharedPreferences prefs = await SharedPreferences.getInstance();
   final bool? repeat = prefs.getBool(kMyKeyClass.myKey);
   isDarkModeNotifier.value = repeat;
 }

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isDarkModeNotifier,
      builder: (context, isDarkMode, child) {
        return MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.teal,
            brightness: isDarkMode == true ? Brightness.dark : Brightness.light,
          ),
          debugShowCheckedModeBanner: false,
          home: WelcomePage(),
        );
      },
    );
  }
}
