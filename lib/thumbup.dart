import 'package:flutter/material.dart';

class thumbup extends StatefulWidget {
  const thumbup({Key? key}) : super(key: key);

  @override
  State<thumbup> createState() => _thumbupState();
}

class _thumbupState extends State<thumbup> {
  get returnFuture => null;

  Future<int> tempFuture() async {
    return Future.delayed(Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder(
        future: tempFuture(),
        builder: (context, snapshot) =>
            snapshot.connectionState != ConnectionState.done
                ? Icon(Icons.thumb_up, size: 110)
                : SizedBox(),
      ),
    );
  }
}
