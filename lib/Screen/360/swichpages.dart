// ignore_for_file: unused_local_variable

import 'package:atel/Screen/360/pages/homepage.dart';
import 'package:atel/Screen/360/pages/notifictionpage.dart';
import 'package:atel/Screen/360/pages/seetingspage.dart';
import 'package:atel/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(Swichpages());
}

class Swichpages extends StatefulWidget {
  const Swichpages({super.key});

  @override
  State<Swichpages> createState() => _SwichpagesState();
}

class _SwichpagesState extends State<Swichpages> {


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

  int curre = 0;
  final PageController controller = PageController();
  final List<Widget> pages = [
    homepage(),
    notificationpage(),
    settingspage(),
  ];

  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints){
          double widthPage = constraints.maxWidth;
          double heightPage = constraints.maxHeight;
          return SafeArea(
            child: PageView(
              controller: controller,
              onPageChanged: (index) {
                setState(() {
                  curre = index;
                });
              },
              children: pages,
            )
            );
        }
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: curre,
          selectedFontSize: 14,
          selectedItemColor: darkThemFontColor,
          unselectedItemColor: darkThemunslected,
          backgroundColor: darkThemBackground,
          selectedLabelStyle: GoogleFonts.rubik(
                    color: darkThemFontColor,
                    fontWeight: FontWeight.w600,
                  ),
          unselectedLabelStyle: GoogleFonts.rubik(
                    color: darkThemFontColor,
                    fontWeight: FontWeight.w600,
                  ),
          onTap: (index) {
            controller.animateToPage(
              index,
              duration: Duration(microseconds: 600),
              curve: Curves.easeInOut
              );
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "الرئيسية"
              ),
              BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: "الاشعارات"
              ),
              BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "الأعدادات"
              )
          ]
          ),
    );
  }
}