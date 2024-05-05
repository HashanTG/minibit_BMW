import 'package:flutter/material.dart';

// ignore: must_be_immutable
class custombutton extends StatelessWidget {
  final String text;
  final Color textcolor;
  List<Color> colors;
  custombutton({
    required this.colors,
    required this.textcolor,
    required this.text,
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.8,
      height: 60,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          gradient: LinearGradient(colors: colors)),
      child: Center(
        child: Text(text,
            style: TextStyle(
                color: textcolor, fontWeight: FontWeight.w500, fontSize: 30)),
      ),
    );
  }
}
