import 'package:blood_gp/Book_date.dart/home0.dart';
import 'package:blood_gp/core/constants.dart';
import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 60,
            left: 0,
            right: 0,
            child: Center(
              child: Image.asset(
                "assets/images/Done2.png",
                height: 113,
                width: 113,
              ),
            ),
          ),
          Positioned(
            top: 75,
            left: 0,
            right: 0,
            child: Column(
              children: [
                SizedBox(
                  height: 120,
                ),
                Text(
                  'تم تأكيد الحجز بنجاح',
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
                SizedBox(
                  height: 60,
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
                            )),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 70),
                SizedBox(
                  width: 365,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(kMainColor),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xffFAEAF0)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(14.0),
                      child: Text(
                        ' احصل على الاتجاهات',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                SizedBox(
                  width: 365,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(kMainColor),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xffFAEAF0)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(14.0),
                      child: Text(
                        ' إضافة إلى التقويم',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                SizedBox(
                  width: 365,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BottomNavigationPage0()),
                      );
                    },
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(kMainColor),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(14.0),
                      child: Text(
                        'الرئيسية',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
