import 'package:flutter/material.dart';
import 'package:hciminiproj/Screens/HomePage/absence.dart';
import 'package:hciminiproj/Screens/HomePage/attendancehistory.dart';
import 'package:hciminiproj/Screens/HomePage/class1.dart';
import 'package:hciminiproj/Screens/HomePage/Classes.dart';
import 'package:hciminiproj/Screens/Authenticate/login.dart';
import 'package:hciminiproj/Screens/HomePage/noLiveclass.dart';
import 'package:hciminiproj/Screens/HomePage/total%20_attendancedata.dart';
import 'package:hciminiproj/Screens/Routine/routine.dart';
import 'package:hciminiproj/Screens/SuppportUI/help.dart';
import 'package:hciminiproj/services/const.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool vpn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        title: const Text("Welcome to Smart Attendance System"),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                Color.fromARGB(255, 23, 101, 65),
                Colors.blue
              ])),
        ),
        elevation: 0.0,
      ),
      drawer: Drawer(
        backgroundColor: background,
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: UserAccountsDrawerHeader(
                accountName: Text('Gaurab Shrestha'),
                accountEmail: Text('gaurabstha001@gmail.com'),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: <Color>[
                      Color.fromARGB(255, 12, 80, 48),
                      Color.fromARGB(255, 33, 243, 201)
                    ])),
                currentAccountPicture: Center(
                  child: CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage("assets/images/loco.jpeg"),
                  ),
                ),
              ),
            ),
            ListTile(
              title: const Text('Attendance Data'),
              leading: const Icon(Icons.table_chart),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TotalAttendance()));
              },
            ),
            ListTile(
              title: const Text('Leave Application'),
              leading: const Icon(Icons.holiday_village_rounded),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Absence()));
              },
            ),
            ListTile(
              title: const Text('Help'),
              leading: const Icon(Icons.help),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Help()));
              },
            ),
            ListTile(
              title: const Text('My Schedule'),
              leading: const Icon(Icons.class__rounded),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Routine()));
              },
            ),
            ListTile(
              title: const Text('Language'),
              leading: const Icon(Icons.language_rounded),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Settings'),
              leading: const Icon(Icons.settings),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Logout'),
              leading: const Icon(Icons.logout_rounded),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const SignIn()));
              },
            ),
          ],
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
                colors: <Color>[
              Color.fromARGB(255, 226, 223, 223),
              Color.fromARGB(155, 230, 226, 226),
            ])),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16, top: 24),
              child: GestureDetector(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 75, 183, 104),
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    height: MediaQuery.of(context).size.height / 7,
                    width: MediaQuery.of(context).size.width / 1.1,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 40.0),
                                child: Column(
                                  children: const [
                                    Icon(
                                      Icons.live_tv_rounded,
                                      size: 30,
                                      color: Color.fromARGB(255, 51, 51, 51),
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Text(
                                      "Live",
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 210, 237, 242),
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 40,
                              ),
                              Column(
                                children: const [
                                  Text(
                                    "COMP 341",
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  // const Icon(Icons.class__rounded,
                                  //     size: 40, color: Color.fromARGB(255, 8, 46, 113)),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    "Dr. Susil Shrestha",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Selectedclass()));
                  }),
            ),
            const SizedBox(
              height: 16,
            ),
            GestureDetector(
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 126, 223, 191),
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                  boxShadow: [],
                ),
                height: MediaQuery.of(context).size.height / 7,
                width: MediaQuery.of(context).size.width / 1.1,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          "COMP 314",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: textColor),
                        ),
                      ),
                      // const Icon(Icons.class__rounded,
                      //     size: 40, color: Color.fromARGB(255, 8, 46, 113)),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        "Dr. Rajani Chulyadyo",
                        style: TextStyle(
                            color: textColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NoLiveClass()));
              },
            ),
            const SizedBox(
              height: 16,
            ),
            GestureDetector(
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 126, 223, 191),
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                  boxShadow: [],
                ),
                height: MediaQuery.of(context).size.height / 7,
                width: MediaQuery.of(context).size.width / 1.1,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          "COMP 314",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: textColor),
                        ),
                      ),
                      // const Icon(Icons.class__rounded,
                      //     size: 40, color: Color.fromARGB(255, 8, 46, 113)),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        "Dr. Rajani Chulyadyo",
                        style: TextStyle(
                            color: textColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NoLiveClass()));
              },
            ),
            const SizedBox(
              height: 16,
            ),
            GestureDetector(
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 126, 223, 191),
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                  boxShadow: [],
                ),
                height: MediaQuery.of(context).size.height / 7,
                width: MediaQuery.of(context).size.width / 1.1,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          "COMP 314",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: textColor),
                        ),
                      ),
                      // const Icon(Icons.class__rounded,
                      //     size: 40, color: Color.fromARGB(255, 8, 46, 113)),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        "Dr. Rajani Chulyadyo",
                        style: TextStyle(
                            color: textColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NoLiveClass()));
              },
            ),
            const SizedBox(
              height: 16,
            ),
            GestureDetector(
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 126, 223, 191),
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                  boxShadow: [],
                ),
                height: MediaQuery.of(context).size.height / 7,
                width: MediaQuery.of(context).size.width / 1.1,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          "COMP 314",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: textColor),
                        ),
                      ),
                      // const Icon(Icons.class__rounded,
                      //     size: 40, color: Color.fromARGB(255, 8, 46, 113)),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        "Dr. Rajani Chulyadyo",
                        style: TextStyle(
                            color: textColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NoLiveClass()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
