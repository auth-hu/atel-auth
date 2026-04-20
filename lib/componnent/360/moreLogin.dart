// ignore_for_file: empty_constructor_bodies, prefer_typing_uninitialized_variables, strict_top_level_inference, file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class moreLogin extends StatelessWidget {

  final widthPage;
  final darkThemFalseFontColor;
  final darkThemFontColor;
  final darkThemdisablebutton;
  final heightPage;

  const moreLogin({
    super.key,
    required this.widthPage,
    required this.darkThemFalseFontColor,
    required this.darkThemFontColor,
    required this.darkThemdisablebutton,
    required this.heightPage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
                          margin: EdgeInsets.only(top: 12),
                          width: widthPage * 0.65,
                          height: 50,
                          child: MaterialButton(onPressed: (){
                            showBottomSheet(
                              context: context, 
                              builder: (context){
                                return Container(
                                  decoration: BoxDecoration(
                                        color: darkThemFontColor,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          topRight: Radius.circular(20),
                                    )
                                  ),
                                  width: widthPage,
                                  height: heightPage * .35,
                                  child: Column(
                                    children: [
                                      Container(
                                          decoration: BoxDecoration(
                                            color: darkThemFalseFontColor,
                                            borderRadius: BorderRadius.all(Radius.circular(50))
                                          ),
                                          margin: EdgeInsets.only(top: 4),
                                          padding: EdgeInsets.all(5),
                                          width: 200,
                                          height: 5,
                                        ),

                                      Container(
                                        margin: EdgeInsets.only(top: 12),
                                        padding: EdgeInsets.only(bottom: 6),
                                        decoration: BoxDecoration(
                                          border: Border(
                                            bottom: BorderSide(
                                              color: darkThemFalseFontColor,
                                              width: 1.3
                                            )
                                          )
                                        ),
                                        child: Text(
                                          "اختر أحدى وسائل تسجيل الدخول",
                                          style: GoogleFonts.rubik(
                                            color: darkThemFalseFontColor,
                                            fontWeight: FontWeight.w500,
                                            fontSize: widthPage * .04
                                          ),
                                        ),
                                      ),

                                      Container(
                                        width: widthPage * 0.7,
                                        height: 50,
                                        margin: EdgeInsets.only(top: 16),
                                        child: MaterialButton(
                                          onPressed: (){

                                          },
                                          color: darkThemFontColor,
                                          shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadiusGeometry.all(Radius.circular(20)),
                                                  side: BorderSide(
                                                    width: 1.2,
                                                    color: darkThemFalseFontColor
                                                  )
                                                ),

                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "تسجيل بواسطة غوغل",
                                                style: GoogleFonts.rubik(
                                                  color: darkThemFalseFontColor,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: widthPage * .03
                                                ),
                                              )
                                            ],
                                          ),
                                          ),
                                      ),


                                      Container(
                                        width: widthPage * 0.7,
                                        height: 50,
                                        margin: EdgeInsets.only(top: 16),
                                        child: MaterialButton(
                                          onPressed: (){

                                          },
                                          color: darkThemFontColor,
                                          shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadiusGeometry.all(Radius.circular(20)),
                                                  side: BorderSide(
                                                    width: 1.2,
                                                    color: darkThemFalseFontColor
                                                  )
                                                ),

                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "تسجيل بواسطة فيسبوك",
                                                style: GoogleFonts.rubik(
                                                  color: darkThemFalseFontColor,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: widthPage * .03
                                                ),
                                              )
                                            ],
                                          ),
                                          ),
                                      ),
                                    ],
                                  ),
                                );
                              }
                              );
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.all(Radius.circular(20)),
                            side: BorderSide(
                              width: 1.2,
                              color: darkThemFalseFontColor
                            )
                          ),
                          color: darkThemFontColor,
                          disabledColor: darkThemdisablebutton,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("تسجيل الدخول بطريقة أخرى",
                              style: GoogleFonts.rubik(
                                    color: darkThemFalseFontColor,
                                    fontWeight: FontWeight.w500,
                                    fontSize: widthPage * .04
                                  ),
                              ),
                            ],
                          ),
                          ),
    );
  }}