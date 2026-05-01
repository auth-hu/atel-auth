import 'package:atel/Screen/360/logInPage.dart';
import 'package:atel/Screen/600/logInPage600.dart';
import 'package:atel/Screen/900/logInPage900.dart';
import 'package:atel/firebase_options.dart';
import 'package:atel/return/homeReturn.dart';
import 'package:atel/return/loadingPageReturn.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        isLoading = true;
      });
    String uid = FirebaseAuth.instance.currentUser!.uid;
    print('$uid');
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
        
        return StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(), 
          builder: (context, snapshot) {
            if(snapshot.connectionState == ConnectionState.waiting){
              return isLoading ? LoadingPage(
                darkThem: darkThem,
                heightPage: heightPage,
                widthPage: widthPage
                ) : LoadingPage(
                darkThem: darkThem,
                heightPage: heightPage,
                widthPage: widthPage
                );
            }
            if(!snapshot.hasData){
              if(widthPage <= 600){
                return logInPage();
              }else if(widthPage <= 900){
                return logInPage600();
              }else if(widthPage <= 1100){
                return logInPage900();
              }else if(widthPage <= 4000){
                return logInPage900();
              }
            }

            return Homereturn();
          }
          );
      }
  ),
    );
  }
}