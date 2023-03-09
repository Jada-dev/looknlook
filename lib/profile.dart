import 'package:flutter/material.dart';
import 'package:looknlook/editprofile.dart';
import 'package:looknlook/myvideos.dart';
import 'package:looknlook/setting.dart';

class profile extends StatelessWidget {
  const profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Look & Look',
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.person_add),
        actions: [
          IconButton(
            icon: Icon(Icons.menu_rounded, color: Colors.red),
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext) => setting()));
            },
          )
        ],
      ),
      backgroundColor: Colors.white30,
      body: Column(
        children: [
          // profile photo
          Container(
            height: 120,
            width: 120,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[200],
            ),
          ),
          // username

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              '@createby Indianbull',
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
          ),
          SizedBox(height: 25
          ),
          // number of likes
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  child: Column(
                    children: [
                      Text(
                        '102',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                      Text(
                        'Like',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      SizedBox(
                        height: 5,
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: Column(
                    children: [
                      Text(
                        '22',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                      Text(
                        'Dislike',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      SizedBox(
                        height: 5,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 70,
          ),

          // button -> edit profile ,insta links,bookmark]

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => editprofile()));
                },
                child: Container(
                  padding: EdgeInsets.only(left: 40, right: 30),
                  child: Text('Edit Profile',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold)),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.vertical(),
                  ),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              
              GestureDetector(
                onTap: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => myvideos()));
                 
                },
                child: Container(
                  padding: EdgeInsets.only(right: 40, left: 30),
                  child: Text('Videos',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold)),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.vertical(),
                  ),
                ),
              ),
            ],
          ),
          // bio

          //default tab control
        ],
      ),
    );
  }
}
