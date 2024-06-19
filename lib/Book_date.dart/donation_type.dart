import 'package:blood_gp/core/BottomBar.dart';
import 'package:flutter/material.dart';
import 'package:blood_gp/Book_date.dart/time.dart';
import 'package:blood_gp/core/constants.dart';

class DonationType extends StatelessWidget {
  const DonationType({Key? key}) : super(key: key);

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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BottomNavigationPage()),
              );
            },
          ),
          title: Text(
            'نوع التبرع',
            style: TextStyle(fontSize: 18),
            textAlign: TextAlign.center,
          ),
          centerTitle: true,
        ),
        body: Column(children: [
          SizedBox(
            width: 350,
            child: Container(
              height: 7,
              color: Color(0xffF1F1F1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 60,
                    height: 7,
                    color: kMainColor,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 60,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Time()),
                            );
                          },
                          child: SizedBox(
                            width: 334,
                            height: 80,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xffF1F1F1)),
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Spacer(),
                                        DecoratedBox(
                                          decoration: BoxDecoration(
                                            border:
                                                Border.all(color: kMainColor),
                                          ),
                                          child: Container(
                                            width: 50,
                                            height: 24,
                                            color: Colors.white,
                                            child: Center(
                                              child: Text(
                                                'متاح',
                                                style: TextStyle(
                                                  fontSize: 8,
                                                  color: kMainColor,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                      ],
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            ' دم ',
                                            style: TextStyle(fontSize: 20),
                                          ),
                                          SizedBox(
                                            height: 4,
                                          ),
                                          Text(
                                            'هو نوع التبرع الأكثر شيوعًا',
                                            style: TextStyle(fontSize: 12),
                                            textAlign: TextAlign.right,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      width: 70,
                                      height: 70,
                                      color: Color.fromARGB(255, 247, 239, 239),
                                      child: Center(
                                        child: Image.asset(
                                          'assets/images/pngtree-blood-logo-template-vector-icon-illustration-design-png-image_5688354 1.png',
                                          width: 50,
                                          height: 50,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Time()),
                            );
                          },
                          child: SizedBox(
                            width: 334,
                            height: 80,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xffF1F1F1)),
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Spacer(),
                                        DecoratedBox(
                                          decoration: BoxDecoration(
                                            border:
                                                Border.all(color: kMainColor),
                                          ),
                                          child: Container(
                                            width: 50,
                                            height: 24,
                                            color: Colors.white,
                                            child: Center(
                                              child: Text(
                                                'متاح',
                                                style: TextStyle(
                                                  fontSize: 8,
                                                  color: kMainColor,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                      ],
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            'بلازما',
                                            style: TextStyle(fontSize: 20),
                                          ),
                                          SizedBox(
                                            height: 4,
                                          ),
                                          Text(
                                            'البلازما غالباً ما تستخدم في علاج الأمراض والإصابات.',
                                            style: TextStyle(fontSize: 12),
                                            textAlign: TextAlign.right,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      width: 70,
                                      height: 70,
                                      color: Color.fromARGB(255, 247, 239, 239),
                                      child: Center(
                                        child: Image.asset(
                                          'assets/images/5842750 1.png',
                                          width: 50,
                                          height: 50,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        SizedBox(
                          width: 334,
                          height: 80,
                          child: InkWell(
                            onTap: () {},
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xffF1F1F1)),
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Spacer(),
                                        DecoratedBox(
                                          decoration: BoxDecoration(
                                            border:
                                                Border.all(color: kMainColor),
                                          ),
                                          child: Container(
                                            width: 50,
                                            height: 24,
                                            color: Colors.white,
                                            child: Center(
                                              child: Text(
                                                ' غير متاح ',
                                                style: TextStyle(
                                                  fontSize: 8,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                      ],
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            ' الصفائح الدموية ',
                                            style: TextStyle(fontSize: 20),
                                          ),
                                          SizedBox(
                                            height: 4,
                                          ),
                                          Text(
                                            'تم استخدام صفائح الدموية في علاج الأمراض التي تؤثر على عملية التجلط',
                                            style: TextStyle(fontSize: 12),
                                            textAlign: TextAlign.right,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      width: 70,
                                      height: 70,
                                      color: Color.fromARGB(255, 247, 239, 239),
                                      child: Center(
                                        child: Image.asset(
                                          'assets/images/20 1.png',
                                          width: 50,
                                          height: 50,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ]));
  }
}
