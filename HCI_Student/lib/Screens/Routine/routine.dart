import 'package:flutter/material.dart';

class Routine extends StatelessWidget {
  const Routine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.2,
      width: MediaQuery.of(context).size.height / 1.1,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/routine.jpg"),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
