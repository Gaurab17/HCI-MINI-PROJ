// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:hciminiproj/Screens/HomePage/attendancehistory.dart';

class NoLiveClass extends StatelessWidget {
  const NoLiveClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("COMP 314"),
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
            height: 20,
          ),
          Container(
            height: 65,
            width: MediaQuery.of(context).size.width / 1.2,
            color: Colors.white,
            child: const Center(
              child: Text(
                "Algorithm And Complexity COMP 314",
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
            child: const Text(
              "-By Rajani Chulyadyo",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.normal,
                  color: Colors.black),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
              image: DecorationImage(
                fit: BoxFit.fill,
                opacity: 0.2,
                image: AssetImage("2.jpg"),
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
            height: MediaQuery.of(context).size.height / 3.5,
            width: MediaQuery.of(context).size.width / 1.2,
            child: const Padding(
              padding: EdgeInsets.all(50.0),
              child: Text(
                "No Live Class Detected. Please try again at the class hour",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 9, 162, 144),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
              ),
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
