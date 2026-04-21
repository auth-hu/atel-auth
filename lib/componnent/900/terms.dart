// ignore_for_file: unnecessary_string_interpolations, camel_case_types, prefer_typing_uninitialized_variables, strict_top_level_inference

import 'package:atel/componnent/600/GisterClick.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class terms900 extends StatelessWidget {
  final darkThemFontColor;
  final heightPage;
  final widthPage;
  final darkThemFalseFontColor;

  final String agreement = "اتفاقية استخدام التطبيق\n\nمرحبًا بك في هذا التطبيق. باستخدامك للتطبيق، فإنك توافق على الالتزام بجميع الشروط والأحكام المذكورة في هذه الاتفاقية. إذا كنت لا توافق على أي جزء من هذه الشروط، يُرجى عدم استخدام التطبيق.\n\n1. استخدام التطبيق\nيُسمح لك باستخدام التطبيق لأغراض قانونية فقط، ويُمنع استخدامه بأي طريقة قد تنتهك القوانين أو اللوائح المعمول بها.\n\n2. حساب المستخدم\nقد يتطلب استخدام بعض خدمات التطبيق إنشاء حساب. أنت مسؤول عن الحفاظ على سرية معلومات حسابك، وتتحمل المسؤولية الكاملة عن جميع الأنشطة التي تتم من خلاله.\n\n3. الخصوصية\nنحن نحترم خصوصيتك. يتم جمع واستخدام المعلومات وفقًا لسياسة الخصوصية الخاصة بنا.\n\n4. المحتوى\nجميع المحتويات داخل التطبيق، بما في ذلك النصوص والتصاميم، مملوكة للتطبيق أو مرخصة له، ولا يجوز نسخها أو إعادة استخدامها دون إذن مسبق.\n\n5. إخلاء المسؤولية\nيتم توفير التطبيق \"كما هو\" دون أي ضمانات من أي نوع. نحن لا نضمن أن التطبيق سيكون خاليًا من الأخطاء أو متاحًا بشكل دائم.\n\n6. تحديد المسؤولية\nلن نكون مسؤولين عن أي أضرار مباشرة أو غير مباشرة ناتجة عن استخدام التطبيق أو عدم القدرة على استخدامه.\n\n7. التعديلات\nنحتفظ بالحق في تعديل هذه الاتفاقية في أي وقت. استمرارك في استخدام التطبيق بعد التعديلات يعني موافقتك على الشروط الجديدة.\n\n8. إنهاء الاستخدام\nيجوز لنا تعليق أو إنهاء وصولك إلى التطبيق في أي وقت دون إشعار مسبق إذا خالفت هذه الشروط.\n\n9. القانون المعمول به\nتخضع هذه الاتفاقية للقوانين المحلية المعمول بها.\n\nباستخدامك لهذا التطبيق، فإنك تقر بأنك قرأت هذه الاتفاقية وفهمتها وتوافق على الالتزام بها.";


  const terms900({
    super.key,
    required this.darkThemFontColor,
    required this.heightPage,
    required this.widthPage,
    required this.darkThemFalseFontColor,
  });


  @override
  Widget build(BuildContext context) {
    return  gisterClick600(
          darkThemFontColor: darkThemFontColor,
          isUnderline: true,
          text: "الأتفاقيات",
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
                        ":الأتفاقيات",
                        style: GoogleFonts.rubik(
                          color: darkThemFalseFontColor,
                          fontWeight: FontWeight.w500,
                          fontSize: widthPage * .02
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
                      height: heightPage * .5,
                      child: ListView(
                        children: [
                          Text(
                            "$agreement",
                            textAlign: TextAlign.right,
                            style: GoogleFonts.rubik(
                            color: darkThemFalseFontColor,
                            fontWeight: FontWeight.w500,
                            fontSize: widthPage * .01
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