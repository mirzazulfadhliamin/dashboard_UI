import 'package:flutter/material.dart';

class textKu extends StatelessWidget {
  String text;
  double size;
  FontWeight fontWeight;
  Color color;
  int maxLine;

  textKu(
      {super.key,
      required this.text,
      this.size = 16.0,
      this.fontWeight = FontWeight.normal,
      this.color = Colors.black,
      this.maxLine = 3});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLine,
      style: TextStyle(fontSize: size, fontWeight: fontWeight, color: color),
      // overflow: TextOverflow.ellipsis,
    );
  }
}
