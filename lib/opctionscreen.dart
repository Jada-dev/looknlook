import 'package:flutter/material.dart';
import 'package:looknlook/thumbup.dart';
import 'package:share_plus/share_plus.dart';

class opctionscreen extends StatefulWidget {
  const opctionscreen({Key? key}) : super(key: key);

  @override
  State<opctionscreen> createState() => _opctionscreenState();
}

class _opctionscreenState extends State<opctionscreen> {
  bool _thumbup = false;
  bool _thumbdown = false;
  bool _favorite = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              height: 35,
              width: 100,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  if (_thumbdown == true) {
                  } else {
                    _thumbup = !_thumbup;
                  }
                });
              },
              child: Column(
                children: [
                  Icon(Icons.thumb_up,
                      size: 25,
                      color: _thumbup == false ? Colors.white : Colors.red),
                  Text(
                    "Like",
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 35,
              width: 100,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  if (_thumbup == true) {
                  } else {
                    _thumbdown = !_thumbdown;
                  }
                });
              },
              child: Column(
                children: [
                  Icon(Icons.thumb_down_alt_sharp,
                      size: 25,
                      color: _thumbdown == false ? Colors.white : Colors.red),
                  Text(
                    "Dislike",
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 35,
              width: 100,
            ),
            GestureDetector(
              onTap: () {
                Share.share('check out my website https://example.com');
              },
              child: Column(
                children: [
                  Icon(
                    Icons.send,
                    size: 25,
                    color: Colors.white,
                  ),
                  Text(
                    "Share",
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 35,
              width: 100,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _favorite = !_favorite;
                });
              },
              child: Column(
                children: [
                  Icon(Icons.bookmarks_outlined,
                      size: 25,
                      color: _favorite == false ? Colors.white : Colors.red),
                  Text(
                    "Save",
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 35,
              width: 100,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(width: 4, color: Colors.white),
                  boxShadow: [
                    BoxShadow(
                        spreadRadius: 2,
                        blurRadius: 10,
                        color: Colors.black.withOpacity(0.1))
                  ],
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage('')),
                ),
              ),
            ),
            SizedBox(
              height: 35,
              width: 100,
            ),
          ],
        ),
      ],
    );
  }
}
