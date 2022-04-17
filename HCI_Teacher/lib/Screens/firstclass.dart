import 'package:flutter/material.dart';
import 'package:hciteacher/Screens/absentdata.dart';
import 'package:hciteacher/Screens/totalAbsent.dart';
import 'package:hciteacher/Screens/totalData.dart';
import 'package:hciteacher/Screens/totalIssues.dart';
import 'package:hciteacher/Screens/totaltoday.dart';
import 'package:hciteacher/Support/const.dart';

class Firstclass extends StatefulWidget {
  const Firstclass({Key? key}) : super(key: key);

  @override
  State<Firstclass> createState() => _FirstclassState();
}

class _FirstclassState extends State<Firstclass> {
  String attend = "Start Attendance";
  String stop = "The class is running";
  bool isChanged = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("COMP 341"),
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
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: background,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 78,
            ),
            Text(
              stop,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 212, 50, 50)),
            ),
            const SizedBox(
              height: 58,
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
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Text(
                              attend,
                              style: const TextStyle(
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
                  isChanged = !isChanged;
                  setState(() {
                    isChanged == true
                        ? attend = "Start Attendance"
                        : attend = "Stop Attendance";
                    isChanged == true
                        ? stop = 'The Class is being run'
                        : stop = "Time Left : 1Hr 45 mins";
                  });
                  if (isChanged) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TotalInformation()));
                  } else {}
                }),
            const SizedBox(
              height: 38,
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
                              "Absent Information",
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
              height: 38,
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
                              "Attendance Error Data",
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
                          builder: (context) => const TotalIssues()));
                }),
            const SizedBox(
              height: 38,
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
                              "Attendance Data",
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
                          builder: (context) => const TotalAttendanceDatas()));
                }),
          ],
        ),
      ),
    );
  }
}
