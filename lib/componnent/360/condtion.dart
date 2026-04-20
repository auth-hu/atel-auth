// ignore_for_file: unnecessary_string_interpolations, camel_case_types, prefer_typing_uninitialized_variables, strict_top_level_inference

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'GisterClick.dart';

class Condtion extends StatelessWidget {
  final darkThemFontColor;
  final heightPage;
  final widthPage;
  final darkThemFalseFontColor;

  final String termsOfUse = "شروط الاستخدام\n\nمرحبًا بك في التطبيق. باستخدامك لهذا التطبيق، فإنك توافق على الالتزام بشروط الاستخدام التالية. إذا كنت لا توافق على هذه الشروط، يرجى عدم استخدام التطبيق.\n\n1. القبول بالشروط\nباستخدامك للتطبيق، فإنك تقر بأنك قرأت هذه الشروط وفهمتها وتوافق على الالتزام بها.\n\n2. استخدام التطبيق\nيُسمح لك باستخدام التطبيق لأغراض قانونية فقط. يُمنع استخدام التطبيق لأي نشاط غير قانوني أو يسبب ضررًا للتطبيق أو للمستخدمين الآخرين.\n\n3. حساب المستخدم\nفي حال إنشاء حساب، فأنت مسؤول عن الحفاظ على سرية معلومات تسجيل الدخول الخاصة بك، وتتحمل كامل المسؤولية عن أي نشاط يتم من خلال حسابك.\n\n4. المحتوى\nجميع المحتويات داخل التطبيق مملوكة للتطبيق أو مرخصة له. لا يجوز نسخ أو إعادة نشر أو تعديل أي محتوى دون إذن مسبق.\n\n5. إخلاء المسؤولية\nيتم تقديم التطبيق \"كما هو\" دون أي ضمانات. لا نضمن أن التطبيق سيعمل بدون أخطاء أو بشكل مستمر.\n\n6. حدود المسؤولية\nلن نكون مسؤولين عن أي أضرار مباشرة أو غير مباشرة تنتج عن استخدام التطبيق.\n\n7. التعديلات على الشروط\nنحتفظ بالحق في تعديل شروط الاستخدام في أي وقت. استمرارك في استخدام التطبيق بعد التعديل يعني موافقتك على الشروط الجديدة.\n\n8. إنهاء الخدمة\nيجوز لنا إيقاف أو إنهاء حسابك أو وصولك للتطبيق في أي وقت في حال مخالفة الشروط.\n\n9. القانون المعمول به\nتخضع هذه الشروط للقوانين المحلية المعمول بها.\n\nباستخدامك لهذا التطبيق، فإنك توافق على جميع ما ورد في شروط الاستخدام هذه.";



  const Condtion({
    super.key,
    required this.darkThemFontColor,
    required this.heightPage,
    required this.widthPage,
    required this.darkThemFalseFontColor,
  });


  @override
  Widget build(BuildContext context) {
    return  gisterClick(
          darkThemFontColor: darkThemFontColor,
          isUnderline: true,
          text: "شروط الأستخدام",
          onTap: (){
            showBottomSheet(context: context,
            builder: (context) {
              return Container(
                decoration: BoxDecoration(
                color: darkThemFontColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                )
                ),
                height: heightPage * 0.65,
                width: widthPage,
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: darkThemFalseFontColor,
                        borderRadius: BorderRadius.all(Radius.circular(50))
                      ),
                      margin: EdgeInsets.only(top: 4),
                      padding: EdgeInsets.all(5),
                      width: 200,
                      height: 5,
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      margin: EdgeInsets.only(
                        top: 12,
                        right: 18
                      ),
                      child: Text(
                        ":شروط الأستخدام",
                        style: GoogleFonts.rubik(
                          color: darkThemFalseFontColor,
                          fontWeight: FontWeight.w500,
                          fontSize: widthPage * .05
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      margin: EdgeInsets.only(left: 100, top: 2),
                      width: widthPage * .8,
                      child: Divider(
                        radius: BorderRadius.all(Radius.circular(50)),
                        color: darkThemFalseFontColor,
                        thickness: 1.5,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 4),
                      padding: EdgeInsets.all(12),
                      height: heightPage * .53,
                      child: ListView(
                        children: [
                          Text(
                            "$termsOfUse",
                            textAlign: TextAlign.right,
                            style: GoogleFonts.rubik(
                            color: darkThemFalseFontColor,
                            fontWeight: FontWeight.w500,
                            fontSize: widthPage * .03
                          ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              );
            }
            );
        }
      );
  }
}