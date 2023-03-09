import 'package:flutter/material.dart';

class myvideos extends StatefulWidget {
  const myvideos({Key? key}) : super(key: key);

  @override
  State<myvideos> createState() => _myvideosState();
}

class _myvideosState extends State<myvideos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Videos")),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(top: 40),
            child: Text(
              "Send Spots & Boards Appear Here",
              style: TextStyle(fontSize: 20, color: Colors.blue),
            ),
          ),
       //   SizedBox(
         //   height: 50,
           // width: 50,
          //),
          //Container(
            //padding: EdgeInsets.all(50),
            //child: Icon(
              //Icons.video_collection,
              //size: 50,
              //color: Colors.blue,
            //),
          //)
        ],
      ),
    );
  }
}
