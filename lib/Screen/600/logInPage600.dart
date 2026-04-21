// ignore_for_file: non_constant_identifier_names, unused_local_variable, camel_case_types

import 'package:atel/Screen/600/singUpPage600.dart';
import 'package:atel/componnent/600/Emailfield.dart';
import 'package:atel/componnent/600/GisterClick.dart';
import 'package:atel/componnent/600/condtion.dart';
import 'package:atel/componnent/600/forgotPass.dart';
import 'package:atel/componnent/600/moreLogin.dart';
import 'package:atel/componnent/600/passwordfield.dart';
import 'package:atel/componnent/600/terms.dart';
import 'package:atel/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const logInPage600());
}

class logInPage600 extends StatefulWidget{
  const logInPage600({super.key});


  @override
  State<logInPage600> createState() => _logInPage600();
}



class _logInPage600 extends State<logInPage600> {



  bool darkThem = false;
  bool isTrue = true;
  late var darkThemBackground = darkThem == true ? Color(0xff030b26) : Color(0xff89fafa);
  late var darkThemdisablebutton = darkThem == true ? Color.fromARGB(157, 3, 11, 38) : Color.fromARGB(162, 121, 254, 250);
  late var darkThemFontColor = darkThem == true ? Color(0xfff2f2f2) : Color(0xff333333);
  late var darkThemFalseFontColor = darkThem == false ? Color(0xfff2f2f2) : Color(0xff333333);
  late var darkThemSecBacgrounColor = darkThem == false ? Color(0xfff2f2f2) : Color(0xff333333);
  late var darkThemborder = darkThem == true ? Color(0xfff2f2f2) : Color(0xff333333);
  late var darkFalseThemborder = darkThem == false ? Color(0xfff2f2f2) : Color(0xff333333);
  late var darkThemerrorborder = darkThem == false ? Colors.red : Colors.redAccent;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController forgotPasswordController = TextEditingController();
  GlobalKey<FormState> LoginState = GlobalKey();
  bool chval = false;

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
                  margin: EdgeInsets.only(top: heightPage * .15),
                  child: Text("عاطل",
                  style: GoogleFonts.rubik(
                    color: darkThemFontColor,
                    fontWeight: FontWeight.w500,
                    fontSize: widthPage * .05
                  ),
                  )
                ),
                Container(
                  margin: EdgeInsets.only(top: 12),
                  child: Text("...سجل دخول بحساب أو قم بأنشاء حساب جديد",
                  style: GoogleFonts.rubik(
                    color: darkThemFontColor,
                    fontWeight: FontWeight.w400,
                    fontSize: widthPage * .03
                  ),
                  )
                ),
                SizedBox(height: 16,),
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
                        Form(
                          key: LoginState,
                          child: Column(
                            children: [
                              Emailfield600(
                                controller: emailController,
                                hint: "ضع البريد الألكتروني",
                                fieldTitle: ":البريد الألكتروني",
                                darkThemFontColor: darkThemFontColor,
                                widthPage: widthPage,
                                isTrue: false,
                                darkThemborder: darkThemborder,
                                darkThemerrorborder: darkThemerrorborder,
                              ), 

                              Passwordfield600(
                                controller: passwordController,
                                hint: "ضع كلمة مرورك",
                                fieldTitle: ":كلمة المرور",
                                darkThemFontColor: darkThemFontColor,
                                widthPage: widthPage,
                                isTrue: isTrue,
                                darkThemborder: darkThemborder,
                                darkThemerrorborder: darkThemerrorborder,
                                showIcon: true,
                                onPressed: () {
                                  setState(() {
                                    isTrue = !isTrue;
                                  });
                                },
                              ),
                            ],
                          )
                          ),
                          SizedBox(height: 2,),

                          forgotPas600(
                            darkThemFontColor: darkThemFontColor,
                            heightPage: heightPage,
                            widthPage: widthPage,
                            darkThemFalseFontColor: darkThemFalseFontColor,
                            controller: forgotPasswordController,
                            darkThemborder: darkFalseThemborder,
                            darkThemerrorborder: darkThemerrorborder,
                            hint: ":البريد الألكتروني",
                          ),

                          Container(
                            margin: EdgeInsets.only(top: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                

                            Condtion600(
                              darkThemFontColor: darkThemFontColor,
                              heightPage: heightPage,
                              widthPage: widthPage,
                              darkThemFalseFontColor:
                              darkThemFalseFontColor
                              ),

                            gisterClick600(
                              darkThemFontColor: darkThemFontColor,
                              isUnderline: false,
                              text: " و ",
                              onTap: (){

                              }
                              ),

                            terms600(
                              darkThemFontColor: darkThemFontColor,
                              heightPage: heightPage,
                              widthPage: widthPage,
                              darkThemFalseFontColor: darkThemFalseFontColor,
                              ),

                            gisterClick600(
                              darkThemFontColor: darkThemFontColor,
                              isUnderline: false,
                              text: " هل انت توافق على",
                              onTap: (){

                              }
                              ),

                            Checkbox(
                                value: chval,
                                onChanged: (val){
                                  setState(() {
                                    chval = !chval;
                                  });
                                },
                                fillColor: WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
                                      if (states.contains(WidgetState.disabled)) {
                                        if(darkThem == true){
                                          return darkThemFontColor;
                                        }
                                      }
                                      return darkThemBackground;
                                    }),
                                    checkColor: darkThemFontColor,
                                    activeColor: darkThemFontColor,
                                  ),
                              ],
                            ),
                          ),

                         Container(
                          margin: EdgeInsets.only(top: 12),
                          width: widthPage * 0.5,
                          height: 50,
                          child: MaterialButton(onPressed: (){

                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.all(Radius.circular(20)),
                            side: BorderSide(
                              width: 1.2,
                              color: darkThemFontColor
                            )
                          ),
                          color: darkThemBackground,
                          disabledColor: darkThemdisablebutton,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.login_rounded,
                              color: darkThemFontColor,
                              ),
                              Text("تسجيل الدخول",
                              style: GoogleFonts.rubik(
                                    color: darkThemFontColor,
                                    fontWeight: FontWeight.w500,
                                    fontSize: widthPage * .032
                                  ),
                              ),
                            ],
                          ),
                          ),
                         ),

                         moreLogin600(
                          widthPage: widthPage,
                          darkThemFalseFontColor:
                          darkThemFalseFontColor,
                          darkThemFontColor: darkThemFontColor,
                          darkThemdisablebutton: darkThemdisablebutton,
                          heightPage: heightPage,
                          ),

                         Center(
                           child: Container(
                            margin: EdgeInsets.only(top: 12),
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                gisterClick600(
                                darkThemFontColor: darkThemFontColor,
                                isUnderline: true,
                                text: "انشئ حسابك الخاص",
                                onTap: (){
                                  Navigator.push(
                                    context, 
                                    MaterialPageRoute(
                                      builder: (context) => singUpPage600(),
                                      )
                                    );
                                }
                                ),
                                gisterClick600(
                                darkThemFontColor: darkThemFontColor,
                                isUnderline: false,
                                text: " هل لديك حساب؟",
                                onTap: (){
                                  
                                }
                                ),
                              ],
                            ),
                           ),
                         )
                        ],
                    )
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