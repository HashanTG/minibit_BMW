import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class poppins_custontext extends StatelessWidget {
  final String text;
  final double fontsize;
  final FontWeight fweight;
  final Color color;
  final TextOverflow textOverflow;
  const poppins_custontext({
    required this.text,
    this.fontsize = 24,
    this.textOverflow = TextOverflow.visible,
    this.fweight = FontWeight.w500,
    this.color = Colors.black,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
          fontSize: fontsize, fontWeight: fweight, color: color),
      overflow: TextOverflow.ellipsis,
    );
  }
}
