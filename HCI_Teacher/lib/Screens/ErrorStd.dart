import 'package:flutter/material.dart';

class ErrorImage extends StatefulWidget {
  const ErrorImage({Key? key}) : super(key: key);

  @override
  State<ErrorImage> createState() => _ErrorImageState();
}

class _ErrorImageState extends State<ErrorImage> {
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
            'assets/images/nodetect.jpg',
            height: 300,
            width: 300,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: const Color.fromARGB(255, 9, 162, 144),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
            ),
            onPressed: () {
              final snackBar = SnackBar(
                backgroundColor: const Color.fromARGB(255, 15, 215, 122),
                content: const Padding(
                  padding: EdgeInsets.only(left: 76.0),
                  child: Text(
                    'Attendance done Successfully',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 255, 247, 247)),
                  ),
                ),
                action: SnackBarAction(
                  label: '',
                  onPressed: () {},
                ),
              );

              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: const Text(
              "Record as Present",
              style: TextStyle(
                fontSize: 24,
              ),
            )),
      ]),
    );
  }
}
