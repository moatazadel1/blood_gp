import 'package:blood_gp/core/constants.dart';
import 'package:flutter/material.dart';

class articleTwo extends StatelessWidget {
  const articleTwo({Key? key}) : super(key: key);

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
                          'ما يجب أن يعرفه كل متبرع',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Almaria',
                            fontSize: 20.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 16.0),
                        Text(
                          '1. ما هي الأشياء التي يجب عليَّ القيام بها قبل التبرع بالدم؟',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Almaria'),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'قبل التبرع بالدم، يُفضَّل أن تتناول وجبة خفيفة تحتوي على البروتين والكربوهيدرات والسوائل. كما يجب أن تحصل على قسط كافٍ من النوم وتجنب المشروبات المنبهة مثل القهوة.',
                          style: TextStyle(fontFamily: 'Almaria'),
                        ),
                        SizedBox(height: 16.0),
                        Text(
                          '2. هل يجب عليَّ تناول أدوية معينة قبل التبرع بالدم؟',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Almaria'),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'في العادة، يُسمح بالتبرع بالدم للأشخاص الذين يتناولون أدوية معينة، ولكن يمكن أن يُطلب منك إعطاء تفاصيل حول الأدوية التي تتناولها قبل التبرع.',
                          style: TextStyle(fontFamily: 'Almaria'),
                        ),
                        SizedBox(height: 16.0),
                        Text(
                          '3. هل يؤثر التبرع بالدم على صحتي؟',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Almaria'),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'عمومًا، لا يوجد خطر كبير على الصحة بعد التبرع بالدم. ومع ذلك، يمكن أن يشعر بعض الأشخاص بالدوخة أو الإرهاق بعد التبرع، ولكن هذه الأعراض تتلاشى عادة في غضون بضع ساعات. ',
                          style: TextStyle(fontFamily: 'Almaria'),
                        ),
                        SizedBox(height: 16.0),
                        Text(
                          '4. هل يمكنني التبرع بالدم إذا كنت مريضًا؟',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Almaria'),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'تعتمد الإمكانية على نوع وشدة المرض. بعض الأمراض يمكن أن تعتبر عائقًا للتبرع بالدم، بينما يمكن أن يكون التبرع آمنًا للأشخاص الذين يعانون من أمراض مزمنة بعينها. ',
                          style: TextStyle(fontFamily: 'Almaria'),
                        ),
                        SizedBox(height: 16.0),
                        Text(
                          '5. هل يمكنني التبرع بالدم إذا كنت حاملاً؟',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Almaria'),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'عادةً، يُحظر على النساء الحوامل التبرع بالدم، حيث يمكن أن يكون لذلك تأثير سلبي على الحمل.',
                          style: TextStyle(fontFamily: 'Almaria'),
                        ),
                        SizedBox(height: 16.0),
                        Text(
                          '6. هل يمكنني التبرع بالدم إذا كنت متعبًا أو مجهدًا؟',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Almaria'),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'يُفضَّل عدم التبرع بالدم إذا كنت متعبًا أو مجهدًا بشكل كبير. من الأفضل أن تكون في حالة جيدة من النوم والراحة قبل التبرع.',
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
