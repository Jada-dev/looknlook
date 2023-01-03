import 'package:flutter/material.dart';

import 'package:flutter/semantics.dart';

class contentloc extends StatefulWidget {
  const contentloc({Key? key}) : super(key: key);

  @override
  State<contentloc> createState() => _contentlocState();
}

class _contentlocState extends State<contentloc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Content Location',
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
        padding: const EdgeInsets.only(top: 150, left: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 80,
              width: 120,
              padding:
                  EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 20),
              child: Text(
                "Location",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              decoration: BoxDecoration(
                color: Colors.red,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.vertical(),
              ),
            ),
            Container(
              height: 80,
              width: 120,
              padding:
                  EdgeInsets.only(left: 15, right: 20, bottom: 20, top: 20),
              child: Text(
                "Contacts",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              decoration: BoxDecoration(
                color: Colors.red,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.vertical(),
              ),
            ),
            Container(
              height: 80,
              width: 120,
              padding:
                  EdgeInsets.only(left: 35, right: 20, bottom: 20, top: 20),
              child: Text(
                "All",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              decoration: BoxDecoration(
                color: Colors.red,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.vertical(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
