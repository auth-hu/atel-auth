// ignore_for_file: non_constant_identifier_names, unused_local_variable, camel_case_types

import 'package:atel/Screen/900/singUpPage600.dart';
import 'package:atel/Screen/900/swichpages.dart';
import 'package:atel/componnent/360/GisterClick.dart';
import 'package:atel/componnent/600/GisterClick.dart';
import 'package:atel/componnent/900/Emailfield.dart';
import 'package:atel/componnent/900/condtion.dart';
import 'package:atel/componnent/900/forgotPass.dart';
import 'package:atel/componnent/900/passwordfield.dart';
import 'package:atel/componnent/900/terms.dart';
import 'package:atel/firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const logInPage900());
}

class logInPage900 extends StatefulWidget{
  const logInPage900({super.key});


  @override
  State<logInPage900> createState() => _logInPage900();
}



class _logInPage900 extends State<logInPage900> {



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

  
    Future<void> login() async {
    
    if(LoginState.currentState!.validate()){
      try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => Swichpages900()),
      );
    } on FirebaseAuthException catch (e) {

             String message = "";

            if (e.code == 'email-already-in-use') {
              message = "البريد مستخدم مسبقاً";
            } else if (e.code == 'weak-password') {
              message = "كلمة المرور ضعيفة";
            } else if (e.code == 'invalid-email') {
              message = "بريد غير صالح";
            } else {
              message = "حدث خطأ";
            }

            ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(message),
              duration: Duration(seconds: 5),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LayoutBuilder(builder : (context, constraints){
        double widthPage = constraints.maxWidth;
        double heightPage = constraints.maxHeight;
        return Scaffold(
          backgroundColor: darkThemBackground,
          body: SafeArea(
            child: Center(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: heightPage * .05),
                  child: Text("عاطل",
                  style: GoogleFonts.rubik(
                    color: darkThemFontColor,
                    fontWeight: FontWeight.w500,
                    fontSize: widthPage * .03
                  ),
                  )
                ),
                Container(
                  margin: EdgeInsets.only(top: 12),
                  child: Text("...سجل دخول بحساب أو قم بأنشاء حساب جديد",
                  style: GoogleFonts.rubik(
                    color: darkThemFontColor,
                    fontWeight: FontWeight.w400,
                    fontSize: widthPage * .02
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
                              SizedBox(height: 16,),
                              Emailfield900(
                                controller: emailController,
                                hint: "ضع البريد الألكتروني",
                                fieldTitle: ":البريد الألكتروني",
                                darkThemFontColor: darkThemFontColor,
                                widthPage: widthPage,
                                isTrue: false,
                                darkThemborder: darkThemborder,
                                darkThemerrorborder: darkThemerrorborder,
                              ), 

                              Passwordfield900(
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

                          forgotPas900(
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
                                

                            Condtion900(
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

                            terms900(
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
                          width: widthPage * 0.25,
                          height: 50,
                          child: MaterialButton(onPressed: () async{
                            login();
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
                                    fontSize: widthPage * .02
                                  ),
                              ),
                            ],
                          ),
                          ),
                         ),

                         Center(
                           child: Container(
                            margin: EdgeInsets.only(top: 8),
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                gisterClick(
                                darkThemFontColor: darkThemFontColor,
                                isUnderline: true,
                                text: "انشئ حسابك الخاص",
                                onTap: (){
                                  Navigator.push(
                                    context, 
                                    MaterialPageRoute(
                                      builder: (context) => singUpPage900(),
                                      )
                                    );
                                }
                                ),
                                gisterClick(
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
          )
        ); 
      }),
    );
  }
}