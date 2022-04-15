import 'package:flutter/material.dart';
import 'package:hciteacher/Screens/absentdata.dart';
import 'package:hciteacher/Screens/attendanceError.dart';
import 'package:hciteacher/Screens/totalPresents.dart';
import 'package:hciteacher/Support/const.dart';

class TotalInformation extends StatelessWidget {
  const TotalInformation({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("COMP 341-Attendance Log"),
        centerTitle: true,
        backgroundColor: topColor,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 48,
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
                  width: MediaQuery.of(context).size.width / 1.3,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 14),
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                         const Padding(
                          padding:  EdgeInsets.only(bottom: 8.0),
                          child:  Text(
                            "Total Presents",
                            style:  TextStyle(
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
                 Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const TotalPresents()));
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
                  width: MediaQuery.of(context).size.width / 1.3,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 14),
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(bottom: 8.0),
                          child: Text(
                            "Total Absents",
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const History()));
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
                  width: MediaQuery.of(context).size.width / 1.3,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 14),
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(bottom: 8.0),
                          child: Text(
                            "Total Attendance Errors",
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
                        builder: (context) => const ErrorAttendance()));
              }),
              const SizedBox(
              height: 18,
            ),
              Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                height: 3,
                width: MediaQuery.of(context).size.width/1.3,
                color: const Color.fromARGB(255, 42, 42, 42),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Center(
                child: Text(
              "Total: 2 present 3 absent 1 error",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
            ))
        ],
      ),
    );
  }
}