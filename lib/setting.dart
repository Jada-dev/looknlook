import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:looknlook/aboutlook.dart';
import 'package:looknlook/bottom.dart';

import 'package:looknlook/contentloc.dart';
import 'package:looknlook/deletemydata.dart';
import 'package:looknlook/editprofile.dart';
import 'package:looknlook/login.dart';
import 'package:looknlook/mother.dart';
import 'package:looknlook/opctionscreen.dart';
import 'package:looknlook/privacy.dart';
import 'package:looknlook/Rating.dart';

class setting extends StatefulWidget {
  const setting({Key? key}) : super(key: key);

  @override
  State<setting> createState() => _settingState();
}

class _settingState extends State<setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.w500, color: Colors.blue),
        ),
        // backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        backgroundColor: Colors.grey[400],
        elevation: 1,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.blue,
          ),
        ),
      ),
      backgroundColor: Colors.grey[400],
      body: Padding(
        padding: const EdgeInsets.only(left: 16, top: 25, right: 16),
        child: Container(
          child: ListView(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Icon(Icons.person, color: Colors.green),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => editprofile()));
                    },
                    child: Text(
                      'Account',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Divider(
                color: Colors.black,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => contentloc()));
                    },
                    child: Text(
                      'Content Location',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Divider(
                color: Colors.black,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => privacy()));
                    },
                    child: Text(
                      'Notifications',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Divider(
                color: Colors.black,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => privacy()));
                    },
                    child: Text(
                      'Privacy',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Divider(
                color: Colors.black,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => deletemydata()));
                    },
                    child: Text(
                      'Delete My Data',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Divider(
                color: Colors.black,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Rating()));
                    },
                    child: Text(
                      'Rate Your Experience',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Divider(
                color: Colors.black,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => aboutlook()));
                    },
                    child: Text(
                      'Rules Of Look & Look',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Divider(
                color: Colors.black,
              ),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red)),
                  onPressed: () {},
                  child: GestureDetector(
                    onTap: () {
                      FirebaseAuth.instance.signOut().then((onvalue) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => login()));
                      });
                    },
                    child: Text(
                      "Sign Out",
                      style: TextStyle(
                          fontSize: 18,
                          letterSpacing: 2.2,
                          color: Colors.white),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
