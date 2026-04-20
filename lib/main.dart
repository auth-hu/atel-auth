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
        return Container(); // Placeholder for other cases, adjust as needed
      }),
    );
  }
}


class LoadingPage extends StatelessWidget {
  final bool darkThem;
  final double heightPage;
  final double widthPage;

  const LoadingPage({
    super.key,
    required this.darkThem,
    required this.heightPage,
    required this.widthPage,
    });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkThem == true ? Color(0xff030b26) : Color(0xff89fafa),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: heightPage * 0.3),
              child: Text("عاطل",
              style: GoogleFonts.rubik(
                fontWeight: FontWeight.w500,
                color: darkThem == true ? Color(0xffffffff) : Color(0xff000000),
                fontSize: widthPage * 0.1,
              ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: heightPage * 0.15),
              child: CircularProgressIndicator(
                color: darkThem == true ? Color(0xffffffff) : Color(0xff000000),
                strokeWidth: 1,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Text("...جاري التحميل",
              style: GoogleFonts.rubik(
                fontWeight: FontWeight.w500,
                color: darkThem == true ? Color(0xffffffff) : Color(0xff000000),
                fontSize: widthPage * 0.03,
              ),
              ),
            ),

            
          ],
        ),
      )
    );
  }
}