// ignore_for_file: file_names

import 'package:atel/Screen/360/swichpages.dart';
import 'package:atel/Screen/600/swichpages.dart';
import 'package:atel/Screen/900/swichpages.dart';
import 'package:atel/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(Homereturn());
}

class Homereturn extends StatefulWidget {
  const Homereturn({super.key});

  @override
  State<Homereturn> createState() => _HomereturnState();
}

class _HomereturnState extends State<Homereturn> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LayoutBuilder(builder : (context, constraints){
        double widthPage = constraints.maxWidth;
        double heightPage = constraints.maxHeight;
        
        if(widthPage <= 600){
          return Swichpages();
        }if(widthPage <= 900){
          return Swichpages600();
        }if(widthPage <= 1100){
          return Swichpages900();
        }if(widthPage <= 4000){
          return Swichpages900();
        }
        return Container();
      }
  ),
    );
  }
}