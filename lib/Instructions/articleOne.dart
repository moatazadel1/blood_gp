import 'package:blood_gp/core/constants.dart';
import 'package:flutter/material.dart';

class articleOne extends StatelessWidget {
  const articleOne({Key? key}) : super(key: key);

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
                          'نصائح وإرشادات مهمة',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Almaria',
                            fontSize: 20.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 16.0),
                        Text(
                          'التبرع بالدم يعتبر فعلاً إنسانياً نبيلًا يمكن أن ينقذ العديد من الأرواح. ومع ذلك، يتطلب التبرع بالدم الاستعداد النفسي والجسدي المناسب لضمان تجربة تبرع ناجحة ومريحة للمتبرع والمتلقي. إليك بعض النصائح والإرشادات الهامة للاستعداد للتبرع بالدم:',
                          style: TextStyle(fontFamily: 'Almaria'),
                          textAlign: TextAlign.right,
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'الاستعداد النفسي:',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Almaria'),
                          textAlign: TextAlign.right,
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          '1. تأكد من الاسترخاء: قبل الذهاب للتبرع بالدم، حاول الاسترخاء وتهدئة أعصابك. قد يكون التوتر طبيعياً، ولكن من المهم أن تتذكر أن التبرع بالدم يمكن أن يساهم في إنقاذ حياة شخص آخر.',
                          style: TextStyle(fontFamily: 'Almaria'),
                          textAlign: TextAlign.right,
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          '2. التغذية الجيدة: تناول وجبة متوازنة قبل التبرع بالدم، تحتوي على كمية كافية من البروتين والكربوهيدرات. يمكن أن يساعد هذا في منع الدوخة أو الإغماء أثناء عملية التبرع.',
                          style: TextStyle(fontFamily: 'Almaria'),
                          textAlign: TextAlign.right,
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'الاستعداد الجسدي:',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Almaria'),
                          textAlign: TextAlign.right,
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          '1. شرب السوائل: قم بشرب كمية كافية من الماء قبل التبرع بالدم. البقاء جيد الترطيب يساعد على سهولة سحب الدم ويمكن أن يقلل من آثار الجفاف.',
                          style: TextStyle(fontFamily: 'Almaria'),
                          textAlign: TextAlign.right,
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          '2. تجنب المشروبات المنبهة: تجنب تناول المشروبات التي تحتوي على الكافيين مثل القهوة والشاي قبل التبرع بالدم، حيث يمكن أن تؤثر على ضغط الدم وجعل العملية أكثر صعوبة.',
                          style: TextStyle(fontFamily: 'Almaria'),
                          textAlign: TextAlign.right,
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          '3. الراحة بعد التبرع: بعد عملية التبرع، قم بالاسترخاء وأعطِ جسمك الوقت الكافي للاسترداد. تجنب ممارسة التمارين الرياضية الشاقة أو رفع الأثقال لبضع ساعات بعد التبرع.',
                          style: TextStyle(fontFamily: 'Almaria'),
                          textAlign: TextAlign.right,
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          '4. تجنب التدخين: تجنب التدخين قبل وبعد التبرع بالدم، حيث يمكن أن يؤثر على جودة الدم وعلى العملية بشكل عام.',
                          style: TextStyle(fontFamily: 'Almaria'),
                          textAlign: TextAlign.right,
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
