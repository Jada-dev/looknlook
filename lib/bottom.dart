import 'package:flutter/material.dart';
import 'package:looknlook/Save.dart';
import 'package:looknlook/add.dart';
import 'package:looknlook/mother.dart';
import 'package:looknlook/profile.dart';

class bottom extends StatefulWidget {
  const bottom({Key? key}) : super(key: key);

  @override
  State<bottom> createState() => _bottomState();
}

class _bottomState extends State<bottom> {
  int myIndex = 0;
  List king = [mother(),save(), add(), profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: king[myIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
        currentIndex: myIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.blue),

               BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Saved',
              backgroundColor: Colors.blue),
              

              
          BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: 'Add',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              backgroundColor: Colors.blue),
        ],
      ),
    );
  }
}
