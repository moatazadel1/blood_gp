import 'package:flutter/material.dart';
import 'package:blood_gp/core/constants.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: kMainColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'سياسة الخصوصية',
          style: TextStyle(fontSize: 21, fontFamily: 'Almaria'),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'سياسة الخصوصية لتطبيق انقاذ',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Almaria'),
              ),
              SizedBox(height: 16),
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Text(
                  ' جمع المعلومات ',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Almaria'),
                ),
                Text('.1',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Almaria'))
              ]),
              SizedBox(height: 4),
              Text(
                'نحن نجمع معلوماتك الشخصية عندما تستخدم تطبيق التبرع بالدم. هذه المعلومات تشمل الاسم، ورقم الهاتف، وعنوان البريد الإلكتروني، وفصيلة الدم.',
                style: TextStyle(fontFamily: 'Almaria'),
                textAlign: TextAlign.right,
              ),
              SizedBox(height: 16),
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Text(
                  ' استخدام المعلومات ',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Almaria'),
                ),
                Text('.2',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Almaria'))
              ]),
              SizedBox(height: 4),
              Text(
                'نحن نستخدم المعلومات التي نجمعها لتسهيل عملية التبرع بالدم وتوفير الدعم اللازم للمتبرعين والمراكز الطبية المشاركة.',
                style: TextStyle(fontFamily: 'Almaria'),
                textAlign: TextAlign.right,
              ),
              SizedBox(height: 16),
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Text(
                  ' حماية المعلومات ',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Almaria'),
                ),
                Text('.3',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Almaria'))
              ]),
              SizedBox(height: 4),
              Text(
                'نحن نحترم خصوصيتك ونحمي معلوماتك الشخصية بأقصى درجات الأمان والسرية. لن نشارك معلوماتك مع أي جهة ثالثة دون موافقتك الصريحة.',
                style: TextStyle(fontFamily: 'Almaria'),
                textAlign: TextAlign.right,
              ),
              SizedBox(height: 16),
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Text(
                  ' الموافقة ',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Almaria'),
                ),
                Text('.4',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Almaria'))
              ]),
              SizedBox(height: 4),
              Text(
                'باستخدام تطبيق التبرع بالدم، فإنك توافق على جمع واستخدام معلوماتك وفقًا لهذه السياسة. تأكد من مراجعة هذه السياسة بانتظام للتأكد من مواكبتك لأي تغييرات. شكرًا لاستخدامك تطبيق التبرع بالدم.',
                style: TextStyle(fontFamily: 'Almaria'),
                textAlign: TextAlign.right,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
