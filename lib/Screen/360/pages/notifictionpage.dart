// ignore_for_file: non_constant_identifier_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class notificationpage extends StatefulWidget {
  const notificationpage({super.key});

  @override
  State<notificationpage> createState() => _notificationpage();
}

class _notificationpage extends State<notificationpage> {

  bool darkThem = false;
  bool isTrue = true;
  late var darkThemBackground = darkThem == true ? Color(0xff030b26) : Color(0xff89fafa);
  late var darkThemdisablebutton = darkThem == true ? Color.fromARGB(157, 3, 11, 38) : Color.fromARGB(162, 121, 254, 250);
  late var darkThemFontColor = darkThem == true ? Color(0xfff2f2f2) : Color(0xff333333);
  late var darkThemFalseFontColor = darkThem == false ? Color(0xfff2f2f2) : Color(0xff333333);
  late var darkThemSecBacgrounColor = darkThem == false ? Color(0xfff2f2f2) : Color(0xff333333);
  late var darkThemborder = darkThem == true ? Color(0xfff2f2f2) : Color(0xff333333);
  late var darkThemunslected = darkThem == true ? Color(0xfff2f2f2) : Color(0xff666666);
  late var darkFalseThemborder = darkThem == false ? Color(0xfff2f2f2) : Color(0xff333333);
  late var darkThemerrorborder = darkThem == false ? Colors.red : Colors.redAccent;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController forgotPasswordController = TextEditingController();
  GlobalKey<FormState> LoginState = GlobalKey();
  bool chval = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints){
          double widthPage = constraints.maxWidth;
          double heightPage = constraints.maxHeight;
            return Column(
                children: [
                  /* AppBar Section Start */
                  Container(
                    padding: EdgeInsets.all(12),
                    alignment: Alignment.centerRight,
                    width: widthPage,
                    decoration: BoxDecoration(
                      color: darkThemBackground,
                      border: Border(
                        bottom: BorderSide(
                          color: darkThemFontColor,
                          width: 0.2
                        )
                      )
                    ),
                    child: Text(
                      "الأشعارات",
                      style: GoogleFonts.rubik(
                          color: darkThemFontColor,
                          fontWeight: FontWeight.w600,
                          fontSize: widthPage * 0.06
                        ),
                    ),
                  )
                  /* AppBar Section End */
                ],
              );
            }
          )
        ),
    );
  }
}