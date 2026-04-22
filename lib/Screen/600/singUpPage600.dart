// ignore_for_file: non_constant_identifier_names, unused_local_variable, camel_case_types

import 'package:atel/Screen/600/logInPage600.dart';
import 'package:atel/componnent/600/Emailfield.dart';
import 'package:atel/componnent/600/GisterClick.dart';
import 'package:atel/componnent/600/condtion.dart';
import 'package:atel/componnent/600/passwordfield.dart';
import 'package:atel/componnent/600/terms.dart';
import 'package:atel/componnent/600/usernameFeild.dart';
import 'package:atel/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const singUpPage600());
}

class singUpPage600 extends StatefulWidget{
  const singUpPage600({super.key});


  @override
  State<singUpPage600> createState() => _singUpPage600();
}



class _singUpPage600 extends State<singUpPage600> {



  bool darkThem = false;
  bool isTrue = true;
  late var darkThemBackground = darkThem == true ? Color(0xff030b26) : Color(0xff89fafa);
  late var darkThemFalseBackground = darkThem == false ? Color(0xff030b26) : Color(0xff89fafa);
  late var darkThemdisablebutton = darkThem == true ? Color.fromARGB(157, 3, 11, 38) : Color.fromARGB(162, 121, 254, 250);
  late var darkThemFontColor = darkThem == true ? Color(0xfff2f2f2) : Color(0xff333333);
  late var darkThemFalseFontColor = darkThem == false ? Color(0xfff2f2f2) : Color(0xff333333);
  late var darkThemSecBacgrounColor = darkThem == false ? Color(0xfff2f2f2) : Color(0xff333333);
  late var darkThemborder = darkThem == true ? Color(0xfff2f2f2) : Color(0xff333333);
  late var darkFalseThemborder = darkThem == false ? Color(0xfff2f2f2) : Color(0xff333333);
  late var darkThemerrorborder = darkThem == false ? Colors.red : Colors.redAccent;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confpasswordController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController muneController = TextEditingController();
  GlobalKey<FormState> singUpState = GlobalKey();
  bool chval = false;
  bool isSelected = false;
  bool isSelected2 = false;
  String? selectedGovernorate;
  final List<DropdownMenuEntry<String>> iraqGovernorates = [
  DropdownMenuEntry(value: "بغداد", label: "بغداد"),
  DropdownMenuEntry(value: "البصرة", label: "البصرة"),
  DropdownMenuEntry(value: "نينوى", label: "نينوى"),
  DropdownMenuEntry(value: "أربيل", label: "أربيل"),
  DropdownMenuEntry(value: "النجف", label: "النجف"),
  DropdownMenuEntry(value: "كربلاء", label: "كربلاء"),
  DropdownMenuEntry(value: "الأنبار", label: "الأنبار"),
  DropdownMenuEntry(value: "بابل", label: "بابل"),
  DropdownMenuEntry(value: "ذي قار", label: "ذي قار"),
  DropdownMenuEntry(value: "ديالى", label: "ديالى"),
  DropdownMenuEntry(value: "كركوك", label: "كركوك"),
  DropdownMenuEntry(value: "واسط", label: "واسط"),
  DropdownMenuEntry(value: "ميسان", label: "ميسان"),
  DropdownMenuEntry(value: "المثنى", label: "المثنى"),
  DropdownMenuEntry(value: "صلاح الدين", label: "صلاح الدين"),
  DropdownMenuEntry(value: "دهوك", label: "دهوك"),
  DropdownMenuEntry(value: "السليمانية", label: "السليمانية"),
  DropdownMenuEntry(value: "القادسية", label: "القادسية"),
];


bool canSubmit() {
  return usernameController.text.trim().isNotEmpty &&
      emailController.text.trim().isNotEmpty &&
      passwordController.text.trim().isNotEmpty &&
      confpasswordController.text.trim().isNotEmpty &&
      selectedGovernorate != null &&
      (isSelected || isSelected2) &&
      chval == true;
}

@override
  void initState() {
    super.initState();

    usernameController.addListener(() => setState(() {}));
    emailController.addListener(() => setState(() {}));
    passwordController.addListener(() => setState(() {}));
    confpasswordController.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {

    final bool isValid =
    usernameController.text.isNotEmpty &&
    emailController.text.isNotEmpty &&
    passwordController.text.isNotEmpty &&
    confpasswordController.text.isNotEmpty &&
    selectedGovernorate != null &&
    (isSelected || isSelected2) &&
    chval;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LayoutBuilder(builder : (context, constraints){
        double widthPage = constraints.maxWidth;
        double heightPage = constraints.maxHeight;
        return Scaffold(
          backgroundColor: darkThemBackground,
          body: SafeArea(
            child: Center(
  child: Column(
    children: [
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
                  builder: (context) => logInPage600(),
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

      Container(
        margin: EdgeInsets.only(top: heightPage * .03),
        child: Text(
          "انشئ حسابكَ بكل سهولة",
          style: GoogleFonts.rubik(
            color: darkThemFontColor,
            fontWeight: FontWeight.w500,
            fontSize: widthPage * .04
          ),
        ),
      ),

      Expanded(
        child: SingleChildScrollView(
          child: Column(
            children: [

              Container(
                width: widthPage,
                margin: EdgeInsets.only(top: 16, right: 12, left: 12),
                decoration: BoxDecoration(
                  color: darkThemSecBacgrounColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )
                ),
                child: Column(
                  children: [

                    Container(
                      margin: EdgeInsets.only(top: 24),
                      width: widthPage * .5,
                      height: 75,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: darkThemFontColor,
                          width: 1.3
                        )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [

                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: isSelected == true 
                                    ? darkThemBackground 
                                    : darkThemSecBacgrounColor,
                                border: Border(
                                  right: BorderSide(
                                    color: darkThemFontColor,
                                    width: 1.3
                                  )
                                )
                              ),
                              child: MaterialButton(
                                onPressed: (){
                                  setState(() {
                                    isSelected = true;
                                    isSelected2 = false;
                                  });
                                },
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(Icons.work,
                                        size: 24,
                                        color: darkThemFontColor),
                                    Text(
                                      "صاحب عمل",
                                      style: GoogleFonts.rubik(
                                        color: darkThemFontColor,
                                        fontSize: widthPage * .02,
                                        fontWeight: FontWeight.w500
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ),

                          Expanded(
                            child: Container(
                              color: isSelected2 == true 
                                  ? darkThemBackground 
                                  : darkThemSecBacgrounColor,
                              child: MaterialButton(
                                onPressed: (){
                                  setState(() {
                                    isSelected2 = true;
                                    isSelected = false;
                                  });
                                },
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(Icons.person,
                                        size: 24,
                                        color: darkThemFontColor),
                                    Text(
                                      "عامل",
                                      style: GoogleFonts.rubik(
                                        color: darkThemFontColor,
                                        fontSize: widthPage * .02,
                                        fontWeight: FontWeight.w500
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ),
                        ],
                      ),
                    ),

                    Form(
                      key: singUpState,
                      child: Column(
                        children: [

                          usernameField600(
                            fieldTitle: "أسم المستخدم",
                            darkThemFontColor: darkThemFontColor,
                            widthPage: widthPage,
                            isTrue: false,
                            darkThemborder: darkThemborder,
                            darkThemerrorborder: darkThemerrorborder,
                            controller: usernameController,
                            hint: "أكتب اسمك هنا",
                            onChanged: (val) {
                              setState(() {});
                            },
                          ),

                          Emailfield600(
                            controller: emailController,
                            hint: "ضع البريد الألكتروني",
                            fieldTitle: ":البريد الألكتروني",
                            darkThemFontColor: darkThemFontColor,
                            widthPage: widthPage,
                            isTrue: false,
                            darkThemborder: darkThemborder,
                            darkThemerrorborder: darkThemerrorborder,
                            onChanged: (val) {
                              setState(() {});
                            },
                          ), 

                          Passwordfield600(
                            controller: confpasswordController,
                            hint: "ضع كلمة مرورك",
                            fieldTitle: ":كلمة المرور",
                            darkThemFontColor: darkThemFontColor,
                            widthPage: widthPage,
                            isTrue: isTrue,
                            darkThemborder: darkThemborder,
                            darkThemerrorborder: darkThemerrorborder,
                            showIcon: true,
                            onPressed: () {
                              setState(() {
                                isTrue = !isTrue;
                              });
                            },
                            onChanged: (val) {
                              setState(() {});
                            },
                          ),

                          Passwordfield600(
                            controller: passwordController,
                            hint: "أكد كلمة المرور التي وضعتها",
                            fieldTitle: ":تأكيد كلمة المرور",
                            darkThemFontColor: darkThemFontColor,
                            widthPage: widthPage,
                            isTrue: isTrue,
                            darkThemborder: darkThemborder,
                            darkThemerrorborder: darkThemerrorborder,
                            showIcon: false,
                            onPressed: () {
                              setState(() {
                                isTrue = !isTrue;
                              });
                            },
                            onChanged: (val) {
                              setState(() {});
                            },
                          ),
                        ],
                      )
                    ),

                    // dropdownmune
                    Center(
                      child: Container(
                          margin: EdgeInsets.only(top: 12),
                          child: DropdownMenu<String>(
                            hintText: "اختر المحافظة",
                            textAlign: TextAlign.right,
                            controller: muneController,
                            leadingIcon: Icon(
                              Icons.home_sharp,
                              color: darkThemFontColor,
                            ),
                            textStyle: GoogleFonts.rubik(
                                        color: darkThemFontColor,
                                        fontSize: widthPage * .02,
                                        fontWeight: FontWeight.w500
                                      ),
                            width: widthPage * .5,
                            label: Text("اختر المحافظة",
                            style: GoogleFonts.rubik(
                                        color: darkThemFontColor,
                                        fontSize: widthPage * .02,
                                        fontWeight: FontWeight.w500
                                      ),
                            ),
                            initialSelection: selectedGovernorate,
                            onSelected: (value) {
                              setState(() {
                                selectedGovernorate = value;
                              });
                            },
                            dropdownMenuEntries: iraqGovernorates,
                          ),
                        ),
                    ),

                    Container(
                            margin: EdgeInsets.only(top: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                

                            Condtion600(
                              darkThemFontColor: darkThemFontColor,
                              heightPage: heightPage,
                              widthPage: widthPage,
                              darkThemFalseFontColor:
                              darkThemFalseFontColor
                              ),

                            gisterClick600(
                              darkThemFontColor: darkThemFontColor,
                              isUnderline: false,
                              text: " و ",
                              onTap: (){

                              }
                              ),

                            terms600(
                              darkThemFontColor: darkThemFontColor,
                              heightPage: heightPage,
                              widthPage: widthPage,
                              darkThemFalseFontColor: darkThemFalseFontColor,
                              ),

                            gisterClick600(
                              darkThemFontColor: darkThemFontColor,
                              isUnderline: false,
                              text: " هل انت توافق على",
                              onTap: (){

                              }
                              ),

                            Checkbox(
                                value: chval,
                                onChanged: (val){
                                  setState(() {
                                    chval = val!;
                                  });
                                },
                                fillColor: WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
                                      if (states.contains(WidgetState.disabled)) {
                                        if(darkThem == true){
                                          return darkThemFontColor;
                                        }
                                      }
                                      return darkThemBackground;
                                    }),
                                    checkColor: darkThemFontColor,
                                    activeColor: darkThemFontColor,
                                  ),
                              ],
                            ),
                          ),

                    /// زر
                    Container(
                          margin: EdgeInsets.only(top: 12, bottom: 12),
                          width: widthPage * 0.5,
                          height: 50,
                          child: MaterialButton(onPressed: () async {
                            if (singUpState.currentState!.validate()) {
    try {
      /// 1. تحقق من كلمة المرور
      if (passwordController.text != confpasswordController.text) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("كلمتا المرور غير متطابقتين")),
        );
        return;
      }

      /// 2. تحقق من المحافظة
      if (selectedGovernorate == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("اختر المحافظة")),
        );
        return;
      }

      /// 3. تحقق من نوع الحساب
      if (!isSelected && !isSelected2) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("اختر نوع الحساب")),
        );
        return;
      }

      /// 4. إنشاء حساب Firebase Auth
      UserCredential userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );

      String uid = userCredential.user!.uid;

      /// 5. تحديد نوع الحساب
      String accountType = isSelected ? "work" : "worker";


      /// 7. إنشاء الكولكشن وحفظ البيانات
      await FirebaseFirestore.instance
          .collection("users")
          .doc(uid)
          .set({
        "uid": uid,
        "username": usernameController.text.trim(),
        "email": emailController.text.trim(),
        "governorate": selectedGovernorate,
        "accountType": accountType,
        "createdAt": FieldValue.serverTimestamp(),
        "freepost": "10",
        "verifird": "not verifird"
      });

      /// 8. نجاح
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("تم إنشاء الحساب بنجاح,أكد الحساب ثم سجل الدخول")),
      );
      userCredential.user!.sendEmailVerification();

    } on FirebaseAuthException catch (e) {

      String message = "";

      if (e.code == 'email-already-in-use') {
        message = "البريد مستخدم مسبقاً";
      } else if (e.code == 'weak-password') {
        message = "كلمة المرور ضعيفة";
      } else if (e.code == 'invalid-email') {
        message = "بريد غير صالح";
      } else {
        message = "حدث خطأ";
      }

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message)),
      );
    }
  }
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.all(Radius.circular(20)),
                            side: BorderSide(
                              width: 1.2,
                              color: darkThemFontColor
                            )
                          ),
                          color: darkThemBackground,
                          disabledColor: darkThemdisablebutton,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.login_rounded,
                              color: darkThemFontColor,
                              ),
                              Text("أنشاء حساب جديد",
                              style: GoogleFonts.rubik(
                                    color: darkThemFontColor,
                                    fontWeight: FontWeight.w500,
                                    fontSize: widthPage * .032
                                  ),
                              ),
                            ],
                          ),
                          ),
                         ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  ),
),
            )
        ); 
      }),
    );
  }
}