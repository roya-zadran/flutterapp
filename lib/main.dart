import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.cyan,
          brightness: Brightness.light,
        ),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_rounded),
            label: "Profile",
          ),
        ],
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Login",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
        ),
      ),
      body: Stack(
        children: [
          Image(
            image: AssetImage("assets/images/download.jpg"),
            fit: BoxFit.cover,
            height: double.infinity,
          ),
          Column(
            children: [
              Container(
                width: 300,
                height: 100,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.red,
              
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Text(
                    "Hey Girl, You are strong!",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),

        ],
      ),

      floatingActionButton: FloatingActionButton(onPressed: () {}),
    );
  }
}
