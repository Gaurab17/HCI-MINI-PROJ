import 'package:flutter/material.dart';
import 'package:hciteacher/Screens/firstclass.dart';
import 'package:hciteacher/Screens/home.dart';
import 'package:hciteacher/Support/const.dart';

class Leave extends StatelessWidget {
  const Leave({Key? key}) : super(key: key);

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
        color: background,
        child: Column(
          children: [
            const SizedBox(
              height: 18,
            ),
            GestureDetector(
                child: Center(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
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
                    height: MediaQuery.of(context).size.height / 2.3,
                    width: MediaQuery.of(context).size.width / 1.1,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(bottom: 8.0),
                            child: Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Text(
                                "Respected Sir,\n \n   Today I'm unable to attend my regular class due to health issue. I hope you will understand and kindly grant me a day leave. \nThank You\n\nYour's Sincerely, \nBisheshwor Neupane \nRoll No:4",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(221, 21, 20, 20)),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
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
                          builder: (context) => const Firstclass()));
                }),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Home()));
              },
              child: const Text(
                'Received',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 9, 162, 144),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
