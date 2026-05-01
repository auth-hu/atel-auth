// ignore_for_file: unnecessary_string_interpolations, non_constant_identifier_names, camel_case_types

import 'dart:async';
import 'package:atel/firebase_options.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
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


  Future<bool> isWorker() async {
  final user= FirebaseFirestore.instance.collection('user').snapshots();
  final userid = FirebaseAuth.instance.currentUser!.uid;
  final query = await FirebaseFirestore.instance.collection('user')
  .where('uid', isEqualTo: userid).limit(1).get();

  if(query.docs.isEmpty) return false;

  final data = query.docs.first.data();
  return data['work'] == 'work';
  }
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      "الرئيسية",
                      style: GoogleFonts.rubik(
                          color: darkThemFontColor,
                          fontWeight: FontWeight.w600,
                          fontSize: widthPage * 0.06
                        ),
                    ),
                  ),
                  /* AppBar Section End */
                  StreamBuilder<QuerySnapshot>(
  stream: FirebaseFirestore.instance.collection('post').snapshots(),
  builder: (context, snapshot) {
     print("STATE: ${snapshot.connectionState}");
    print("HAS DATA: ${snapshot.hasData}");
    print("HAS ERROR: ${snapshot.hasError}");
    print("DATA: ${snapshot.data}");
    print("ERROR: ${snapshot.error}");
    if (snapshot.connectionState == ConnectionState.waiting) {
      return const Center(child: Text("جاري التحميل"));
    }
    if (snapshot.hasError) {
      return const Center(child: Text("snaps"));
    }
    if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
      return const Center(child: Text("لا يوجد بيانات حالياً"));
    }

    final docs = snapshot.data!.docs;
    final firstDoc = docs.first;

    final name = firstDoc.data() is Map
        ? (firstDoc.data() as Map<String, dynamic>)['name'] ?? 'غير معروف'
        : firstDoc.get('name');

    return Center(child: Text(name.toString()));
  },
)
                ],
              );
            }
          )
        ),
    );
  }
}