import 'package:flutter/material.dart';
import 'package:hciminiproj/Screens/HomePage/AttendanceReport.dart';

class CaptureImage extends StatefulWidget {
  const CaptureImage({Key? key}) : super(key: key);

  @override
  State<CaptureImage> createState() => _CaptureImageState();
}

class _CaptureImageState extends State<CaptureImage> {
  bool imageCapture = false;
  var timeStamp = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Face Scanner"),
        backgroundColor: const Color.fromARGB(255, 6, 200, 142),
        centerTitle: true,
      ),
      body: Column(children: [
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
          padding: const EdgeInsets.only(left: 16.0),
          child: Container(
            height: 50,
            color: Colors.white,
            child: ListView(
              children: [
                SwitchListTile(
                    title: const Text(
                      "Toggle for correct face detection",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
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
          height: 20,
        ),
        ElevatedButton(
            onPressed: () {
              if (imageCapture) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AttendanceReport()));
              } else {
                final snackBar = SnackBar(
                  backgroundColor: const Color.fromARGB(255, 20, 45, 65),
                  content: Text(
                    'Face Atrtendance Error, at : $timeStamp ',
                    style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                  action: SnackBarAction(
                    label: 'Email',
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Container(
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 235, 4, 4),
                                border:
                                    Border.all(width: 2.0, color: Colors.black),
                                borderRadius: BorderRadius.circular(20)),
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 75),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Emailed to Instructor!'),
                            ),
                          ),
                          backgroundColor: Colors.transparent,
                          elevation: 1000,
                          behavior: SnackBarBehavior.floating));
                    },
                  ),
                );

                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }
            },
            child: const Text(
              "Present",
              style: TextStyle(
                fontSize: 24,
              ),
            )),
      ]),
    );
  }
}
