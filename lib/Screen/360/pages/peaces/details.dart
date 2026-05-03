

// ignore_for_file: prefer_typing_uninitialized_variables, strict_top_level_inference, camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class detailspeace extends StatelessWidget {
  final title;
  final darkThemFontColor;
  final widthpage;
  final subtitle;
  final VoidCallback? onPressed;
  final isEditingGev = false;
  final isEditingVirifide = false;
  final isEditingWork = false;
  final isEditingSex = false;
  final isEditingDep = false;
  final isEditingNum = false;
  const detailspeace(
    {
      super.key,
      required this.title,
      required this.onPressed,
      required this.darkThemFontColor,
      required this.widthpage,
      required this.subtitle,
      }
    );

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      child: Column(
        children: [
          Container(
                  child: ListTile(
                    title: Text(
                      "$title",
                      textAlign: TextAlign.right,
                      style: GoogleFonts.rubik(
                        fontSize: widthpage * 0.04,
                        fontWeight: FontWeight.w700,
                        color: darkThemFontColor
                      ),
                    ),

                    subtitle: Text(
                      "$subtitle",
                      textAlign: TextAlign.right,
                      style: GoogleFonts.rubik(
                        fontSize: widthpage * 0.03,
                        fontWeight: FontWeight.w700,
                        color: darkThemFontColor
                      ),
                    ),

                    onLongPress: onPressed,
                    onTap: (){
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("أضغط مطولاً لكي تعدل"),
                                      duration: Duration(seconds: 3),
                                      backgroundColor: darkThemFontColor,
                        ),
                      );
                    },
                  )
                ),
        ],
      ),
    );
  }
}