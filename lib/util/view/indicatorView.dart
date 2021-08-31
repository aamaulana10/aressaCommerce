import 'package:flutter/material.dart';

class IndicatorView extends StatelessWidget {
  final int positionIndex, currentIndex;
  final Color color;
  final double width;
  final double height;

  const IndicatorView({this.currentIndex, this.positionIndex, this.color, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 4, right: 4),
      height: height,
      width: width,
      decoration: BoxDecoration(
        // border: Border.all(color: Colors.blue),
          color: positionIndex == currentIndex
              ? color
              : Colors.grey.withOpacity(0.3),
          shape: BoxShape.circle),
    );
  }
}