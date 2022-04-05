import 'package:flutter/material.dart';
import 'package:hciteacher/Screens/ErrorStd.dart';
import 'package:hciteacher/Screens/absentdata.dart';
import 'package:hciteacher/Screens/attendancedata.dart';
import 'package:hciteacher/Support/const.dart';

class ErrorAttendance extends StatelessWidget {
  const ErrorAttendance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("COMP 341-Attendance Error"),
        centerTitle: true,
        backgroundColor: topColor,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 38,
          ),
          const Text(
            "Total 3 Attendance Errors",
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          const SizedBox(
            height: 30,
          ),
          GestureDetector(
              child: Center(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
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
                  height: MediaQuery.of(context).size.height / 13,
                  width: MediaQuery.of(context).size.width / 1.4,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 14),
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(bottom: 8.0),
                          child: Text(
                            "Sajan Mahat",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(221, 21, 20, 20)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ErrorImage()));
              }),
          const SizedBox(
            height: 18,
          ),
          GestureDetector(
              child: Center(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
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
                  height: MediaQuery.of(context).size.height / 13,
                  width: MediaQuery.of(context).size.width / 1.4,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 14),
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(bottom: 8.0),
                          child: Text(
                            "Nripesh Karmacharya",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(221, 21, 20, 20)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              onTap: () {}),
          const SizedBox(
            height: 18,
          ),
          GestureDetector(
              child: Center(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
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
                  height: MediaQuery.of(context).size.height / 13,
                  width: MediaQuery.of(context).size.width / 1.4,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 14),
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(bottom: 8.0, left: 12),
                          child: Text(
                            "Sabin Thapa",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(221, 21, 20, 20)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              onTap: () {}),
        ],
      ),
    );
  }
}
