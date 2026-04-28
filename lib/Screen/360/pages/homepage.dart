// ignore_for_file: unnecessary_string_interpolations, non_constant_identifier_names, camel_case_types

import 'package:atel/Screen/360/pages/post.dart';
import 'package:atel/firebase_options.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  FlutterError.onError = (errorDet) {
    FirebaseCrashlytics.instance.recordFlutterFatalError(errorDet);
  };

  PlatformDispatcher.instance.onError = (error, stack){
    FirebaseCrashlytics.instance.recordError(error, stack);
    return true;
  };
  runApp(homepage());
}


class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {

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
  late var darkpeople = darkThem == true ? Colors.green : Colors.lightGreen;
  late var darkThemerrorborder = darkThem == false ? Colors.red : Colors.redAccent;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController forgotPasswordController = TextEditingController();
  GlobalKey<FormState> LoginState = GlobalKey();
  bool chval = false;
  int numberapp = 100;
  int numbeacc = 10;
  String Date = " منذُ 3 ساعات";
  String gev = "بابل";

  List<Widget> post = [

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints){
          double widthPage = constraints.maxWidth;
          double heightPage = constraints.maxHeight;
            return StreamBuilder(
              stream: FirebaseFirestore.instance.collection('post').snapshots(), 
              builder: (context, snapshot) {
                return Center(
                  child: Text(" No Data"),
                );
              },
              );
            }
          )
        ),
    );
  }
}