import 'package:flutter/material.dart';
import 'package:hciminiproj/Screens/HomePage/AttendanceReport.dart';
import 'package:hciminiproj/Screens/HomePage/unknownface.dart';

class CaptureImage extends StatefulWidget {
  const CaptureImage({Key? key}) : super(key: key);

  @override
  State<CaptureImage> createState() => _CaptureImageState();
}

class _CaptureImageState extends State<CaptureImage> {
  bool imageCapture = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Face Scanner"),
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Unknown()));
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
