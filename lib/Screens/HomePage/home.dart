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
      appBar: AppBar(
        title: const Text("Welcome to Smart Attendance System"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 6, 200, 142),
        elevation: 0.0,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: UserAccountsDrawerHeader(
                accountName: Text('Gaurab Shrestha'),
                accountEmail: Text('gaurabstha001@gmail.com'),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 5, 197, 178),
                ),
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
          image: DecorationImage(
            image: NetworkImage(
                "https://images.unsplash.com/photo-1619252584172-a83a949b6efd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fHdoaXRlJTIwYmFja2dyb3VuZHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 16.0, right: 16, top: 30),
                  child: GestureDetector(
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(12),
                          ),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            opacity: 0.2,
                            image: NetworkImage(
                                "https://media.istockphoto.com/photos/pile-of-catalogs-a4-picture-id841208328?k=20&m=841208328&s=612x612&w=0&h=i9wllEaE-tUlKEQknnEaaBduUgx3dc95j6zIffAYJp0="),
                          ),
                          boxShadow: [
                            //background color of box
                            BoxShadow(
                              color: Color.fromARGB(255, 188, 177, 176),
                              blurRadius: 10.0, // soften the shadow
                              spreadRadius: 1.0, //extend the shadow
                              offset: Offset(
                                0.0, // Move to right 10  horizontally
                                0.0, // Move to bottom 10 Vertically
                              ),
                            )
                          ],
                        ),
                        height: MediaQuery.of(context).size.height / 5,
                        width: MediaQuery.of(context).size.width / 2.3,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 40),
                          child: Column(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(bottom: 8.0),
                                child: Text(
                                  "COMP 341",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(221, 83, 75, 75)),
                                ),
                              ),
                              // const Icon(Icons.class__rounded,
                              //     size: 40, color: Color.fromARGB(255, 8, 46, 113)),
                              const SizedBox(
                                height: 14,
                              ),
                              const Text(
                                "Dr. Susil Shrestha",
                                style: TextStyle(
                                    color: Color.fromARGB(221, 73, 72, 72),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                "Happening now",
                                style: TextStyle(
                                    color: Color.fromARGB(221, 43, 202, 122),
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                      onTap: () {
                        if (vpn) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Selectedclass()));
                        } else {
                          final snackBar = SnackBar(
                            backgroundColor:
                                const Color.fromARGB(255, 15, 215, 122),
                            content: const Padding(
                              padding: EdgeInsets.only(left: 40.0),
                              child: Text(
                                'Connect the VPN to attend the Live class!',
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              ),
                            ),
                            action: SnackBarAction(
                              label: '',
                              onPressed: () {
                                // Some code to undo the change.
                              },
                            ),
                          );

                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        }
                        ;
                      }),
                ),
                GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(12),
                          ),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            opacity: 0.2,
                            image: NetworkImage(
                                "https://media.istockphoto.com/photos/blank-book-picture-id153085128?b=1&k=20&m=153085128&s=170667a&w=0&h=S0IpR3XjXy-ji6KVi70nmFA6m4d6nzZVbhvukIrgY5c="),
                          ),
                          boxShadow: [
                            //background color of box
                            BoxShadow(
                              color: Color.fromARGB(255, 188, 177, 176),
                              blurRadius: 10.0, // soften the shadow
                              spreadRadius: 1.0, //extend the shadow
                              offset: Offset(
                                0.0, // Move to right 10  horizontally
                                0.0, // Move to bottom 10 Vertically
                              ),
                            )
                          ]),
                      height: MediaQuery.of(context).size.height / 5,
                      width: MediaQuery.of(context).size.width / 2.3,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(bottom: 8.0),
                              child: Text(
                                "COMP 342",
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(221, 83, 75, 75)),
                              ),
                            ),
                            const SizedBox(
                              height: 14,
                            ),
                            const Text(
                              "Mr. Dhiraj Shrestha",
                              style: TextStyle(
                                  color: Color.fromARGB(221, 73, 72, 72),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
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
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 16.0, right: 16, top: 20),
                  child: GestureDetector(
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          opacity: 0.2,
                          image: NetworkImage(
                              "https://media.istockphoto.com/photos/blank-book-picture-id175547433?k=20&m=175547433&s=612x612&w=0&h=uWDMY1-N9TDn6jhWkdGiPygKVlQEMgdGZT03cglMkfI="),
                        ),
                        boxShadow: [
                          //background color of box
                          BoxShadow(
                            color: Color.fromARGB(255, 188, 177, 176),
                            blurRadius: 10.0, // soften the shadow
                            spreadRadius: 1.0, //extend the shadow
                            offset: Offset(
                              0.0, // Move to right 10  horizontally
                              0.0, // Move to bottom 10 Vertically
                            ),
                          )
                        ],
                      ),
                      height: MediaQuery.of(context).size.height / 5,
                      width: MediaQuery.of(context).size.width / 2.3,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40),
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
                                    color: Color.fromARGB(221, 83, 75, 75)),
                              ),
                            ),
                            // const Icon(Icons.class__rounded,
                            //     size: 40, color: Color.fromARGB(255, 8, 46, 113)),
                            const SizedBox(
                              height: 14,
                            ),
                            const Text(
                              "Dr. Rajani Chulyadyo",
                              style: TextStyle(
                                  color: Color.fromARGB(221, 73, 72, 72),
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
                ),
                GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          opacity: 0.2,
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1527176930608-09cb256ab504?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Ym9va3MlMjB3aGl0ZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"),
                        ),
                        boxShadow: [
                          //background color of box
                          BoxShadow(
                            color: Color.fromARGB(255, 188, 177, 176),
                            blurRadius: 10.0, // soften the shadow
                            spreadRadius: 1.0, //extend the shadow
                            offset: Offset(
                              0.0, // Move to right 10  horizontally
                              0.0, // Move to bottom 10 Vertically
                            ),
                          )
                        ],
                      ),
                      height: MediaQuery.of(context).size.height / 5,
                      width: MediaQuery.of(context).size.width / 2.3,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(bottom: 8.0),
                              child: Text(
                                "COMP 306",
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(221, 83, 75, 75)),
                              ),
                            ),
                            const SizedBox(
                              height: 14,
                            ),
                            const Text(
                              "Mr. Amrit Dahal",
                              style: TextStyle(
                                  color: Color.fromARGB(221, 73, 72, 72),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
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
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: SizedBox(
                height: 50,
                child: ListView(
                  children: [
                    SwitchListTile(
                        title: const Text(
                          "Connect to the VPN",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(221, 30, 29, 29)),
                        ),
                        activeColor: Colors.teal,
                        activeTrackColor: Colors.green,
                        value: vpn,
                        onChanged: (value) {
                          setState(() {
                            vpn = value;
                          });
                        }),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
