import 'package:blood_gp/core/constants.dart';
import 'package:blood_gp/Instructions/articleFour.dart';
import 'package:blood_gp/Instructions/articleOne.dart';
import 'package:blood_gp/Instructions/articleThree.dart';
import 'package:blood_gp/Instructions/articleTwo.dart';
import 'package:blood_gp/Instructions/articleFive.dart';
import 'package:flutter/material.dart';

class Instructions extends StatelessWidget {
  const Instructions({Key? key}) : super(key: key);

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
          'الاستعداد للتبرع',
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30),
            Image.asset('assets/images/blood donation main 1.png'),
            SizedBox(height: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => articleOne()),
                    );
                  },
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffF1F1F1)),
                    ),
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: 335,
                        height: 60,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(width: 20),
                                Image.asset('assets/images/back.png'),
                                Spacer(),
                                Text(
                                  ' نصائح وإرشادات مهمة ',
                                  style: TextStyle(fontSize: 14),
                                  textAlign: TextAlign.right,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Divider(
                              color: Color(0xffB3B3B34D),
                            ),
                          ],
                        )),
                  ),
                ),
                SizedBox(height: 10),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => articleTwo()),
                    );
                  },
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffF1F1F1)),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      width: 335,
                      height: 60,
                      child: Column(children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(width: 20),
                            Image.asset('assets/images/back.png'),
                            Spacer(),
                            Text(
                              ' ما يجب أن يعرفه كل متبرع ',
                              style: TextStyle(fontSize: 14),
                              textAlign: TextAlign.right,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Divider(
                          color: Color(0xffB3B3B34D),
                        ),
                      ]),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => articleThree()),
                    );
                  },
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffF1F1F1)),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      width: 335,
                      height: 70,
                      child: Column(children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(width: 20),
                            Image.asset('assets/images/back.png'),
                            Spacer(),
                            Text(
                              ' الأمور التي يجب مراعاتها قبل التبرع بالدم',
                              style: TextStyle(fontSize: 14),
                              textAlign: TextAlign.right,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Divider(
                          color: Color(0xffB3B3B34D),
                        ),
                      ]),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => articleFour()),
                    );
                  },
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffF1F1F1)),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      width: 335,
                      height: 60,
                      child: Column(children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(width: 20),
                            Image.asset('assets/images/back.png'),
                            SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                ' الأسئلة الشائعة والإجابات حول الاستعداد للتبرع بالدم ',
                                style: TextStyle(fontSize: 14),
                                textAlign: TextAlign.right,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Divider(
                          color: Color(0xffB3B3B34D),
                        ),
                      ]),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => articleFive()),
                    );
                  },
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffF1F1F1)),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      width: 335,
                      height: 60,
                      child: Column(children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(width: 20),
                            Image.asset('assets/images/back.png'),
                            Spacer(),
                            Text(
                              ' أهم الاختبارات الطبية قبل التبرع بالدم ',
                              style: TextStyle(fontSize: 14),
                              textAlign: TextAlign.right,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Divider(
                          color: Color(0xffB3B3B34D),
                        ),
                      ]),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: 400,
              child: Text(''),
            )
          ],
        ),
      ),
    );
  }
}
