// ignore_for_file: non_constant_identifier_names, unused_local_variable, camel_case_types

import 'package:atel/Screen/360/logInPage.dart';
import 'package:atel/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const singUpPage());
}

class singUpPage extends StatefulWidget{
  const singUpPage({super.key});


  @override
  State<singUpPage> createState() => _singUpPage();
}



class _singUpPage extends State<singUpPage> {



  bool darkThem = true;
  bool isTrue = true;
  late var darkThemBackground = darkThem == true ? Color(0xff030b26) : Color(0xff89fafa);
  late var darkThemFalseBackground = darkThem == false ? Color(0xff030b26) : Color(0xff89fafa);
  late var darkThemdisablebutton = darkThem == true ? Color.fromARGB(157, 3, 11, 38) : Color.fromARGB(162, 121, 254, 250);
  late var darkThemFontColor = darkThem == true ? Color(0xfff2f2f2) : Color(0xff333333);
  late var darkThemFalseFontColor = darkThem == false ? Color(0xfff2f2f2) : Color(0xff333333);
  late var darkThemSecBacgrounColor = darkThem == false ? Color(0xfff2f2f2) : Color(0xff333333);
  late var darkThemborder = darkThem == true ? Color(0xfff2f2f2) : Color(0xff333333);
  late var darkFalseThemborder = darkThem == false ? Color(0xfff2f2f2) : Color(0xff333333);
  late var darkThemerrorborder = darkThem == false ? Colors.red : Colors.redAccent;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> singUpState = GlobalKey();
  bool chval = false;
  bool isSelected = false;
  bool isSelected2 = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LayoutBuilder(builder : (context, constraints){
        double widthPage = constraints.maxWidth;
        double heightPage = constraints.maxHeight;
        return Scaffold(
          backgroundColor: darkThemBackground,
          body: Center(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.all(12),
                  child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: darkThemFontColor,
                          width: 1.3
                        )
                      ),
                    child: IconButton(
                      onPressed: (){
                        Navigator.pushReplacement(
                           context, 
                           MaterialPageRoute(
                           builder: (context) => logInPage(),
                        )
                       );
                      }, 
                      icon: Icon(
                        Icons.arrow_back,
                        color: darkThemFontColor,
                      )
                      ),
                  )
                ),
                Container(
                  margin: EdgeInsets.only(top: heightPage * .03),
                  child: Text(
                    "انشئ حسابكَ بكل سهولة",
                    style: GoogleFonts.rubik(
                    color: darkThemFontColor,
                    fontWeight: FontWeight.w500,
                    fontSize: widthPage * .06
                  ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: widthPage,
                    margin: EdgeInsets.only(top: 16, right: 12, left: 12),
                    decoration: BoxDecoration(
                    color: darkThemSecBacgrounColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 24),
                          width: widthPage * .8,
                          height: 75,
                          decoration: BoxDecoration(
                                  border: Border.all(
                                    color: darkThemFontColor,
                                    width: 1.3
                                  )
                                ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: Container(
                                  color: isSelected == true ? darkThemBackground : darkThemSecBacgrounColor,
                                  child: MaterialButton(onPressed: (){
                                    setState(() {
                                      isSelected = true;
                                      isSelected2 = false;
                                    });
                                  },
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        child: Icon(
                                          Icons.work,
                                          size: 32,
                                          color: isSelected == false ?  darkThemFontColor : darkThemFontColor,
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          "صاحب عمل",
                                          style: GoogleFonts.rubik(
                                            color: isSelected == false ? darkThemFontColor : darkThemFontColor,
                                            fontWeight: FontWeight.w500,
                                            fontSize: widthPage * .03
                                          ),
                                        )
                                      )
                                    ],
                                  ),
                                  ),
                                )
                              ),
                              Expanded(
                                child: Container(
                                  color: isSelected2 == true ? darkThemBackground : darkThemSecBacgrounColor,
                                  child: MaterialButton(onPressed: (){
                                    setState(() {
                                      isSelected2 = true;
                                      isSelected = false;
                                    });
                                  },
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        child: Icon(
                                          Icons.person,
                                          size: 32,
                                          color: isSelected2 == true ? darkThemFontColor : darkThemFontColor,
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          "عامل",
                                          style: GoogleFonts.rubik(
                                            color: isSelected2 == true ? darkThemFontColor : darkThemFontColor,
                                            fontWeight: FontWeight.w500,
                                            fontSize: widthPage * .03
                                          ),
                                        )
                                      )
                                    ],
                                  ),
                                  ),
                                )
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                  )
              ],
            ),
          ),
        ); 
      }),
    );
  }
}