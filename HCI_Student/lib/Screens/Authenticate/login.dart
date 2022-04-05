import 'package:flutter/material.dart';
import 'package:hciminiproj/Screens/HomePage/home.dart';
import 'package:hciminiproj/Screens/Authenticate/register.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

String email = "";
String password = "";
String error = "";

class _SignInState extends State<SignIn> {
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
                  onChanged: (val) {
                    setState(() {
                      email = val;
                    });
                  },
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
                  onChanged: (val) {
                    setState(() {
                      password = val;
                    });
                  },
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
                          color: Color.fromARGB(255, 8, 144, 60)),
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
                      if (email == "gaurab@gmail.com" && password == "123456") {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Home()));
                      } else if (email != "gaurab@gmail.com" &&
                          password != "123456") {
                        setState(() {
                          error = 'Enter valid data';
                        });
                      }
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 25,
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
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(error, style: const TextStyle(color: Colors.red)),
              const SizedBox(
                height: 4,
              ),
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
                      color: Color.fromARGB(255, 8, 144, 60)),
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
