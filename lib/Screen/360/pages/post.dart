// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables, strict_top_level_inference, camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class postpage extends StatelessWidget {

final double heightPage;
final Color darkThemFontColor;
final Color darkFalseThemborder;
final double widthPage;
final String Date;
final int numberapp;
final int numbeacc;
final Color darkpeople;
final bool follow;
final String name;
final String detils;
final int accseptaplly;
final String gev;


  const postpage(
    {
      super.key,
      required this.heightPage,
      required this.darkThemFontColor,
      required this.darkFalseThemborder,
      required this.widthPage,
      required this.Date,
      required this.numberapp,
      required this.numbeacc,
      required this.darkpeople,
      required this.follow,
      required this.name,
      required this.detils,
      required this.accseptaplly,
      required this.gev,
      }
    );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
      children: [
         /* Post Section Start */
                  Container(
                    height: heightPage * .35,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: darkThemFontColor,
                          width: 1.2
                        )
                      )
                    ),
                    child: Column(
                      children: [
                        /* Account Inofo Start */
                        Container(
                          decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: darkThemFontColor,
                                        width: .5
                                      )
                                    )
                                  ),
                          child: Row(
                            children: [
                              /* follow Section Start */
                              Expanded(
                                child: Container(
                                  alignment: Alignment.centerRight,
                                  padding: EdgeInsets.only(top: 4, bottom: 4),
                                  child: MaterialButton(
                                    onPressed: (){

                                    },
                                    color: darkThemFontColor,
                                    textColor: darkFalseThemborder,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadiusGeometry.circular(12),
                                      side: BorderSide(
                                        width: 1.2,
                                        color: darkThemFontColor
                                      )
                                    ),
                                    height: heightPage * .08,
                                    child: Text( "تتابعهُ",
                                    style: GoogleFonts.rubik( 
                                      fontWeight: FontWeight.w600,
                                      fontSize: widthPage * 0.03
                                    ),
                                  ),
                                    )
                                ),
                              ),
                              /* follow Section End */

                              /* Time Post Section Start */
                              Expanded(
                                child: Text(
                                  "$Date",
                                    style: GoogleFonts.rubik(
                                      color: darkThemFontColor,
                                      fontWeight: FontWeight.w600,
                                      fontSize: widthPage * .025
                                    ),
                                )
                                ),
                              /* Time Post Section End */

                              /* userName Section Start */
                              Expanded(
                                flex: 3,
                                child: Container(
                                  alignment: Alignment.centerRight,
                                  padding: EdgeInsets.all(12),
                                  child: Text(
                                    "$name",
                                    style: GoogleFonts.rubik(
                                      color: darkThemFontColor,
                                      fontWeight: FontWeight.w600,
                                      fontSize: widthPage * 0.04
                                    ),
                                  ),
                                ),
                              ),
                              /* userName Section End */
                            ],
                          ),
                        ),
                        /* Account Inofo End */

                        /* detils Section Start */
                           Container(
                            margin: EdgeInsets.all(4),
                             child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                  child: GestureDetector(
                                    onTap: (){

                                    },
                                    child: Text(
                                    "$detils",
                                    textAlign: TextAlign.right,
                                    maxLines: 6,
                                    style: GoogleFonts.rubik(
                                        color: darkThemFontColor,
                                        fontWeight: FontWeight.w600,
                                        fontSize: widthPage * 0.03,
                                      ),
                                  ),
                                  )
                                )
                                  )
                              ],
                            ),
                           ),
                        /* detils Section End */

                        /* moreDetils Section Start */
                        Container(
                          margin: EdgeInsets.only(top: 12),
                          padding: EdgeInsets.only(top: 8),
                          alignment: Alignment.centerRight,
                          decoration: BoxDecoration(
                                    border: Border(
                                      top: BorderSide(
                                        color: darkThemFontColor,
                                        width: .06
                                      )
                                    )
                                  ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              /* Apllication Number Start */
                              Container(
                                margin: EdgeInsets.all(2),
                                alignment: Alignment.centerRight,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                      Container(
                                        margin: EdgeInsets.only(right: 2),
                                        child: Text(
                                          "$numberapp",
                                          style: GoogleFonts.rubik(
                                            color: darkThemFontColor,
                                            fontWeight: FontWeight.w600,
                                            fontSize: widthPage * 0.03,
                                          ),
                                        )
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(right: 4),
                                        child: Text(
                                          ":عدد المقدمين",
                                          style: GoogleFonts.rubik(
                                            color: darkThemFontColor,
                                            fontWeight: FontWeight.w600,
                                            fontSize: widthPage * 0.03,
                                          ),
                                        )
                                      ),
                                     Container(
                                      margin: EdgeInsets.only(right: 1),
                                        child: Icon(
                                          Icons.person,
                                          color: darkThemFontColor,
                                        ),
                                      ),
                                  ],
                                  ),
                              ),
                              /* Apllication Number End */

                              /* Apllication Number accsept Start */
                              Container(
                                margin: EdgeInsets.all(2),
                                alignment: Alignment.centerRight,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                      Container(
                                        margin: EdgeInsets.only(right: 2),
                                        child: Text(
                                          "$numbeacc من",
                                          style: GoogleFonts.rubik(
                                            color: darkThemFontColor,
                                            fontWeight: FontWeight.w600,
                                            fontSize: widthPage * 0.03,
                                          ),
                                        )
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(right: 2),
                                        child: Text(
                                          "$accseptaplly",
                                          style: GoogleFonts.rubik(
                                            color: darkThemFontColor,
                                            fontWeight: FontWeight.w600,
                                            fontSize: widthPage * 0.03,
                                          ),
                                        )
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(right: 4),
                                        child: Text(
                                          ":عدد المقبولين",
                                          style: GoogleFonts.rubik(
                                            color: darkThemFontColor,
                                            fontWeight: FontWeight.w600,
                                            fontSize: widthPage * 0.03,
                                          ),
                                        )
                                      ),
                                     Container(
                                      margin: EdgeInsets.only(right: 1),
                                        child: Icon(
                                          Icons.person,
                                          color: darkpeople,
                                        ),
                                      ),
                                  ],
                                  ),
                              )
                              /* Apllication Number accsept End */
                            ]
                          )
                        ),
                        /* moreDetils Section End */
                      ],
                    ),
                  ),
                  /* Post Section End */
                   /* Gev Start */
                              Container(
                                margin: EdgeInsets.all(2),
                                alignment: Alignment.centerRight,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(right: 1),
                                      child: Text(
                                        "$gev",
                                        style: GoogleFonts.rubik(
                                            color: darkThemFontColor,
                                            fontWeight: FontWeight.w600,
                                            fontSize: widthPage * 0.03,
                                          ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(right: 1),
                                      child: Text(
                                        ":المحافظة",
                                        style: GoogleFonts.rubik(
                                            color: darkThemFontColor,
                                            fontWeight: FontWeight.w600,
                                            fontSize: widthPage * 0.03,
                                          ),
                                      ),
                                    ),
                                    Container(
                                      child: Icon(
                                        Icons.home_repair_service,
                                        color: darkThemFontColor,
                                      ),
                                    )
                                  ],
                                ),
                              )
                              /* Gev end */
      ],
    ),
    );
  }
}