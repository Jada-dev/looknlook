import 'package:flutter/material.dart';

class aboutlook extends StatefulWidget {
  const aboutlook({Key? key}) : super(key: key);

  @override
  State<aboutlook> createState() => _aboutlookState();
}

class _aboutlookState extends State<aboutlook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'About  Look&Look',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w500, color: Colors.blue),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.green,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, right: 10, left: 5),
        child: SingleChildScrollView(
          child: Text.rich(
            TextSpan(
                text: 'Look & Look',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
                children: [
                  TextSpan(
                    text:
                        " /nexists for people to create and share their own video content,and to discover the world with the Look&Look. Look&Look user , you have the freedom to share your creativity and experence with othwer Look&Look user ,meaning, we are trusting you to be responsible with your content.some of the rules are the necessary to keep Look&Look users safe and comfortable.",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.normal),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
