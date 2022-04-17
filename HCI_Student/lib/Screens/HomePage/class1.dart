import 'package:flutter/material.dart';
import 'package:hciminiproj/Screens/HomePage/AttendanceReport.dart';
import 'package:hciminiproj/Screens/HomePage/captureimage.dart';
import 'package:hciminiproj/services/const.dart';
// import 'package:hciminiproj/Screens/captureimage.dart';

import 'attendancehistory.dart';

class Selectedclass extends StatefulWidget {
  const Selectedclass({Key? key}) : super(key: key);

  @override
  State<Selectedclass> createState() => _SelectedclassState();
}

class _SelectedclassState extends State<Selectedclass> {
  bool vpn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("COMP 341"),
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
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Container(
        color: background,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: background,
            child: Column(children: [
              Container(
                height: 65,
                width: MediaQuery.of(context).size.width / 1.2,
                color: background,
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
                color: background,
                child: const Text(
                  "-By Sushil Shrestha",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Column(
                children: [
                  Center(
                    child: vpn
                        ? Image.asset(
                            'assets/images/wifi.gif',
                            height: 200,
                            width: 200,
                          )
                        : Image.asset(
                            'assets/images/no.png',
                            height: 200,
                            width: 200,
                          ),
                  ),
                  Text(
                    vpn ? " Connected" : "Not Connected",
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 43, 38, 38),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: SwitchListTile(
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
              ),
              const SizedBox(
                height: 20,
              ),
              vpn
                  ? Container(
                      height: 55,
                      width: MediaQuery.of(context).size.width / 1.3,
                      decoration: BoxDecoration(
                        color: buttonColor,
                        border: Border.all(
                          color: const Color.fromARGB(255, 136, 163, 232),
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
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                          onTap: () {
                            if (vpn) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const CaptureImage()));
                            } else {
                              final snackBar = SnackBar(
                                backgroundColor: Colors.red,
                                content: const SizedBox(
                                  height: 40.0,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 60.0),
                                    child: Text(
                                      'Connect the vpn to do attendance.',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255)),
                                    ),
                                  ),
                                ),
                                duration: const Duration(milliseconds: 1500),
                                action: SnackBarAction(
                                  label: '',
                                  onPressed: () {},
                                ),
                              );
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                            }
                          }),
                    )
                  : Container(
                      height: 55,
                      width: MediaQuery.of(context).size.width / 1.3,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 126, 223, 191),
                        //Border.all
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
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                          onTap: () {
                            if (vpn) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const CaptureImage()));
                            } else {
                              final snackBar = SnackBar(
                                backgroundColor: Colors.red,
                                content: const SizedBox(
                                  height: 40.0,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 60.0),
                                    child: Text(
                                      'Connect the vpn to do attendance.',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255)),
                                    ),
                                  ),
                                ),
                                duration: const Duration(milliseconds: 1500),
                                action: SnackBarAction(
                                  label: '',
                                  onPressed: () {},
                                ),
                              );
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                            }
                          }),
                    ),
              const SizedBox(
                height: 16,
              ),
              Container(
                height: 55,
                width: MediaQuery.of(context).size.width / 1.3,
                decoration: BoxDecoration(
                  color: buttonColor,
                  border: Border.all(
                    color: const Color.fromARGB(255, 155, 183, 252),
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
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const History()));
                    }),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
