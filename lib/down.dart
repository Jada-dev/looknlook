import 'package:flutter/material.dart';

class down extends StatefulWidget {
  const down({Key? key}) : super(key: key);

  @override
  State<down> createState() => _downState();
}

class _downState extends State<down> {
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
                ? Icon(
                    Icons.thumb_down,
                    size: 110,
                  )
                : SizedBox(),
      ),
    );
  }
}
