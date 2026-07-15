import 'package:flutter/material.dart';
import 'package:flutterapp/data/constants.dart';
import 'package:flutterapp/data/notifiers.dart';
import 'package:flutterapp/views/widgets/divider_widget.dart';
class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    // MediaQuery.of(context).size makes the page layout scalable and flexible.
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topLeft,
                colors: StudentCardPageStyles.FirstContainer,
              ),
            ),
            width: double.infinity,
            height: size.height * 0.50,
            child: Padding(
              padding: EdgeInsets.only(top: size.height * 0.07),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: size.width * 0.16,
                    backgroundImage: AssetImage("assets/images/bg.jpg"),
                  ),
                  SizedBox(height: size.height * 0.02),
                  Text(
                    "Megan Allison",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 2, 0, size.height * 0.05),
                    child: Text(
                      "Traveler,  Dreamer, & Photographer",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Photos",
                              style: TextStyle(color: Colors.indigo),
                            ),
                            Text(
                              "160",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Followers",
                              style: TextStyle(color: Colors.indigo),
                            ),
                            Text(
                              "1543",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Following",
                              style: TextStyle(color: Colors.indigo),
                            ),
                            Text(
                              "250",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: size.height * 0.05),
                  ValueListenableBuilder(
                    valueListenable: SelectedTapNotifier,
                    builder: (context, selectedTap, child) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                SelectedTapNotifier.value = 0;
                              });
                            },
                            child: Text(
                              "ABOUT",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                SelectedTapNotifier.value = 1;
                              });
                            },
                            child: Text(
                              "POSTS",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                  Row(
                    children: [
                      // About == 0, Post == 1;
                      MyDividerWidget(isSelected: 0),
                      MyDividerWidget(isSelected: 1),
                    ],
                  ),
                ],
              ),
            ),
          ),
          ValueListenableBuilder(
            valueListenable: ThemeNotifier,
            builder: (context, isDarkMode, child) {
              return Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3),
                ),
                margin: EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                color: isDarkMode == true ? Colors.black : Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 30),
                        child: Row(
                          children: [
                            Icon(
                              Icons.phone_android_rounded,
                              color: StudentCardPageStyles.IconSColor,
                            ),
                            SizedBox(width: 35),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Mobile",
                                  style: TextStyle(
                                    color: StudentCardPageStyles.IconSColor,
                                  ),
                                ),
                                Text("+9462839238"),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 40),
                        child: Row(
                          children: [
                            Icon(
                              Icons.phone,
                              color: StudentCardPageStyles.IconSColor,
                            ),
                            SizedBox(width: 35),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Work",
                                  style: TextStyle(
                                    color: StudentCardPageStyles.IconSColor,
                                  ),
                                ),
                                Text("+68293824348"),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.email,
                            color: StudentCardPageStyles.IconSColor,
                          ),
                          SizedBox(width: 35),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Email",
                                style: TextStyle(
                                  color: StudentCardPageStyles.IconSColor,
                                ),
                              ),
                              Text("meganallison@gamil.com"),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          ValueListenableBuilder(
            valueListenable: ThemeNotifier,
            builder: (context, isDarkMode, child) {
              return Card(
                margin: EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: size.height * 0.0002,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3),
                ),

                color: isDarkMode == true ? Colors.black : Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: SizedBox(
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Status",
                          style: TextStyle(
                            color: StudentCardPageStyles.IconSColor,
                          ),
                        ),
                        Text("Available"),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
