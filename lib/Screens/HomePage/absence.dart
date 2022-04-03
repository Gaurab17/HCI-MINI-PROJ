import 'package:flutter/material.dart';

class Absence extends StatelessWidget {
  const Absence({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Leave Application"),
        backgroundColor: const Color.fromARGB(255, 6, 200, 142),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.only(
                    bottom: 80,
                    left: 10,
                  ),
                  hintText: 'Enter the Reasons of your absence',
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  final snackBar = SnackBar(
                    backgroundColor: const Color.fromARGB(255, 20, 45, 65),
                    content: const Padding(
                      padding: EdgeInsets.only(left: 60.0),
                      child: Text(
                        'Message Sent',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 59, 169, 73)),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    action: SnackBarAction(
                      label: '',
                      onPressed: () {
                        // Some code to undo the change.
                      },
                    ),
                  );

                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: const Text("Send Message"))
          ],
        ),
      ),
    );
  }
}
