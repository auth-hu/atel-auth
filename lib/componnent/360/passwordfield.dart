// ignore_for_file: prefer_typing_uninitialized_variables, strict_top_level_inference, empty_constructor_bodies

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Passwordfield extends StatelessWidget {

  final fieldTitle;
  final darkThemFontColor;
  final widthPage;
  final darkThemborder;
  final darkThemerrorborder;
  final controller;
  final hint;
  final bool isTrue;
  final bool showIcon;
  final VoidCallback? onPressed;

  const Passwordfield(
  {
    super.key,
    required this.fieldTitle,
    required this.darkThemFontColor,
    required this.widthPage,
    required this.isTrue,
    required this.darkThemborder,
    required this.darkThemerrorborder,
    required this.controller,
    required this.showIcon,
    required this.hint,
    required this.onPressed,
  }
  );


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: 12,
        left: 12
      ),
      child: Column(
        children: [
          Container(
            alignment: AlignmentDirectional.centerEnd,
            margin: EdgeInsets.only(bottom: 6, right: 12),
            child: Text("$fieldTitle",
            style: GoogleFonts.rubik(
              color: darkThemFontColor,
              fontSize: widthPage * 0.03,
              fontWeight: FontWeight.w500,
            ),
            ),
          ),
          TextFormField(
            controller: controller,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            obscureText: isTrue,
            maxLines: 1,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              prefixIcon: showIcon == true ? 
              IconButton(onPressed: onPressed, icon: Icon(
                isTrue == true ? Icons.visibility : Icons.visibility_off,
                color: darkThemFontColor,
              )
              )
              : null 
              ,
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
              final usernameval = RegExp(r'^[\u0600-\u06ff\s]+$');
                if(usernameval.hasMatch(value!)){
                  return "هذا الحقل لا يجب ان يحتوي الحروف العربية";
                }if(value.isEmpty){
                  return "هذا الحقل مطلوب";
                }if(value.isEmpty){
                  return "هذا الحقل مطلوب";
                }if(value.length < 8){
                  return "هذا الحقل يجب ان يحتوي على 8 حروف أو ارقام";
                }
              return null;
            },
        ),
        ],
      )
    );
  }
}