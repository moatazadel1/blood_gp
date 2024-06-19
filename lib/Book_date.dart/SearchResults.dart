import 'package:blood_gp/Book_date.dart/hospital.dart';
import 'package:blood_gp/Book_date.dart/location.dart';
import 'package:blood_gp/core/constants.dart';
import 'package:flutter/material.dart';

class search extends StatelessWidget {
  const search({Key? key});

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
              MaterialPageRoute(builder: (context) => location()),
            );
          },
        ),
        title: Text(
          'نتائج البحث',
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
                  width: 300,
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
          child: Column(
            children: [
              SizedBox(height: 7, width: double.infinity),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Hospital()),
                  );
                },
                child: SizedBox(
                  width: 334,
                  height: 200,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffF1F1F1)),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 45,
                                height: 45,
                                color: Color(0xffFAEAF0),
                                child: Center(
                                  child: Image.asset(
                                    'assets/images/navigation 2.png',
                                    width: 25,
                                    height: 25,
                                  ),
                                ),
                              ),
                              Expanded(
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                    Text(
                                      ' مستشفى قنا العام ',
                                      style: TextStyle(fontSize: 20),
                                      textAlign: TextAlign.right,
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            'شارع النساجون- قنا -قنا',
                                            style: TextStyle(fontSize: 12),
                                            textAlign: TextAlign.right,
                                          ),
                                          SizedBox(width: 10),
                                          Image.asset(
                                            'assets/images/placeholder 3.png',
                                          ),
                                        ])
                                  ])),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(' موعدين '),
                              SizedBox(width: 10),
                              Image.asset(
                                'assets/images/hourglass 1.png',
                                height: 25,
                                width: 25,
                              ),
                              SizedBox(width: 20),
                              Text(' 4:00م -11:00ص '),
                              SizedBox(width: 10),
                              Image.asset(
                                'assets/images/time 1.png',
                                height: 25,
                                width: 25,
                              ),
                              SizedBox(width: 20),
                              Text(' 2km'),
                              SizedBox(width: 10),
                              Image.asset(
                                'assets/images/navigation 2.png',
                                height: 25,
                                width: 25,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Divider(
                            color: Color(0xffB3B3B34D),
                            thickness: 1,
                            indent: 20,
                            endIndent: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text('المواعيد المتاحة'),
                              Image.asset(
                                'assets/images/time 1.png',
                                height: 25,
                                width: 25,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              InkWell(
                  onTap: () {},
                  child: SizedBox(
                      width: 334,
                      height: 200,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffF1F1F1)),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 45,
                                    height: 45,
                                    color: Color(0xffFAEAF0),
                                    child: Center(
                                      child: Image.asset(
                                        'assets/images/navigation 2.png',
                                        width: 25,
                                        height: 25,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                        Text(
                                          ' مستشفى الجامعة ',
                                          style: TextStyle(fontSize: 20),
                                          textAlign: TextAlign.right,
                                        ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Text(
                                                ' الشؤون - قنا -قنا',
                                                style: TextStyle(fontSize: 12),
                                                textAlign: TextAlign.right,
                                              ),
                                              SizedBox(width: 10),
                                              Image.asset(
                                                'assets/images/placeholder 3.png',
                                              ),
                                            ])
                                      ])),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(' موعد '),
                                  SizedBox(width: 10),
                                  Image.asset(
                                    'assets/images/hourglass 1.png',
                                    height: 25,
                                    width: 25,
                                  ),
                                  SizedBox(width: 20),
                                  Text(' 4:00م -11:00ص '),
                                  SizedBox(width: 10),
                                  Image.asset(
                                    'assets/images/time 1.png',
                                    height: 25,
                                    width: 25,
                                  ),
                                  SizedBox(width: 20),
                                  Text(' 5km'),
                                  SizedBox(width: 10),
                                  Image.asset(
                                    'assets/images/navigation 2.png',
                                    height: 25,
                                    width: 25,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Divider(
                                color: Color(0xffB3B3B34D),
                                thickness: 1,
                                indent: 20,
                                endIndent: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text('المواعيد المتاحة'),
                                  Image.asset(
                                    'assets/images/time 1.png',
                                    height: 25,
                                    width: 25,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ))),
              SizedBox(height: 20),
              InkWell(
                  onTap: () {},
                  child: SizedBox(
                      width: 334,
                      height: 200,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffF1F1F1)),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 45,
                                    height: 45,
                                    color: Color(0xffFAEAF0),
                                    child: Center(
                                      child: Image.asset(
                                        'assets/images/navigation 2.png',
                                        width: 25,
                                        height: 25,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                        Text(
                                          ' مستشفى قنا العام ',
                                          style: TextStyle(fontSize: 20),
                                          textAlign: TextAlign.right,
                                        ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Text(
                                                'شارع النساجون- قنا -قنا',
                                                style: TextStyle(fontSize: 12),
                                                textAlign: TextAlign.right,
                                              ),
                                              SizedBox(width: 10),
                                              Image.asset(
                                                'assets/images/placeholder 3.png',
                                              ),
                                            ])
                                      ])),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(' موعد '),
                                  SizedBox(width: 10),
                                  Image.asset(
                                    'assets/images/hourglass 1.png',
                                    height: 25,
                                    width: 25,
                                  ),
                                  SizedBox(width: 20),
                                  Text(' 4:00م -11:00ص '),
                                  SizedBox(width: 10),
                                  Image.asset(
                                    'assets/images/time 1.png',
                                    height: 25,
                                    width: 25,
                                  ),
                                  SizedBox(width: 20),
                                  Text(' 2km'),
                                  SizedBox(width: 10),
                                  Image.asset(
                                    'assets/images/navigation 2.png',
                                    height: 25,
                                    width: 25,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Divider(
                                color: Color(0xffB3B3B34D),
                                thickness: 1,
                                indent: 20,
                                endIndent: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text('المواعيد المتاحة'),
                                  Image.asset(
                                    'assets/images/time 1.png',
                                    height: 25,
                                    width: 25,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      )))
            ],
          ),
        ))),
      ]),
    );
  }
}
