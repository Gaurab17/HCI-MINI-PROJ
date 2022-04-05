// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:hciminiproj/Screens/HomePage/home.dart';

class AttendanceReport extends StatelessWidget {
  const AttendanceReport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("COMP 341"),
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
              width: MediaQuery.of(context).size.width / 1.7,
              height: 40,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Home()));
                },
                child: const Text(
                  'Back To Home Page',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(255, 9, 162, 144),
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