import 'package:flutter/material.dart';
import 'package:looknlook/thumbup.dart';

import 'opctionscreen.dart';

class content extends StatefulWidget {
  final String? src;
  content({Key? key, this.src}) : super(key: key);

  @override
  State<content> createState() => _contentState();
}

class _contentState extends State<content> {
  bool _thumbup = false;
  bool _thumbdown = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.network(
          widget.src.toString(),
          fit: BoxFit.cover,
        ),
        if (_thumbup)
          Center(
            child: thumbup(),
          ),
        opctionscreen(),
      ],
    );
  }
}
