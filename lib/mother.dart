import 'package:flutter/material.dart';
import 'package:looknlook/bottom.dart';
import 'package:looknlook/contentscreen.dart';

import 'package:card_swiper/card_swiper.dart';

class mother extends StatefulWidget {
  const mother({Key? key}) : super(key: key);

  @override
  State<mother> createState() => _motherState();
}

class _motherState extends State<mother> {
  late int selectedRadio;

  @override
  void initState() {
    super.initState();
    selectedRadio = 1;
  }

  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  final List<String> videos = [
    'https://picsum.photos/id/237/200/300',
    'https://picsum.photos/seed/picsum/200/300'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      // title: Text('Look & Look'),
      // actions: [
      //   //PopupMenuButton<int>(
      //      //  color: Colors.blue,
      //       itemBuilder: (context) => [
      //             PopupMenuItem<int>(
      //                 value: 0,
      //                 child: Row(
      //                   children: [
      //                     Radio(
      //                       value: 0,
      //                       groupValue: selectedRadio,
      //                       onChanged: (value) {
      //                         print("Radio $value");
      //                         //  setSelectedRadio(int.parse(value.toString()));
      //                         setState(() {
      //                           selectedRadio = int.parse(value.toString());
      //                         });
      //                       },
      //                     ),
      //                     Text(
      //                       'Location',
      //                       style: TextStyle(color: Colors.white),
      //                     ),
      //                   ],
      //                 )),
      //             PopupMenuItem<int>(
      //                 value: 1,
      //                 child: Row(
      //                   children: [
      //                     Radio(
      //                       value: 1,
      //                       groupValue: selectedRadio,
      //                       onChanged: (value) {
      //                         print("Radio $value");
      //                         // setSelectedRadio(int.parse(value.toString()));
      //                         setState(() {
      //                           selectedRadio = int.parse(value.toString());
      //                         });
      //                       },
      //                     ),
      //                     Text(
      //                       'Contacts',
      //                       style: TextStyle(color: Colors.white),
      //                     ),
      //                   ],
      //                 )),
      //             PopupMenuItem<int>(
      //               value: 2,
      //               child: Row(
      //                 children: [
      //                   Radio(
      //                     value: 2,
      //                     groupValue: selectedRadio,
      //                     onChanged: (value) {
      //                       print("Radio $value");
      //                       //setSelectedRadio(int.parse(value.toString()));
      //                       setState(() {
      //                         selectedRadio = int.parse(value.toString());
      //                       });
      //                     },
      //                   ),
      //                   Text(
      //                     'All',
      //                     style: TextStyle(color: Colors.white),
      //                   ),
      //                 ],
      //               ),
      //             ),
      //           ]),
      // ],
      // ),
      body: SafeArea(
          child: Container(
        child: Stack(
          children: [
            Swiper(
              itemBuilder: (BuildContext context, int index) {
                return content(
                  src: videos[index],
                );
              },
              itemCount: videos.length,
              scrollDirection: Axis.vertical,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'look & look',
                    style: TextStyle(fontSize: 22, color: Colors.blue),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}

swiper() {}
