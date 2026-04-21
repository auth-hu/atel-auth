// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, strict_top_level_inference

import 'package:atel/componnent/360/GisterClick.dart';
import 'package:atel/componnent/600/GisterClick.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class forgotPas600 extends StatelessWidget {

  final darkThemFontColor;
  final widthPage;
  final heightPage;
  final darkThemFalseFontColor;
  final controller;
  final hint;
  final darkThemborder;
  final darkThemerrorborder;

  const forgotPas600 ({
    super.key,
    required this.darkThemFontColor,
    required this.widthPage,
    required this.heightPage,
    required this.darkThemFalseFontColor,
    required this.controller,
    required this.hint,
    required this.darkThemborder,
    required this.darkThemerrorborder,
  });
  
  @override
  Widget build(BuildContext context) {
    return Container(
            margin: EdgeInsets.only(top: 6),
            child: gisterClick600(
            darkThemFontColor: darkThemFontColor,
            isUnderline: true,
            text: "هل نسيت كلمة المرور؟",
            onTap: (){
              showBottomSheet(
                context: context,
                builder: (context) {
                  return Container(
                     decoration: BoxDecoration(
                                  color: darkThemFontColor,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                        )
                      ),
                    width: heightPage,
                    height: heightPage * .4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                         Center(
                           child: Container(
                            decoration: BoxDecoration(
                              color: darkThemFalseFontColor,
                              borderRadius: BorderRadius.all(Radius.circular(50))
                            ),
                            margin: EdgeInsets.only(top: 4),
                            padding: EdgeInsets.all(5),
                            width: 200,
                            height: 5,
                           ),
                         ),
                        Container(
                          margin: EdgeInsets.only(top: 12, right: 18),
                          padding: EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: darkThemFalseFontColor,
                                width: 1.5
                              )
                            )
                          ),
                          child: Text(
                            ":نسيت كلمة المرور",
                            textAlign: TextAlign.right,
                            style: GoogleFonts.rubik(
                              color: darkThemFalseFontColor,
                              fontWeight: FontWeight.w500,
                              fontSize: widthPage * .03
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 12, right: 18, left: 18),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                                Container(
                                  margin: EdgeInsets.only(top: 12, bottom: 8),
                                  child: Text(
                                    ":البريد الألكتروني",
                                    textAlign: TextAlign.right,
                                    style: GoogleFonts.rubik(
                                      color: darkThemFalseFontColor,
                                      fontSize: widthPage * 0.02,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                TextFormField(
                                  controller: controller,
                                  autovalidateMode: AutovalidateMode.onUserInteraction,
                                  maxLines: 1,
                                  textAlign: TextAlign.right,
                                  decoration: InputDecoration(
                                    hint: Text("$hint",
                                    textAlign: TextAlign.right,
                                    style: GoogleFonts.rubik(
                                      color: darkThemFalseFontColor 
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
                                      borderSide: BorderSide(
                                        color: darkThemborder,
                                        width: BorderSide.strokeAlignCenter,
                                      )
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: darkThemborder,
                                        width: BorderSide.strokeAlignCenter,
                                      )
                                    ),
                                    errorBorder: OutlineInputBorder(
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
                                      }
                                    return null;
                                  },
                              ),
                              SizedBox(height: 6,),
                              Text(
                                  "يجب عليك التأكد من صحة البريد الألكتروني لكي تصلك رسالة تغير كلمة المرور*",
                                  textAlign: TextAlign.right,
                                    style: GoogleFonts.rubik(
                                      color: darkThemerrorborder,
                                      fontSize: widthPage * 0.015,
                                      fontWeight: FontWeight.w500,
                                    )
                                ),
                                Center(
                                  child: Container(
                                          width: widthPage * 0.5,
                                          height: 45,
                                          margin: EdgeInsets.only(top: 24),
                                          child: MaterialButton(
                                            onPressed: (){
                                  
                                            },
                                            color: darkThemFontColor,
                                            shape: RoundedRectangleBorder(
                                                    side: BorderSide(
                                                      width: 1.2,
                                                      color: darkThemFalseFontColor
                                                    )
                                                  ),
                                  
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "ارسال رسالة تغير كلمة المرور",
                                                  style: GoogleFonts.rubik(
                                                    color: darkThemFalseFontColor,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: widthPage * .02
                                                  ),
                                                )
                                              ],
                                            ),
                                            ),
                                        ),
                                ),
                            ],
                          )
                          )
                      ],
                    ),
                  );
                }
         );
        }
      ),
    );
  }
}