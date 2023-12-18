import 'package:flutter/material.dart';

class save extends StatefulWidget {
  const save({Key? key}) : super(key: key);

  @override
  State<save> createState() => _saveState();
}

class _saveState extends State<save> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(top: 80),
            child: Text(
              "Saved Videos Appear Here",
              style: TextStyle(color: Colors.black87, fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
