// ignore_for_file: unnecessary_string_interpolations, avoid_unnecessary_containers, unused_local_variable

import 'package:atel/Screen/360/pages/peaces/details.dart';
import 'package:atel/Screen/360/pages/seetingspage.dart';
import 'package:atel/Screen/360/swichpages.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

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
  TextEditingController nameController = TextEditingController();
  GlobalKey<FormState> LoginState = GlobalKey();
  bool gevSelection = false;

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

  final userid = FirebaseAuth.instance.currentUser!.uid;

  bool isEdit = false;
  String name = "name";
  
   bool isEditingGev = false;
   bool isEditingVirifide = false;
   bool isEditingWork = false;
   bool isEditingSex = false;
   bool isEditingDep = false;
   bool isEditingNum = false;

  @override
  void initState() {
    super.initState();
    nameController.text = name;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkThemFalseFontColor,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            double widthpage = constraints.maxWidth;
            double heightpage = constraints.maxHeight;
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                /* back button Start */
                  Container(
                  margin: EdgeInsets.all(12),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
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
                        
                        /* Name Section Start */
                        Container(
                          alignment: Alignment.centerRight,
                          margin: EdgeInsets.only(left: 8),
                          child: Text(
                            "$name",
                            textAlign: TextAlign.end,
                            style: GoogleFonts.rubik(
                              fontSize: widthpage * 0.05,
                              fontWeight: FontWeight.w700,
                              color: darkThemFontColor
                            ),
                          ),
                        )
                        /* Name Section End */
                      ],
                    ),
                  )
                ),
                /* Back Button End */

                /* Main Content Start */
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        /* Pfofile image and background Start */
                            Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Positioned(
                                  child: Container(
                                  width: widthpage,
                                  height: heightpage * 0.2,
                                  color: darkThemBackground,
                                  ),
                                ),
                  
                                Positioned(
                                  top: heightpage * 0.14,
                                  left: widthpage * 0.02,
                                  child: Container(
                                  width: 75,
                                  height: 75,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(1000)),
                                    color: darkThemFalseFontColor,
                                    border: Border.all(
                                      color: darkThemFontColor,
                                      width: 1.2
                                    )
                                  ),
                                  child: Icon(
                                    Icons.person,
                                    color: darkThemFontColor,
                                    size: 38,
                                  ),
                                ),
                                ),
                                
                                Positioned(
                                  top: isEdit == true ? heightpage * 0.13 : heightpage * 0.16,
                                  left: widthpage * 0.23,
                                  child: Container(
                                    width: 250,
                                    height: 60,
                                  child: isEdit == true ? TextFormField(
                                    maxLines: 1,
                                    style: GoogleFonts.rubik(
                                      fontSize: widthpage * 0.03,
                                      fontWeight: FontWeight.w700,
                                      color: darkThemFontColor
                                    ),
                                    autovalidateMode: AutovalidateMode.onUserInteraction,
                                    controller: nameController,
                                    validator: (value) {
                                      if(value!.isEmpty){
                                        return " لا يمكن ان يكون فارغا";
                                      }
                                    },
                                    decoration: InputDecoration( 
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          width: 1.2,
                                          color: darkThemFontColor
                                        )
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          width: 1.2,
                                          color: darkThemerrorborder
                                        )
                                      ),
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          width: 1.2,
                                          color: darkThemFontColor
                                        )
                                      ),
                                    ),
                                  ) : Text(
                                    "$name",
                                    style: GoogleFonts.rubik(
                                      fontSize: widthpage * 0.05,
                                      fontWeight: FontWeight.w700,
                                      color: darkThemFontColor
                                    ),
                                  )
                                  )
                                  ),
                                  Positioned(
                                    top: heightpage * 0.01,
                                    right: widthpage * 0.015,
                                    child: isEdit == true ? 
                                    IconButton(onPressed: (){
                                      setState(() {
                                        isEdit = false;
                                        name = nameController.text;
                                      });
                                    }, icon: Icon(
                                      Icons.done,
                                      color: darkThemFontColor,
                                    )
                                    ) :
                                     IconButton(
                                      onPressed: (){
                                        setState(() {
                                          isEdit = true;
                                        });
                                      }, 
                                      icon: Icon(
                                        Icons.edit,
                                        color: darkThemFontColor,
                                      )
                                      )
                                  )
                              ],
                            ),
                        /* Pfofile image and background End */
                  
                        /* Details Section Start */
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(height: 48,),
                            detailspeace(
                              title: "المحافظة",
                             widthpage: widthpage, 
                             darkThemFontColor: darkThemFontColor, 
                             subtitle: "بغداد", 
                             onPressed: (){
                              setState(() {
                                isEditingGev = true;
                              });
                             },
                             ),
                  
                             SizedBox(height: 12,),
                  
                             detailspeace(
                              title: "توثيق الحساب",
                             widthpage: widthpage, 
                             darkThemFontColor: darkThemFontColor, 
                             subtitle: "غير موثق", 
                             onPressed: (){
                  
                             },
                             ),
                  
                             SizedBox(height: 12,),
                  
                             detailspeace(
                              title: "نوع الملف",
                             widthpage: widthpage, 
                             darkThemFontColor: darkThemFontColor, 
                             subtitle: "عامل", 
                             onPressed: (){
                  
                             },
                             ),
                  
                             SizedBox(height: 12,),
                  
                             detailspeace(
                              title: "الجنس",
                             widthpage: widthpage, 
                             darkThemFontColor: darkThemFontColor, 
                             subtitle: "ذكر", 
                             onPressed: (){
                              
                             },
                             ),
                  
                             SizedBox(height: 12,),
                  
                             detailspeace(
                              title: "الشهادات",
                             widthpage: widthpage, 
                             darkThemFontColor: darkThemFontColor, 
                             subtitle: "دبلوم هندسة سيارات", 
                             onPressed: (){
                  
                             },
                             ),
                  
                             SizedBox(height: 12,),
                  
                             detailspeace(
                              title: "التواصل",
                             widthpage: widthpage, 
                             darkThemFontColor: darkThemFontColor, 
                             subtitle: "077xxxxxxxx", 
                             onPressed: (){
                  
                             },
                             ),

                             SizedBox(height: 12,),

                             Container(
                              color: darkThemBackground,
                              width: widthpage,
                              margin: EdgeInsets.only(right: 8),
                              child: Text(
                                "ملاحظة: ان كان الحساب غير موثق ننصح بعد قبول اي عمل او وظيفة*",
                                textAlign: TextAlign.right,
                                style: GoogleFonts.rubik(
                                  fontWeight: FontWeight.bold,
                                  fontSize: widthpage * 0.025,
                                  color: darkThemerrorborder
                                ),
                              ),
                             )
                          ],
                        )
                        /* Details Section Start */
                      ],
                    ),
                    ),
                )
                /* Main Content End */
              ],
            );
          },
        ),
        
        ),
    );
  }
}