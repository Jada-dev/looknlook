import 'package:flutter/material.dart';

class deletemydata extends StatefulWidget {
  const deletemydata({Key? key}) : super(key: key);

  @override
  State<deletemydata> createState() => _deletemydataState();
}

class _deletemydataState extends State<deletemydata> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Delete My Data',
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
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(right: 16, top: 80, left: 25),
          child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red)),
            onPressed: () {},
            child: Text(
              "   Delete My  Data                             ",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.2,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
