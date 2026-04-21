
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


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