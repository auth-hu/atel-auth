import 'package:atel/Screen/360/pages/seetingspage.dart';
import 'package:atel/Screen/360/swichpages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class profilePage extends StatefulWidget {
  const profilePage({super.key});

  @override
  State<profilePage> createState() => _profilePageState();
}

class _profilePageState extends State<profilePage> {



  bool darkThem = false;
  bool isTrue = true;
  late var darkThemBackground = darkThem == true ? Color(0xff030b26) : Color(0xff89fafa);
  late var darkThemFalseBackground = darkThem == false ? Color(0xff030b26) : Color(0xff89fafa);
  late var darkThemdisablebutton = darkThem == true ? Color.fromARGB(157, 3, 11, 38) : Color.fromARGB(162, 121, 254, 250);
  late var darkThemFontColor = darkThem == true ? Color(0xfff2f2f2) : Color(0xff333333);
  late var darkThemFalseFontColor = darkThem == false ? Color(0xfff2f2f2) : Color(0xff333333);
  late var darkThemSecBacgrounColor = darkThem == true ? Color(0xfff2f2f2) : Color(0xff333333);
  late var darkThemborder = darkThem == true ? Color(0xfff2f2f2) : Color(0xff333333);
  late var darkThemunslected = darkThem == true ? Color(0xfff2f2f2) : Color(0xff666666);
  late var darkFalseThemborder = darkThem == false ? Color(0xfff2f2f2) : Color(0xff333333);
  late var darkThemerrorborder = darkThem == false ? Colors.red : Colors.redAccent;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController forgotPasswordController = TextEditingController();
  GlobalKey<FormState> LoginState = GlobalKey();
  bool chval = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkThemFalseFontColor,
      body: SafeArea(
        child: Column(
          children: [
            /* back button Start */
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
                        builder: (context) => Swichpages(),
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
            /* Back Button End */
          ],
        )
        ),
    );
  }
}