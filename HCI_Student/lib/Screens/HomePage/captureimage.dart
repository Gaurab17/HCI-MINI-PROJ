import 'package:flutter/material.dart';
import 'package:hciminiproj/Screens/HomePage/AttendanceReport.dart';
import 'package:hciminiproj/Screens/HomePage/incorrect.dart';
import 'package:hciminiproj/services/const.dart';

class CaptureImage extends StatefulWidget {
  const CaptureImage({Key? key}) : super(key: key);

  @override
  State<CaptureImage> createState() => _CaptureImageState();
}

class _CaptureImageState extends State<CaptureImage> {
  bool imageCapture = false;
  var timeStamp = DateTime.now().toString().substring(0, 10);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      ),
      body: Container(
        color: background,
        child: Column(children: [
          const SizedBox(
            height: 80,
          ),
          Center(
            child: Image.asset(
              'assets/images/scanner.gif',
              height: 300,
              width: 300,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Container(
              height: 50,
              color: background,
              child: ListView(
                children: [
                  SwitchListTile(
                      title: const Text(
                        "Toggle for correct face detection",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(221, 107, 105, 105)),
                      ),
                      activeColor: Colors.teal,
                      activeTrackColor: Colors.green,
                      value: imageCapture,
                      onChanged: (value) {
                        setState(() {
                          imageCapture = value;
                        });
                      }),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: buttonColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
              ),
              onPressed: () {
                if (imageCapture) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AttendanceReport()));
                } else {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const IncorrectFace()));
                }
              },
              child: const Text(
                "Present",
                style: TextStyle(
                  fontSize: 24,
                ),
              )),
        ]),
      ),
    );
  }
}
