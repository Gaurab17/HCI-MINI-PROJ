import 'package:flutter/material.dart';
import 'package:hciminiproj/Screens/home.dart';
import 'package:hciminiproj/Screens/register.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
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
                  'Login to Smart Attendance',
                  style: TextStyle(
                      fontSize: 28,
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
              GestureDetector(
                  child: const Padding(
                    padding: EdgeInsets.only(left: 230.0),
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w900,
                          color: Color(0xFF0724fa)),
                    ),
                  ),
                  onTap: () {}),
              const SizedBox(height: 18),
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
                      'Login',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      side: const BorderSide(width: 2.0, color: Colors.blue),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              // Text(error, style: const TextStyle(color: Colors.red)),

              const Text(
                "Doesn't have an account?",
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
                      color: Color(0xFF0724fa)),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const SignUp()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
