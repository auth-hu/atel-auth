// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, strict_top_level_inference, empty_constructor_bodies

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class usernameField600 extends StatelessWidget {

  final fieldTitle;
  final darkThemFontColor;
  final widthPage;
  final darkThemborder;
  final darkThemerrorborder;
  final controller;
  final hint;
  final bool isTrue;
  final Function(String)? onChanged;

  const usernameField600(
  {
    super.key,
    required this.fieldTitle,
    required this.darkThemFontColor,
    required this.widthPage,
    required this.isTrue,
    required this.darkThemborder,
    required this.darkThemerrorborder,
    required this.controller,
    required this.hint,
    this.onChanged,
  }
  );


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: 24,
        left: 24,
        bottom: 8,
        top: 8
      ),
      child: Column(
        children: [
          Container(
            alignment: AlignmentDirectional.centerEnd,
            margin: EdgeInsets.only(bottom: 6, right: 12),
            child: Text("$fieldTitle",
            style: GoogleFonts.rubik(
              color: darkThemFontColor,
              fontSize: widthPage * 0.02,
              fontWeight: FontWeight.w500,
            ),
            ),
          ),
          TextFormField(
            controller: controller,
            onChanged: (value) {
                    onChanged?.call(value); // مهم
                  },
            autovalidateMode: AutovalidateMode.onUserInteraction,
            obscureText: isTrue,
            maxLines: 1,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              hint: Text("$hint",
              textAlign: TextAlign.right,
              style: GoogleFonts.rubik(
                color:darkThemFontColor 
              ),
              ),
              contentPadding: EdgeInsets.all(8),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide(
                  color: darkThemborder,
                  width: BorderSide.strokeAlignCenter,
                )
              ),
               enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide(
                  color: darkThemborder,
                  width: BorderSide.strokeAlignCenter,
                )
              ),
               focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide(
                  color: darkThemborder,
                  width: BorderSide.strokeAlignCenter,
                )
              ),
               errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide(
                  color: darkThemerrorborder,
                  width: BorderSide.strokeAlignCenter,
                )
              )
            ),

            validator: (value) {
              if(value!.isEmpty){
                  return "هذا الحقل مطلوب";
                }
              return null;
            },
        ),
        ],
      )
    );
  }
}