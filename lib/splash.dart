import 'dart:math';

import 'package:flutter/material.dart';
import 'package:looknlook/home.dart';
import 'package:looknlook/main.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  void _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 5000), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Login()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Center(
        child: Container(
          child: Text(
            'Look & Look',
            style: TextStyle(
                fontSize: 30, color: Colors.blue, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      CircularProgressIndicator(),
      SizedBox(
        height: 100,
      ),
      Column(
        children: [
          Text(
            'Lets keep Look&Look Fun and Original . . .',
            style: TextStyle(color: Colors.blue),
          ),
        ],
      ),
    ]));
  }
}
