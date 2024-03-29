import 'package:flutter/material.dart';

class Help extends StatelessWidget {
  const Help({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Help"),
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
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Container(
            color: Colors.white,
            child: const Text(
              "Help and Guides For attendance \n \n1. First, connect to the VPN. \n \n2. Then, tap the icon that includes ‘happening now’ on the home page.\n \n3. Click on ‘Do Attendance’. Scan your face and press “Present”. It's done.\n \n4. For attendance data, simply log in with your student account, and press the course whose data you want to see. Then press ‘ Your Attendance Data’.\n \n5. For Leave message: On the home page, go to the side menu. Press ‘Leave Application. Fill up the form and the message. Press ‘send message",
              style: TextStyle(
                fontSize: 18,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
        ));
  }
}
