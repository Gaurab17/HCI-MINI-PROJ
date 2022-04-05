import 'package:flutter/material.dart';
import 'package:hciteacher/Screens/firstclass.dart';
import 'package:hciteacher/Support/const.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Smart Attendance"),
        centerTitle: true,
        leading: const Icon(Icons.menu),
        backgroundColor: topColor,
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          const Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(Icons.person),
          )
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 38,
          ),
          GestureDetector(
              child: Center(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      opacity: 0.7,
                      image: AssetImage("assets/images/try.jpg"),
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
                  height: MediaQuery.of(context).size.height / 5,
                  width: MediaQuery.of(context).size.width / 1.1,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(bottom: 8.0),
                          child: Text(
                            "COMP 341",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(221, 21, 20, 20)),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text(
                          "BCE Block-10, ROOM 402",
                          style: TextStyle(
                              color: Color.fromARGB(221, 21, 20, 20),
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "9 -11AM",
                          style: TextStyle(
                              color: Color.fromARGB(221, 21, 20, 20),
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        )
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
          GestureDetector(
              child: Center(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      opacity: 0.7,
                      image: AssetImage("assets/images/try.jpg"),
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
                  height: MediaQuery.of(context).size.height / 5,
                  width: MediaQuery.of(context).size.width / 1.1,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(bottom: 8.0),
                          child: Text(
                            "COMP 311",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(221, 21, 20, 20)),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text(
                          "BCS Block-10, ROOM 301",
                          style: TextStyle(
                              color: Color.fromARGB(221, 21, 20, 20),
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "12 -2pM",
                          style: TextStyle(
                              color: Color.fromARGB(221, 21, 20, 20),
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              onTap: () {}),
          const SizedBox(
            height: 40,
          ),
          GestureDetector(
              child: Center(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      opacity: 0.7,
                      image: AssetImage("assets/images/try.jpg"),
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
                  height: MediaQuery.of(context).size.height / 5,
                  width: MediaQuery.of(context).size.width / 1.1,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(bottom: 8.0),
                          child: Text(
                            "COMP 314",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(221, 21, 20, 20)),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text(
                          "BCE Block-9, ROOM 401",
                          style: TextStyle(
                              color: Color.fromARGB(221, 21, 20, 20),
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "2 -4pM",
                          style: TextStyle(
                              color: Color.fromARGB(221, 21, 20, 20),
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              onTap: () {})
        ],
      ),
    );
  }
}
