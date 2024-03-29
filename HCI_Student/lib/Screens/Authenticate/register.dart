import 'package:flutter/material.dart';
import 'package:hciminiproj/Screens/HomePage/home.dart';
import 'package:hciminiproj/Screens/Authenticate/login.dart';
import 'package:hciminiproj/services/const.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SingleChildScrollView(
        child: Form(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Center(
                child: Image.asset(
                  'assets/images/signup.gif',
                  height: 300,
                  width: 300,
                ),
              ),
              const Center(
                child: Text(
                  'Register to Smart Attendance',
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0, right: 12),
                child: TextFormField(
                  onChanged: (val) {},
                  decoration: InputDecoration(
                      hintText: 'Student Email ',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16))),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0, right: 12),
                child: TextFormField(
                  validator: (val) =>
                      val!.length < 6 ? 'Enter chars more than 6' : null,
                  obscureText: true,
                  onChanged: (val) {},
                  decoration: InputDecoration(
                      hintText: 'Password ',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16))),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Home()));
                    },
                    child: const Text(
                      'Register',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: buttonColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                "Already have an account?",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              GestureDetector(
                child: const Text(
                  'Click here',
                  // ignore: unnecessary_const
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w900,
                      color: Color.fromARGB(255, 63, 164, 205)),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const SignIn()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
