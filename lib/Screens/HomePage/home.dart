import 'package:flutter/material.dart';
import 'package:hciminiproj/Screens/HomePage/attendancehistory.dart';
import 'package:hciminiproj/Screens/HomePage/class1.dart';
import 'package:hciminiproj/Screens/HomePage/Classes.dart';
import 'package:hciminiproj/Screens/Authenticate/login.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool vpn = false;

  // void vpnCheck() {
  //   setState(() {
  //     vpn == true;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Welcome to Smart Attendance System"),
        centerTitle: true,
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
                currentAccountPicture: Center(
                  child: CircleAvatar(
                    radius: 50.0,
                    backgroundColor: Color(0xFF778899),
                    backgroundImage: AssetImage("assets/images/loco.jpeg"),
                  ),
                ),
              ),
            ),
            ListTile(
              title: const Text('My Courses'),
              leading: const Icon(Icons.book_rounded),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Classes(value: false)));
              },
            ),
            ListTile(
              title: const Text('Attendance Data'),
              leading: const Icon(Icons.table_chart),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const History()));
              },
            ),
            ListTile(
              title: const Text('Help'),
              leading: const Icon(Icons.help),
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
        color: Colors.white,
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 16.0, right: 16, top: 20),
                  child: GestureDetector(
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.all(
                          Radius.circular(18),
                        ),
                      ),
                      height: MediaQuery.of(context).size.height / 5,
                      width: MediaQuery.of(context).size.width / 2.3,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Icon(Icons.class__rounded,
                                size: 50, color: Colors.white),
                            const SizedBox(
                              height: 30,
                            ),
                            const Text(
                              "Classes",
                              style: TextStyle(
                                  color: Colors.white,
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
                              builder: (context) =>
                                  const Classes(value: false)));
                    },
                  ),
                ),
                GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(
                          Radius.circular(18),
                        ),
                      ),
                      height: MediaQuery.of(context).size.height / 5,
                      width: MediaQuery.of(context).size.width / 2.3,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Icon(Icons.live_tv,
                                size: 50, color: Colors.white),
                            const SizedBox(
                              height: 30,
                            ),
                            const Text(
                              "Live Classes",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
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
                        backgroundColor: const Color.fromARGB(255, 20, 45, 65),
                        content: const Text(
                          'Connect the VPN to join the Live class!',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.red),
                        ),
                        action: SnackBarAction(
                          label: 'Undo',
                          onPressed: () {
                            // Some code to undo the change.
                          },
                        ),
                      );

                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                    ;
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(
                height: 50,
                color: Colors.white,
                child: ListView(
                  children: [
                    SwitchListTile(
                        title: const Text(
                          "Connect to the VPN",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87),
                        ),
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
