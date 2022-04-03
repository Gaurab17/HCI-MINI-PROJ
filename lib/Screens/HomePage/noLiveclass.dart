import 'package:flutter/material.dart';
import 'package:hciminiproj/Screens/HomePage/absence.dart';
import 'package:hciminiproj/Screens/HomePage/attendancehistory.dart';

class NoLiveClass extends StatelessWidget {
  const NoLiveClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("COMP 342"),
        backgroundColor: const Color.fromARGB(255, 6, 200, 142),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        // ignore: prefer_const_literals_to_create_immutables
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          const SizedBox(
            height: 60,
          ),
          const Padding(
            padding: EdgeInsets.all(50.0),
            child: Text(
              "No Live Class Detected. Please try again at the class hour",
              style: TextStyle(
                  fontSize: 24, fontWeight: FontWeight.bold, color: Colors.red),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const History()));
              },
              child: const Text(
                "Your Attendance data",
                style: TextStyle(fontSize: 22),
              )),
        ]),
      ),
    );
  }
}
