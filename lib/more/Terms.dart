import 'package:blood_gp/core/constants.dart';
import 'package:flutter/material.dart';

class Terms extends StatelessWidget {
  const Terms({super.key});

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
          'الشروط والاحكام',
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
                'الشروط والأحكام لتطبيق انقاذ',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Almaria'),
              ),
              Text(
                'تم تحديث آخر مرة: [تاريخ التحديث]',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Almaria'),
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                      Text(
                        'القبول لشروط الاستخدام',
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
                      'باستخدام تطبيق التبرع بالدم، فإنك توافق على الالتزام بشروط وأحكام هذا الاتفاق. إذا كنت غير موافق على أي جزء من هذه الشروط، فلا يجوز لك استخدام التطبيق.',
                      style: TextStyle(fontFamily: 'Almaria'),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                      Text(
                        'الأهلية',
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
                      'يجب أن تكون في سن قانونية لاستخدام هذا التطبيق وللقيام بعمليات التبرع بالدم في مراكز التبرع المشاركة.',
                      style: TextStyle(fontFamily: 'Almaria'),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                      Text(
                        ' المعلومات الشخصية ',
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
                      'يجب عليك تقديم معلومات دقيقة وصحيحة عن نفسك عند التسجيل وأثناء عملية التبرع بالدم.',
                      style: TextStyle(fontFamily: 'Almaria'),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                      Text(
                        ' استخدام المعلومات ',
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
                      'نحن نحتفظ بحق استخدام المعلومات التي تقدمها لنا لأغراض إدارة التطبيق وتحسين تجربة المستخدم وتقديم الخدمات المطلوبة.',
                      style: TextStyle(fontFamily: 'Almaria'),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                      Text(
                        'المسؤولية',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Almaria'),
                      ),
                      Text('.5',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Almaria'))
                    ]),
                    SizedBox(height: 4),
                    Text(
                      'نحن لسنا مسؤولين عن أي تأخير أو عدم وصول للتبرع بالدم بسبب مشاكل تقنية أو أخرى تعتبر خارجة عن سيطرتنا.',
                      style: TextStyle(fontFamily: 'Almaria'),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                      Text(
                        'التغييرات والتعديلات',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Almaria'),
                      ),
                      Text('.6',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Almaria'))
                    ]),
                    SizedBox(height: 4),
                    Text(
                      'نحتفظ بحق تغيير أو تعديل هذه الشروط والأحكام في أي وقت دون إشعار مسبق، ويجب عليك مراجعة هذه الشروط بانتظام.',
                      style: TextStyle(fontFamily: 'Almaria'),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
