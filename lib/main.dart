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
        primarySwatch: Colors.orange,
          brightness: Brightness.dark,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(child: Text("Settings")),
              ListTile(
                title: Text("Home"),
                onTap: () {
                  print("Go to home");
                },
              ),
              ListTile(
                title: Text("Profile"),
                onTap: () {
                  print("Go to user Profile");
                },
              ),
              ListTile(
                title: Text("Feedback"),
                onTap: () {
                  print("Go to Feedback Form");
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(centerTitle: true, title: Text("GoPu")),
        floatingActionButton: Align(
          alignment: Alignment.bottomRight,
          child: FloatingActionButton(
            onPressed: () {
              print("It is pressed.");
            },
            backgroundColor: Colors.orange,
            child: Icon(Icons.add),
          ),
        ),
        bottomNavigationBar: NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: "Home"),
            NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
          ],
          onDestinationSelected: (value) {
            print(value);
          },
          selectedIndex: 1,
        ),
      ),
    );
  }
}
