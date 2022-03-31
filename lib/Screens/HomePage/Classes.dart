import 'package:flutter/material.dart';
import 'package:hciminiproj/Screens/HomePage/captureimage.dart';
import 'package:hciminiproj/Screens/HomePage/class1.dart';
import 'package:hciminiproj/Screens/HomePage/noLiveclass.dart';

class Classes extends StatelessWidget {
  final bool value;
  const Classes({Key? key, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("My Classes"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Column(children: [
              Container(
                height: 70,
                width: MediaQuery.of(context).size.width / 1.2,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 75, 192, 85),
                  border: Border.all(
                    color: const Color.fromARGB(255, 45, 102, 247),
                    width: 0.4,
                  ), //Border.all
                  borderRadius: BorderRadius.circular(15),
                  //BoxShadow
                ),
                child: ListTile(
                    leading: const Icon(
                      Icons.book,
                      color: Colors.white,
                    ),
                    title: const Text(
                      "COMP 341-Happening Now",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 238, 238, 238)),
                    ),
                    subtitle: const Padding(
                      padding: EdgeInsets.only(left: 60.0),
                      child: Text(
                        "by Dr. Susil Shrestha",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 238, 238, 238)),
                      ),
                    ),
                    onTap: () {
                      if (value) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CaptureImage()));
                      } else {
                        final snackBar = SnackBar(
                          backgroundColor:
                              const Color.fromARGB(255, 20, 45, 65),
                          content: const Text(
                            'Connect the VPN to join the Live class!',
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.red),
                          ),
                          action: SnackBarAction(
                            label: 'Undo',
                            onPressed: () {},
                          ),
                        );

                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }
                    }),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                height: 65,
                width: MediaQuery.of(context).size.width / 1.2,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 4, 109, 194),
                  border: Border.all(
                    color: const Color.fromARGB(255, 45, 102, 247),
                    width: 0.4,
                  ), //Border.all
                  borderRadius: BorderRadius.circular(15),
                  //BoxShadow
                ),
                child: ListTile(
                    leading: const Icon(
                      Icons.book,
                      color: Colors.white,
                    ),
                    title: const Text(
                      "COMP 314",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 238, 238, 238)),
                    ),
                    subtitle: const Padding(
                      padding: EdgeInsets.only(left: 60.0),
                      child: Text(
                        "by Dr. Rajani Chulyadyo",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 238, 238, 238)),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const NoLiveClass()));
                    }),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                height: 65,
                width: MediaQuery.of(context).size.width / 1.2,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 4, 109, 194),
                  border: Border.all(
                    color: const Color.fromARGB(255, 45, 102, 247),
                    width: 0.4,
                  ), //Border.all
                  borderRadius: BorderRadius.circular(15),
                  //BoxShadow
                ),
                child: ListTile(
                    leading: const Icon(
                      Icons.book,
                      color: Colors.white,
                    ),
                    title: const Text(
                      "COMP 342",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 238, 238, 238)),
                    ),
                    subtitle: const Padding(
                      padding: EdgeInsets.only(left: 60.0),
                      child: Text(
                        "by Mr. Dhiraj Shrestha",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 238, 238, 238)),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const NoLiveClass()));
                    }),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                height: 65,
                width: MediaQuery.of(context).size.width / 1.2,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 4, 109, 194),
                  border: Border.all(
                    color: const Color.fromARGB(255, 45, 102, 247),
                    width: 0.4,
                  ), //Border.all
                  borderRadius: BorderRadius.circular(15),
                  //BoxShadow
                ),
                child: ListTile(
                    leading: const Icon(
                      Icons.book,
                      color: Colors.white,
                    ),
                    title: const Text(
                      "COMP 304",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 238, 238, 238)),
                    ),
                    subtitle: const Padding(
                      padding: EdgeInsets.only(left: 60.0),
                      child: Text(
                        "by Mr. Amrit Dahal",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 238, 238, 238)),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const NoLiveClass()));
                    }),
              ),
            ]),
          ),
        ));
  }
}
