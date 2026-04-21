import 'package:atel/Screen/360/logInPage.dart';
import 'package:atel/Screen/600/logInPage600.dart';
import 'package:atel/Screen/900/logInPage900.dart';
import 'package:atel/firebase_options.dart';
import 'package:atel/return/loadingPageReturn.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget{
  const MyApp({super.key});


  @override
  State<MyApp> createState() => _MyAppState();
}



class _MyAppState extends State<MyApp> {

  
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 10), () {
      setState(() {
        isLoading = true;
        print("$isLoading");
      });
    }
    );
  }

  bool darkThem = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LayoutBuilder(builder : (context, constraints){
        double widthPage = constraints.maxWidth;
        double heightPage = constraints.maxHeight;
        if (widthPage <= 600) {
          if (isLoading == true) {
            return logInPage();
          }
          return LoadingPage(
            darkThem: darkThem,
            heightPage: heightPage,
            widthPage: widthPage,
          );
        }
        if (widthPage <= 900) {
          if (isLoading == true) {
            return logInPage600();
          }
          return LoadingPage(
            darkThem: darkThem,
            heightPage: heightPage,
            widthPage: widthPage,
          );
        }
        if (widthPage <= 4080) {
          if (isLoading == true) {
            return logInPage900();
          }
          return LoadingPage(
            darkThem: darkThem,
            heightPage: heightPage,
            widthPage: widthPage,
          );
        }
        return Container(); // Placeholder for other cases, adjust as needed
      }),
    );
  }
}