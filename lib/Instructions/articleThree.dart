import 'package:blood_gp/core/constants.dart';
import 'package:flutter/material.dart';

class articleThree extends StatelessWidget {
  const articleThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          FractionallySizedBox(
            widthFactor: 1.0,
            child: Image.asset(
              'assets/images/side-effects-of-donating-blood 2.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 40,
            left: 10,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffF8DFE9),
              ),
              padding: EdgeInsets.all(0),
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: kMainColor,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional.topStart,
            child: Padding(
              padding: const EdgeInsets.only(top: 250.0),
              child: SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),
                    ),
                  ),
                  padding: const EdgeInsets.all(16.0),
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'الأمور التي يجب مراعاتها قبل التبرع بالدم',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Almaria',
                            fontSize: 20.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 16.0),
                        Text(
                          '1. التأكد من الصحة الجيدة:',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Almaria'),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'من المهم أن تكون في حالة صحية جيدة قبل التبرع بالدم. إذا كنت تعاني من نزلات البرد أو الأمراض الأخرى، فقد تؤثر على جودة الدم الذي تتبرع به وتجعل التبرع غير ملائم.',
                          style: TextStyle(fontFamily: 'Almaria'),
                        ),
                        SizedBox(height: 16.0),
                        Text(
                          '2. الحصول على قسط كافٍ من النوم:',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Almaria'),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'يجب عليك التأكد من الحصول على كمية كافية من النوم قبل التبرع بالدم. النوم الجيد يساعد على تجديد الطاقة ويساعد في تقليل الشعور بالإرهاق بعد التبرع.',
                          style: TextStyle(fontFamily: 'Almaria'),
                        ),
                        SizedBox(height: 16.0),
                        Text(
                          '3. شرب السوائل بكميات كافية:',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Almaria'),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'تأكد من شرب كميات كافية من الماء قبل التبرع بالدم. السوائل تساعد في ترطيب الجسم وجعل عملية التبرع أكثر سهولة.',
                          style: TextStyle(fontFamily: 'Almaria'),
                        ),
                        SizedBox(height: 16.0),
                        Text(
                          '4. تناول وجبة مغذية قبل التبرع:',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Almaria'),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'تناول وجبة متوازنة تحتوي على البروتين والكربوهيدرات قبل التبرع بالدم. هذا يمكن أن يساعد في منع الدوخة والإغماء أثناء عملية التبرع.',
                          style: TextStyle(fontFamily: 'Almaria'),
                        ),
                        SizedBox(height: 16.0),
                        Text(
                          '5. تجنب المشروبات المنبهة:',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Almaria'),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'تجنب تناول المشروبات التي تحتوي على الكافيين مثل القهوة والشاي قبل التبرع بالدم. الكافيين قد يؤثر على ضغط الدم ويجعل عملية التبرع أكثر صعوبة.',
                          style: TextStyle(fontFamily: 'Almaria'),
                        ),
                        SizedBox(height: 16.0),
                        Text(
                          '6. تجنب الأنشطة البدنية الشاقة قبل التبرع:',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Almaria'),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'تجنب ممارسة التمارين الرياضية الشاقة أو رفع الأثقال قبل التبرع بالدم. النشاط البدني الشديد قبل التبرع قد يؤدي إلى انخفاض مستويات الحديد في الجسم.',
                          style: TextStyle(fontFamily: 'Almaria'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
