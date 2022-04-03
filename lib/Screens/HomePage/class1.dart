import 'package:flutter/material.dart';
import 'package:hciminiproj/Screens/HomePage/AttendanceReport.dart';
import 'package:hciminiproj/Screens/HomePage/captureimage.dart';
// import 'package:hciminiproj/Screens/captureimage.dart';

import 'attendancehistory.dart';

class Selectedclass extends StatelessWidget {
  const Selectedclass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("COMP 341"),
        backgroundColor: const Color.fromARGB(255, 6, 200, 142),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Column(children: [
            Container(
              height: 65,
              width: MediaQuery.of(context).size.width / 1.2,
              color: Colors.white,
              child: const Center(
                child: Text(
                  "Human Computer Interaction COMP 341",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            ),
            Container(
              height: 30,
              width: MediaQuery.of(context).size.width / 1.2,
              color: Colors.white,
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.only(left: 88.0),
                  child: Text(
                    "-By Sushil Shrestha",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.normal,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Center(
              child: Image.asset(
                'assets/images/wifi.gif',
                height: 200,
                width: 200,
              ),
            ),
            const Text(
              "Connected",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 65,
              width: MediaQuery.of(context).size.width / 1.2,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 9, 162, 144),
                border: Border.all(
                  color: const Color.fromARGB(255, 45, 102, 247),
                  width: 0.4,
                ), //Border.all
                borderRadius: BorderRadius.circular(15),
                //BoxShadow
              ),
              child: ListTile(
                  leading: const Icon(
                    Icons.book,
                    color: Colors.white,
                  ),
                  title: const Text(
                    "Do Attendance",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 226, 222, 222)),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CaptureImage()));
                  }),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              height: 65,
              width: MediaQuery.of(context).size.width / 1.2,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 9, 162, 144),
                border: Border.all(
                  color: const Color.fromARGB(255, 45, 102, 247),
                  width: 0.4,
                ), //Border.all
                borderRadius: BorderRadius.circular(15),
                //BoxShadow
              ),
              child: ListTile(
                  leading: const Icon(
                    Icons.book,
                    color: Colors.white,
                  ),
                  title: const Text(
                    "Attendance History",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 226, 222, 222)),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const History()));
                  }),
            ),
            const SizedBox(
              height: 16,
            ),
          ]),
        ),
      ),
    );
  }
}
