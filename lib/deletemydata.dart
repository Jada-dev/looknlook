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
              fontSize: 20, fontWeight: FontWeight.w500, color: Colors.blue),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
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
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(right: 30, top: 100, left: 25),
          child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red)),
            onPressed: () {},
            child: Text(
              "        Delete My  Data                        ",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.1,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
