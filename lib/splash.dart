import 'dart:math';

import 'package:flutter/material.dart';
import 'package:looknlook/bottom.dart';
import 'package:looknlook/home.dart';
import 'package:looknlook/login.dart';
import 'package:looknlook/main.dart';
import 'package:looknlook/tabbar.dart';

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
    await Future.delayed(Duration(milliseconds: 4000), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => bottom()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Center(
        child: Container(
          child: Text(
            'look & look',
            style: TextStyle(
                fontSize: 25, color: Colors.blue, fontWeight: FontWeight.bold),
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
            style: TextStyle(color: Colors.blue,fontSize: 16),
          ),
        ],
      ),
    ]));
  }
}
