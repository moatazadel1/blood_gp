import 'package:blood_gp/core/constants.dart';
import 'package:flutter/material.dart';

class articleFour extends StatelessWidget {
  const articleFour({Key? key}) : super(key: key);

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
                          'الأسئلة الشائعة والإجابات حول الاستعداد للتبرع بالدم',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Almaria',
                            fontSize: 20.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 16.0),
                        Text(
                          '1. هل يجب أن أتبع نظامًا غذائيًا معينًا قبل التبرع بالدم؟',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Almaria'),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'نعم، يُفضل تناول وجبة غنية بالحديد قبل التبرع بالدم، مثل اللحوم الحمراء والفاكهة الغنية بفيتامين سي. يساعد الحديد في زيادة مستويات الهيموغلوبين في الدم ويجعل عملية التبرع أكثر نجاحًا.',
                          style: TextStyle(fontFamily: 'Almaria'),
                        ),
                        SizedBox(height: 16.0),
                        Text(
                          '2. هل يجب أن أشرب الكثير من السوائل قبل التبرع بالدم؟',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Almaria'),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'نعم، شرب كميات كافية من الماء قبل التبرع بالدم يساعد في الحفاظ على ترطيب الجسم ويجعل عملية سحب الدم أسهل.',
                          style: TextStyle(fontFamily: 'Almaria'),
                        ),
                        SizedBox(height: 16.0),
                        Text(
                          '3. هل يمكنني التبرع بالدم إذا كنت مصابًا بنزلة برد أو الإنفلونزا؟',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Almaria'),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'يُفضل عدم التبرع بالدم إذا كنت مصابًا بنزلات البرد أو الإنفلونزا، حتى لا يتم نقل العدوى إلى الشخص الذي سيتلقى الدم.',
                          style: TextStyle(fontFamily: 'Almaria'),
                        ),
                        SizedBox(height: 16.0),
                        Text(
                          '4. هل يمكنني التبرع بالدم إذا كنت أتناول الأدوية؟',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Almaria'),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'تعتمد الإمكانية على نوع الدواء وحالتك الصحية العامة. يُفضل أن تخبر موظفي التبرع بالدم بالأدوية التي تتناولها قبل التبرع.',
                          style: TextStyle(fontFamily: 'Almaria'),
                        ),
                        SizedBox(height: 16.0),
                        Text(
                          '5. هل يؤثر التبرع بالدم على نشاطي اليومي؟',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Almaria'),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'عادة ما لا يؤثر التبرع بالدم على نشاطك اليومي، لكن يمكن أن تشعر بالإرهاق الطبيعي بعد التبرع. من المهم أن تأخذ قسطًا من الراحة بعد التبرع وتشرب الكثير من السوائل.',
                          style: TextStyle(fontFamily: 'Almaria'),
                        ),
                        SizedBox(height: 16.0),
                        Text(
                          '6. هل يمكنني ممارسة التمارين الرياضية بعد التبرع بالدم؟',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Almaria'),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'يمكنك ممارسة التمارين الرياضية الخفيفة بعد التبرع بالدم، ولكن يُنصح بتجنب التمارين الشاقة لبضع ساعات بعد التبرع.',
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
