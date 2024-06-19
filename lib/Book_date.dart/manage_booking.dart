import 'package:blood_gp/Book_date.dart/Instructions.dart';
import 'package:blood_gp/Book_date.dart/donation_type.dart';
import 'package:blood_gp/Book_date.dart/location.dart';
import 'package:blood_gp/core/BottomBar.dart';
import 'package:blood_gp/core/bottons.dart';
import 'package:blood_gp/home.dart';
import 'package:flutter/material.dart';
import 'package:blood_gp/core/constants.dart';
import 'package:share/share.dart';

class Manage extends StatelessWidget {
  const Manage({Key? key});

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
          'جدولة موعد التبرع',
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          SizedBox(
            width: 365,
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
                      SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'مستشفى قنا العام',
                              style: TextStyle(fontSize: 20),
                              textAlign: TextAlign.right,
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
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
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 270,
                    height: 45,
                    color: Color(0xffFAEAF0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          '9:00م',
                          style: TextStyle(color: kMainColor),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Icon(
                          Icons.timelapse,
                          color: kMainColor,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Image.asset('assets/images/Line 18.png'),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          '09 مارس , 2024',
                          style: TextStyle(color: kMainColor),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Icon(
                          Icons.date_range,
                          color: kMainColor,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 150,
                height: 100,
                child: InkWell(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(30))),
                        builder: (context) => Center(
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 90,
                                      height: 90,
                                      color: Color.fromARGB(255, 247, 239, 239),
                                      child: Center(
                                        child: Image.asset(
                                          'assets/images/recycle-water  1.png',
                                          width: 75,
                                          height: 75,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      'هل تود اعادة جدولة  موعد التبرع الخاص بك',
                                      style: TextStyle(fontSize: 24),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      'اذا كان ذلك بسبب مشكلة يجري الاتصال بنا',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    SizedBox(
                                      height: 60,
                                    ),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            width: 150,
                                            child: ElevatedButton(
                                              onPressed: () {},
                                              style: ButtonStyle(
                                                foregroundColor:
                                                    MaterialStateProperty.all<
                                                        Color>(kMainColor),
                                                backgroundColor:
                                                    MaterialStateProperty.all<
                                                        Color>(Colors.white),
                                                shape:
                                                    MaterialStateProperty.all<
                                                        RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            14.0),
                                                  ),
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(14.0),
                                                child: Text(
                                                  '  لا ',
                                                  style:
                                                      TextStyle(fontSize: 16),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          SizedBox(
                                            width: 150,
                                            child: ElevatedButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          DonationType()),
                                                );
                                              },
                                              style: ButtonStyle(
                                                foregroundColor:
                                                    MaterialStateProperty.all<
                                                        Color>(Colors.white),
                                                backgroundColor:
                                                    MaterialStateProperty.all<
                                                        Color>(kMainColor),
                                                shape:
                                                    MaterialStateProperty.all<
                                                        RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            14.0),
                                                  ),
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(14.0),
                                                child: Text(
                                                  ' نعم ',
                                                  style:
                                                      TextStyle(fontSize: 16),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ])
                                  ]),
                            ));
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            color: Color.fromARGB(255, 247, 239, 239),
                            child: Center(
                              child: Image.asset(
                                'assets/images/recycle-water  1.png',
                                width: 50,
                                height: 50,
                              ),
                            ),
                          ),
                          Text(
                            ' اعادة الحجز ',
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.right,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              SizedBox(
                width: 150,
                height: 100,
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            color: Color.fromARGB(255, 247, 239, 239),
                            child: Center(
                              child: Image.asset(
                                'assets/images/Calendar.png',
                                width: 50,
                                height: 50,
                              ),
                            ),
                          ),
                          Text(
                            ' اضافة الى التقويم',
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.right,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 150,
                height: 100,
                child: InkWell(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(30))),
                        builder: (context) => Center(
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 90,
                                      height: 90,
                                      color: Color(0xffFAEAF0),
                                      child: Center(
                                        child: Image.asset(
                                          'assets/images/false 1.png',
                                          width: 90,
                                          height: 90,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      'هل تود الغاء الحجز',
                                      style: TextStyle(fontSize: 24),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      'اذا كان ذلك بسبب مشكلة يجري الاتصال بنا',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    SizedBox(
                                      height: 60,
                                    ),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            width: 150,
                                            child: ElevatedButton(
                                              onPressed: () {},
                                              style: ButtonStyle(
                                                foregroundColor:
                                                    MaterialStateProperty.all<
                                                        Color>(kMainColor),
                                                backgroundColor:
                                                    MaterialStateProperty.all<
                                                        Color>(Colors.white),
                                                shape:
                                                    MaterialStateProperty.all<
                                                        RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            14.0),
                                                  ),
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(14.0),
                                                child: Text(
                                                  '  لا ',
                                                  style:
                                                      TextStyle(fontSize: 16),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          SizedBox(
                                            width: 150,
                                            child: ElevatedButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          BottomNavigationPage()),
                                                );
                                              },
                                              style: ButtonStyle(
                                                foregroundColor:
                                                    MaterialStateProperty.all<
                                                        Color>(Colors.white),
                                                backgroundColor:
                                                    MaterialStateProperty.all<
                                                        Color>(kMainColor),
                                                shape:
                                                    MaterialStateProperty.all<
                                                        RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            14.0),
                                                  ),
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(14.0),
                                                child: Text(
                                                  ' نعم ',
                                                  style:
                                                      TextStyle(fontSize: 16),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ])
                                  ]),
                            ));
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            color: Color.fromARGB(255, 247, 239, 239),
                            child: Center(
                              child: Image.asset(
                                'assets/images/false 1.png',
                                width: 50,
                                height: 50,
                              ),
                            ),
                          ),
                          Text(
                            ' الغاء الحجز ',
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.right,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              SizedBox(
                width: 150,
                height: 100,
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            color: Color(0xffFAEAF0),
                            child: Center(
                              child: Image.asset(
                                'assets/images/navigation 2.png',
                                width: 50,
                                height: 50,
                              ),
                            ),
                          ),
                          Text(
                            ' احصل على الاتجاهات ',
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.right,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 150,
                height: 100,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Instructions()),
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            color: Color.fromARGB(255, 247, 239, 239),
                            child: Center(
                              child: Image.asset(
                                'assets/images/blood-drop 1.png',
                                width: 50,
                                height: 50,
                              ),
                            ),
                          ),
                          Text(
                            ' الاستعداد للتبرع ',
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.right,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              SizedBox(
                width: 150,
                height: 100,
                child: InkWell(
                  onTap: () {
                    Share.share(
                        "https://play.google.com/store/apps/details?id=com.instructivetech.testapp");
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            color: Color.fromARGB(255, 247, 239, 239),
                            child: Center(
                              child: Image.asset(
                                'assets/images/share.png',
                                width: 50,
                                height: 50,
                              ),
                            ),
                          ),
                          Text(
                            ' دعوة صديق ',
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.right,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 25),
          SizedBox(
            width: 365,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => location()),
                );
              },
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                backgroundColor: MaterialStateProperty.all<Color>(kMainColor),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(14.0),
                child: Text(
                  ' حجز موعد جديد ',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
