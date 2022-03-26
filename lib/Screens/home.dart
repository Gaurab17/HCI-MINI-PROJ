import 'package:flutter/material.dart';
import 'package:hciminiproj/Screens/class1.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Welcome to Smart Attendance System"),
        centerTitle: true,
        elevation: 0.0,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: UserAccountsDrawerHeader(
                accountName: Text('Gaurab Shrestha'),
                accountEmail: Text('gaurabstha001@gmail.com'),
                currentAccountPicture: Center(
                  child: CircleAvatar(
                    radius: 50.0,
                    backgroundColor: Color(0xFF778899),
                    backgroundImage: AssetImage("assets/images/loco.jpeg"),
                  ),
                ),
              ),
            ),
            ListTile(
              title: const Text('My Courses'),
              leading: const Icon(Icons.book_rounded),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Attendance Data'),
              leading: const Icon(Icons.table_chart),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Help'),
              leading: const Icon(Icons.help),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Settings'),
              leading: const Icon(Icons.settings),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Logout'),
              leading: const Icon(Icons.logout_rounded),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Column(children: [
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
                  leading: const Icon(Icons.book),
                  title: const Text(
                    "COMP 341",
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Selectedclass()));
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
                  leading: const Icon(Icons.book),
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
                            builder: (context) => const Selectedclass()));
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
                  leading: const Icon(Icons.book),
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
                            builder: (context) => const Selectedclass()));
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
                  leading: const Icon(Icons.book),
                  title: const Text(
                    "COMP 341",
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Selectedclass()));
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
                  leading: const Icon(Icons.book),
                  title: const Text(
                    "COMP 341",
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Selectedclass()));
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
                  leading: const Icon(Icons.book),
                  title: const Text(
                    "COMP 341",
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Selectedclass()));
                  }),
            ),
          ]),
        ),
      ),
    );
  }
}
