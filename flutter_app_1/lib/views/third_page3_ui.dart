import 'package:flutter/material.dart';

class ThirdPage3UI extends StatelessWidget {
  const ThirdPage3UI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: Center(
        child: Icon(
          Icons.baby_changing_station,
          color: Colors.white,
          size: 100.0,
        ),
      ),
    );
  }
}
