// ignore_for_file: unnecessary_string_interpolations, non_constant_identifier_names, camel_case_types

import 'package:atel/Screen/360/pages/editProfile.dart';
import 'package:atel/Screen/360/pages/profilepage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class settingspage extends StatefulWidget {
  const settingspage({super.key});

  @override
  State<settingspage> createState() => _settingspage();
}

class _settingspage extends State<settingspage> {

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
  final uid = FirebaseAuth.instance.currentUser!.uid;
  // final username = FirebaseFirestore.instance.collection('user').where( 'uid', isEqualTo: 'uid').get();

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkThemFalseFontColor,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints){
          double widthPage = constraints.maxWidth;
          double heightPage = constraints.maxHeight;
            return Column(
                children: [
                  /* AppBar Section Start */
                  Container(
                    padding: EdgeInsets.all(12),
                    alignment: Alignment.centerRight,
                    width: widthPage,
                    decoration: BoxDecoration(
                      color: darkThemBackground,
                      border: Border(
                        bottom: BorderSide(
                          color: darkThemFontColor,
                          width: 0.2
                        )
                      )
                    ),
                    child: Text(
                      "الأعدادات",
                      style: GoogleFonts.rubik(
                          color: darkThemFontColor,
                          fontWeight: FontWeight.w600,
                          fontSize: widthPage * 0.06
                        ),
                    ),
                  ),
                  /* AppBar Section End */
                  Container(
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: darkThemFalseFontColor,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: darkThemFalseBackground,
                        width: 1.5
                      )
                    ),
                    child: ListTile(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => profilePage()),
                        );
                      },
                      leading: Icon(
                        Icons.person,
                        color: darkThemFontColor,
                      ),
                      title: Text(
                        "name",
                        style: GoogleFonts.rubik(
                          color: darkThemFontColor,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                      subtitle: Text(
                        "$uid",
                        style: GoogleFonts.rubik(
                          color: darkThemFontColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 12
                        ),
                      ),
                      enabled: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(top: 1),
                    height: heightPage * .7,
                    child: SingleChildScrollView(
                        child: Column(
                          children: [
                            /* Privicy Settings Start*/ 
                              Container(
                                margin: EdgeInsets.only(top: heightPage * .07, left: 8),
                                child: Column(
                                  children: [
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "الحساب",
                                        style: GoogleFonts.rubik(
                                          color: darkThemFontColor,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600
                                        )
                                      ),
                                    )
                                  ],
                                ),
                              ),
                    
                              Container(
                                margin: EdgeInsets.all(0),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: darkThemFontColor,
                                      width: .7
                                    )
                                  )
                                ),
                                child: ListTile(
                                  leading: Icon(
                                    Icons.person_outline_rounded,
                                    color: darkThemFontColor,
                                  ),
                                  title: Text(
                                    "المعلومات الشخصية",
                                    style: GoogleFonts.rubik(
                                      color: darkThemFontColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600
                                    ),
                                  ),
                                  titleAlignment: ListTileTitleAlignment.center,
                                  enabled: true,
                                  isThreeLine: false,
                                  onTap: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => editProfile()),
                                    );
                                  },
                                ),
                              ),
                    
                              Container(
                                margin: EdgeInsets.all(0),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: darkThemFontColor,
                                      width: .7
                                    )
                                  )
                                ),
                                child: ListTile(
                                  leading: Icon(
                                    Icons.verified,
                                    color: darkThemFontColor,
                                  ),
                                  title: Text(
                                    "توثيق الحساب",
                                    style: GoogleFonts.rubik(
                                      color: darkThemFontColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600
                                    ),
                                  ),
                                  titleAlignment: ListTileTitleAlignment.center,
                                  enabled: true,
                                  isThreeLine: false,
                                  onTap: (){
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(content: Text("what?"),
                                        duration: Duration(seconds: 5),
                                      ),
                                    );
                                  },
                                ),
                              ),
                    
                              Container(
                                margin: EdgeInsets.all(0),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: darkThemFontColor,
                                      width: .7
                                    )
                                  )
                                ),
                                child: ListTile(
                                  leading: Icon(
                                    Icons.password,
                                    color: darkThemFontColor,
                                  ),
                                  title: Text(
                                    "تغيير كلمة المرور",
                                    style: GoogleFonts.rubik(
                                      color: darkThemFontColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600
                                    ),
                                  ),
                                  titleAlignment: ListTileTitleAlignment.center,
                                  enabled: true,
                                  isThreeLine: false,
                                  onTap: (){
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(content: Text("what?"),
                                        duration: Duration(seconds: 5),
                                      ),
                                    );
                                  },
                                ),
                              ),
                    
                              Container(
                                margin: EdgeInsets.all(0),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: darkThemFontColor,
                                      width: .7
                                    )
                                  )
                                ),
                                child: ListTile(
                                  leading: Icon(
                                    Icons.block,
                                    color: darkThemFontColor,
                                  ),
                                  title: Text(
                                    "المستخدمين المحضورين",
                                    style: GoogleFonts.rubik(
                                      color: darkThemFontColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600
                                    ),
                                  ),
                                  titleAlignment: ListTileTitleAlignment.center,
                                  enabled: true,
                                  isThreeLine: false,
                                  onTap: (){
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(content: Text("what?"),
                                        duration: Duration(seconds: 5),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(0),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: darkThemFontColor,
                                      width: .7
                                    )
                                  )
                                ),
                                child: ListTile(
                                  leading: Icon(
                                    Icons.logout,
                                    color: darkThemerrorborder,
                                  ),
                                  title: Text(
                                    "تسجيل خروج",
                                    style: GoogleFonts.rubik(
                                      color: darkThemerrorborder,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600
                                    ),
                                  ),
                                  titleAlignment: ListTileTitleAlignment.center,
                                  enabled: true,
                                  isThreeLine: false,
                                  onTap: (){
                                    FirebaseAuth.instance.signOut();
                                  },
                                ),
                              ),
                              /* Privicy Settings Start*/ 

                               /* Notification Settings Start*/ 
                              Container(
                                margin: EdgeInsets.only(top: heightPage * .07, left: 8),
                                child: Column(
                                  children: [
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "الاشعارات",
                                        style: GoogleFonts.rubik(
                                          color: darkThemFontColor,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600
                                        )
                                      ),
                                    )
                                  ],
                                ),
                              ),
                    
                              Container(
                                margin: EdgeInsets.all(0),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: darkThemFontColor,
                                      width: .7
                                    )
                                  )
                                ),
                                child: ListTile(
                                  leading: Icon(
                                    Icons.notification_add,
                                    color: darkThemFontColor,
                                  ),
                                  title: Text(
                                    "تشغيل \\ ايقاف الاشعارات",
                                    style: GoogleFonts.rubik(
                                      color: darkThemFontColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600
                                    ),
                                  ),
                                  titleAlignment: ListTileTitleAlignment.center,
                                  enabled: true,
                                  isThreeLine: false,
                                  onTap: (){
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(content: Text("what?"),
                                        duration: Duration(seconds: 5),
                                      ),
                                    );
                                  },
                                ),
                              ),
                    
                              Container(
                                margin: EdgeInsets.all(0),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: darkThemFontColor,
                                      width: .7
                                    )
                                  )
                                ),
                                child: ListTile(
                                  leading: Icon(
                                    Icons.post_add,
                                    color: darkThemFontColor,
                                  ),
                                  title: Text(
                                    "اشعارات البوستات\\ الطلبات",
                                    style: GoogleFonts.rubik(
                                      color: darkThemFontColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600
                                    ),
                                  ),
                                  titleAlignment: ListTileTitleAlignment.center,
                                  enabled: true,
                                  isThreeLine: false,
                                  onTap: (){
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(content: Text("what?"),
                                        duration: Duration(seconds: 5),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              /* Notification Settings Start*/ 
                    
                              /* General Settings Start */
                              Container(
                                margin: EdgeInsets.only(top: heightPage * .07, left: 8),
                                child: Column(
                                  children: [
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "الدفع والاشتراكات",
                                        style: GoogleFonts.rubik(
                                          color: darkThemFontColor,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600
                                        )
                                      ),
                                    )
                                  ],
                                ),
                              ),
                    
                              Container(
                                margin: EdgeInsets.all(0),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: darkThemFontColor,
                                      width: .7
                                    )
                                  )
                                ),
                                child: ListTile(
                                  leading: Icon(
                                    Icons.add_card,
                                    color: darkThemFontColor,
                                  ),
                                  title: Text(
                                    "طرق الدفع",
                                    style: GoogleFonts.rubik(
                                      color: darkThemFontColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600
                                    ),
                                  ),
                                  titleAlignment: ListTileTitleAlignment.center,
                                  enabled: true,
                                  isThreeLine: false,
                                  onTap: (){
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(content: Text("what?"),
                                        duration: Duration(seconds: 5),
                                      ),
                                    );
                                  },
                                ),
                              ),
                    
                              Container(
                                margin: EdgeInsets.all(0),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: darkThemFontColor,
                                      width: .7
                                    )
                                  )
                                ),
                                child: ListTile(
                                  leading: Icon(
                                    Icons.monetization_on,
                                    color: darkThemFontColor,
                                  ),
                                  title: Text(
                                    "الاشتراكات",
                                    style: GoogleFonts.rubik(
                                      color: darkThemFontColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600
                                    ),
                                  ),
                                  titleAlignment: ListTileTitleAlignment.center,
                                  enabled: true,
                                  isThreeLine: false,
                                  onTap: (){
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(content: Text("what?"),
                                        duration: Duration(seconds: 5),
                                      ),
                                    );
                                  },
                                ),
                              ),
                    
                              Container(
                                margin: EdgeInsets.all(0),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: darkThemFontColor,
                                      width: .7
                                    )
                                  )
                                ),
                                child: ListTile(
                                  leading: Icon(
                                    Icons.history,
                                    color: darkThemFontColor,
                                  ),
                                  title: Text(
                                    "سجل الأشتراكات",
                                    style: GoogleFonts.rubik(
                                      color: darkThemFontColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600
                                    ),
                                  ),
                                  titleAlignment: ListTileTitleAlignment.center,
                                  enabled: true,
                                  isThreeLine: false,
                                  onTap: (){
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(content: Text("what?"),
                                        duration: Duration(seconds: 5),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            /* General Settings End */ 

                            /* General Settings Start */
                              Container(
                                margin: EdgeInsets.only(top: heightPage * .07, left: 8),
                                child: Column(
                                  children: [
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "أعدادات النظام",
                                        style: GoogleFonts.rubik(
                                          color: darkThemFontColor,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600
                                        )
                                      ),
                                    )
                                  ],
                                ),
                              ),
                    
                              Container(
                                margin: EdgeInsets.all(0),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: darkThemFontColor,
                                      width: .7
                                    )
                                  )
                                ),
                                child: ListTile(
                                  leading: Icon(
                                    Icons.sunny,
                                    color: darkThemFontColor,
                                  ),
                                  title: Text(
                                    "الوضع الليلي \\ النهاري",
                                    style: GoogleFonts.rubik(
                                      color: darkThemFontColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600
                                    ),
                                  ),
                                  titleAlignment: ListTileTitleAlignment.center,
                                  enabled: true,
                                  isThreeLine: false,
                                  onTap: (){
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(content: Text("what?"),
                                        duration: Duration(seconds: 5),
                                      ),
                                    );
                                  },
                                ),
                              ),
                    
                              Container(
                                margin: EdgeInsets.all(0),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: darkThemFontColor,
                                      width: .7
                                    )
                                  )
                                ),
                                child: ListTile(
                                  leading: Icon(
                                    Icons.home_repair_service,
                                    color: darkThemFontColor,
                                  ),
                                  title: Text(
                                    "المنطقة الرئيسية",
                                    style: GoogleFonts.rubik(
                                      color: darkThemFontColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600
                                    ),
                                  ),
                                  titleAlignment: ListTileTitleAlignment.center,
                                  enabled: true,
                                  isThreeLine: false,
                                  onTap: (){
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(content: Text("what?"),
                                        duration: Duration(seconds: 5),
                                      ),
                                    );
                                  },
                                ),
                              ),
                    
                              Container(
                                margin: EdgeInsets.all(0),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: darkThemFontColor,
                                      width: .7
                                    )
                                  )
                                ),
                                child: ListTile(
                                  leading: Icon(
                                    Icons.info,
                                    color: darkThemFontColor,
                                  ),
                                  title: Text(
                                    "معلومات التطبيق",
                                    style: GoogleFonts.rubik(
                                      color: darkThemFontColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600
                                    ),
                                  ),
                                  titleAlignment: ListTileTitleAlignment.center,
                                  enabled: true,
                                  isThreeLine: false,
                                  onTap: (){
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(content: Text("what?"),
                                        duration: Duration(seconds: 5),
                                      ),
                                    );
                                  },
                                ),
                              ),
                    
                              Container(
                                margin: EdgeInsets.all(0),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: darkThemFontColor,
                                      width: .7
                                    )
                                  )
                                ),
                                child: ListTile(
                                  leading: Icon(
                                    Icons.computer_sharp,
                                    color: darkThemFontColor,
                                  ),
                                  title: Text(
                                    "شروط الأستخدام وسياسة الخصوصية",
                                    style: GoogleFonts.rubik(
                                      color: darkThemFontColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600
                                    ),
                                  ),
                                  titleAlignment: ListTileTitleAlignment.center,
                                  enabled: true,
                                  isThreeLine: false,
                                  onTap: (){
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(content: Text("what?"),
                                        duration: Duration(seconds: 5),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            /* General Settings End */ 

                            /* General Settings Start */
                              Container(
                                margin: EdgeInsets.only(top: heightPage * .07, left: 8),
                                child: Column(
                                  children: [
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "المساعدة والدعم",
                                        style: GoogleFonts.rubik(
                                          color: darkThemFontColor,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600
                                        )
                                      ),
                                    )
                                  ],
                                ),
                              ),
                    
                              Container(
                                margin: EdgeInsets.all(0),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: darkThemFontColor,
                                      width: .7
                                    )
                                  )
                                ),
                                child: ListTile(
                                  leading: Icon(
                                    Icons.support,
                                    color: darkThemFontColor,
                                  ),
                                  title: Text(
                                    "مركز المساعدة",
                                    style: GoogleFonts.rubik(
                                      color: darkThemFontColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600
                                    ),
                                  ),
                                  titleAlignment: ListTileTitleAlignment.center,
                                  enabled: true,
                                  isThreeLine: false,
                                  onTap: (){
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(content: Text("what?"),
                                        duration: Duration(seconds: 5),
                                      ),
                                    );
                                  },
                                ),
                              ),
                    
                              Container(
                                margin: EdgeInsets.all(0),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: darkThemFontColor,
                                      width: .7
                                    )
                                  )
                                ),
                                child: ListTile(
                                  leading: Icon(
                                    Icons.support_agent,
                                    color: darkThemFontColor,
                                  ),
                                  title: Text(
                                    "تواصل معنا",
                                    style: GoogleFonts.rubik(
                                      color: darkThemFontColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600
                                    ),
                                  ),
                                  titleAlignment: ListTileTitleAlignment.center,
                                  enabled: true,
                                  isThreeLine: false,
                                  onTap: (){
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(content: Text("what?"),
                                        duration: Duration(seconds: 5),
                                      ),
                                    );
                                  },
                                ),
                              ),
                    
                              Container(
                                margin: EdgeInsets.all(0),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: darkThemFontColor,
                                      width: .7
                                    )
                                  )
                                ),
                                child: ListTile(
                                  leading: Icon(
                                    Icons.bug_report,
                                    color: darkThemFontColor,
                                  ),
                                  title: Text(
                                    "الأبلاغ عن مشكلة",
                                    style: GoogleFonts.rubik(
                                      color: darkThemFontColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600
                                    ),
                                  ),
                                  titleAlignment: ListTileTitleAlignment.center,
                                  enabled: true,
                                  isThreeLine: false,
                                  onTap: (){
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(content: Text("what?"),
                                        duration: Duration(seconds: 5),
                                      ),
                                    );
                                  },
                                ),
                              ),
                    
                              Container(
                                margin: EdgeInsets.all(0),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: darkThemFontColor,
                                      width: .7
                                    )
                                  )
                                ),
                                child: ListTile(
                                  leading: Icon(
                                    Icons.question_answer,
                                    color: darkThemFontColor,
                                  ),
                                  title: Text(
                                    "FAQ",
                                    style: GoogleFonts.rubik(
                                      color: darkThemFontColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600
                                    ),
                                  ),
                                  titleAlignment: ListTileTitleAlignment.center,
                                  enabled: true,
                                  isThreeLine: false,
                                  onTap: (){
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(content: Text("what?"),
                                        duration: Duration(seconds: 5),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            /* General Settings End */ 
                          ],
                        )
                    ),
                  )
                ],
              );
            }
          )
        ),
    );
  }
}