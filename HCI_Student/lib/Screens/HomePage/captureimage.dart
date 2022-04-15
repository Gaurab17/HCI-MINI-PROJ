import 'package:flutter/material.dart';
import 'package:hciminiproj/Screens/HomePage/AttendanceReport.dart';

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
            style: ElevatedButton.styleFrom(
              primary: const Color.fromARGB(255, 9, 162, 144),
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
                final snackBar = SnackBar(
                  backgroundColor: Colors.red,
                  content: SizedBox(
                      height: 40.0,
                        child:Padding(
                      padding:  const EdgeInsets.only(left:60.0),
                      child:  Text(
                        'Face Attendance Error, Emailed at : $timeStamp',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                    ),),
                  
            
                  duration: const Duration(milliseconds: 1500),
                  action: SnackBarAction(
                    label: '',
                    onPressed: () {},
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
