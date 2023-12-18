import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Rating extends StatefulWidget {
  final int maximumRating;

  Rating([this.maximumRating = 5]);

  @override
  _Rating createState() => _Rating();
}

class _Rating extends State<Rating> {
  int _currentRating = 0;

  Widget _buildRatingStar(int index) {
    if (index < _currentRating) {
      return Icon(
        Icons.star,
        color: Colors.red,
        size: 50,
      );
    } else {
      return Icon(
        Icons.star_border_outlined,
        color: Colors.grey,
        size: 50,
      );
    }
  }

  Widget _builBody() {
    final stars = List<Widget>.generate(this.widget.maximumRating, (index) {
      return GestureDetector(
        child: _buildRatingStar(index),
        onTap: () {
          setState(() {
            _currentRating = index + 1;
          });
          print(_currentRating);
          // this.widget.onRatingSelected(_currentRating);
        },
      );
    });

    return Row(children: stars, mainAxisAlignment: MainAxisAlignment.center);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: _builBody()));
  }
}
