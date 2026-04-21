// ignore_for_file: avoid_unnecessary_containers, prefer_typing_uninitialized_variables, strict_top_level_inference, empty_constructor_bodies

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class gisterClick600 extends StatelessWidget {

  final darkThemFontColor;
  final isUnderline;
  final text;
  final VoidCallback? onTap;

  const gisterClick600(
  {
    super.key,
    required this.darkThemFontColor,
    required this.isUnderline,
    required this.text,
    required this.onTap,
  }
  );


  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
              onTap: onTap,
              child: Text(
              "$text",
              style: GoogleFonts.rubik(
              color:darkThemFontColor,
              fontSize: 16,
              fontWeight: FontWeight.w500,
              decoration: isUnderline == true ? TextDecoration.underline : TextDecoration.none,
              decorationThickness: 1.3,
              decorationColor: darkThemFontColor
           ),
         ),
       ),
    );
  }
}