import 'package:flutter/material.dart';

class privacy extends StatefulWidget {
  const privacy({Key? key}) : super(key: key);

  @override
  State<privacy> createState() => _privacyState();
}

class _privacyState extends State<privacy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Privacy',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w500, color: Colors.red),
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
              "     Blocked  Accounts                        ",
              style: TextStyle(
                  fontSize: 22, letterSpacing: 2.2, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
