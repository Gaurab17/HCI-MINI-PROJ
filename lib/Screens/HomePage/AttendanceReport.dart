// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:hciminiproj/Screens/HomePage/home.dart';

class AttendanceReport extends StatelessWidget {
  const AttendanceReport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Attendance Status"),
        backgroundColor: const Color.fromARGB(255, 6, 200, 142),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 80,
          ),
          Center(
            child: Image.asset(
              'assets/images/attendance.gif',
              height: 300,
              width: 300,
            ),
          ),
          const Text(
            "Attendance Success",
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.green),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
              "Total Attendance : 4/6 days",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width / 1.5,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Home()));
                },
                child: const Text(
                  'Back To Home Page',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(width: 2.0, color: Colors.blue),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
