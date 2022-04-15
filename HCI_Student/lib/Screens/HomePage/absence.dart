import 'package:flutter/material.dart';
import 'package:hciminiproj/Screens/HomePage/home.dart';
import 'package:hciminiproj/Screens/SuppportUI/dropdown.dart';

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
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/6.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Dropdown(),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextFormField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  fillColor: Colors.grey,
                  focusColor: Colors.grey,
                  contentPadding: EdgeInsets.only(
                    bottom: 150,
                    left: 5,
                  ),
                  hintText:
                      'Enter The Reasons of absence to resepective\nsubject teacher',
                ),
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
                      padding:  EdgeInsets.only(left:60.0),
                      child:  Text(
                        'Application Sent',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                    ),
                    duration: const Duration(milliseconds: 1000), 
                    action: SnackBarAction(
                      label: '',
                      onPressed: () {
                         
                      },
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
            
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Home()));
                },
                child: const Text("Send Message"))
          ],
        ),
      ),
    );
  }
}
