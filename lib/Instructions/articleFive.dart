import 'package:blood_gp/core/constants.dart';
import 'package:flutter/material.dart';

class articleFive extends StatelessWidget {
  const articleFive({Key? key}) : super(key: key);

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
                          'أهم الاختبارات الطبية قبل التبرع بالدم',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Almaria',
                            fontSize: 20.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 16.0),
                        Text(
                          '1. اختبارات الصحة العامة:',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Almaria'),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'يتم قياس ضغط الدم ونبضات القلب وفحص درجة حرارة الجسم للتأكد من أن المتبرع في حالة صحية جيدة قبل التبرع.',
                          style: TextStyle(fontFamily: 'Almaria'),
                        ),
                        SizedBox(height: 16.0),
                        Text(
                          '2. اختبار الهيموغلوبين:',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Almaria'),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'يتم قياس مستوى الهيموغلوبين في الدم للتحقق من أن مستوياته ضمن النطاق الطبيعي. الهيموغلوبين يساعد في نقل الأكسجين إلى الأنسجة والأعضاء في الجسم.',
                          style: TextStyle(fontFamily: 'Almaria'),
                        ),
                        SizedBox(height: 16.0),
                        Text(
                          '3. فحص مستويات الحديد:',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Almaria'),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'يُجرى اختبار لمستويات الحديد في الدم للتأكد من أن المتبرع لديه مستويات كافية من الحديد، الذي يعتبر ضرورياً لإنتاج الهيموغلوبين.',
                          style: TextStyle(fontFamily: 'Almaria'),
                        ),
                        SizedBox(height: 16.0),
                        Text(
                          '4. فحص العد الكلي للخلايا الدموية:',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Almaria'),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'يتم فحص العد الكلي للخلايا الدموية للتأكد من أن المتبرع لديه عدد كافٍ من كريات الدم الحمراء والبيضاء والصفائح الدموية.',
                          style: TextStyle(fontFamily: 'Almaria'),
                        ),
                        SizedBox(height: 16.0),
                        Text(
                          '5. فحص العدوى:',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Almaria'),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'يتم فحص الدم للتأكد من عدم وجود أي علامات على العدوى، مثل الفيروسات المسببة لأمراض مثل فيروس نقص المناعة البشرية (HIV) وفيروس الالتهاب الكبدي.',
                          style: TextStyle(fontFamily: 'Almaria'),
                        ),
                        SizedBox(height: 16.0),
                        Text(
                          '6. اختبار فصيلة الدم:',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Almaria'),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'يتم تحديد فصيلة الدم وعامل Rh للمتبرع، حيث يتم مطابقتها مع فصيلة الدم المتلقي لضمان التوافق.',
                          style: TextStyle(fontFamily: 'Almaria'),
                        ),
                        SizedBox(height: 16.0),
                        Text(
                          'باستكمال هذه الاختبارات الطبية قبل التبرع، يتم ضمان سلامة المتبرع والمتلقي، ويتم تقديم هذه الهدية الثمينة للحياة بأمان وثقة. تذكر دائمًا أن التبرع بالدم يمكن أن ينقذ العديد من الأرواح، وأنك تقدم خدمة إنسانية نبيلة تستحق الاحترام والتقدير.',
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
