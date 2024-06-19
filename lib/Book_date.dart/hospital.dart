import 'dart:async';
import 'package:blood_gp/Book_date.dart/location.dart';
import 'package:blood_gp/Book_date.dart/location_details.dart';
import 'package:blood_gp/core/constants.dart';
import 'package:flutter/material.dart';

class Hospital extends StatefulWidget {
  @override
  _HospitalState createState() => _HospitalState();
}

class _HospitalState extends State<Hospital> {
  bool _isLoading = false;

  void _showLoading() {
    setState(() {
      _isLoading = true;
    });

    Timer(Duration(seconds: 5), () {
      setState(() {
        _isLoading = false;
      });
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Details()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Image.asset('assets/images/qena00.png'),
                    Image.asset('assets/images/Rectangle 4193.png'),
                    Positioned(
                      top: 94,
                      left: 206,
                      child: Column(
                        children: [
                          Container(
                            width: 150,
                            child: Text(
                              'مستشفي قنا العام',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          Row(
                            children: List.generate(5, (index) {
                              return Icon(
                                index < 1 ? Icons.star : Icons.star_border,
                                color: Colors.yellow,
                                size: 16,
                              );
                            }),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 40,
                      left: 10,
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 80),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              ' موعد الحجز ',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 14),
                            ),
                            Text(
                              '3,مارس ,2024',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 45,
                          width: 45,
                          child: Image.asset(
                            'assets/images/Calendar.png',
                            height: 25,
                            width: 25,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              '  وقت الحجز',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 14),
                            ),
                            Text(
                              ' 9:00pm ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 45,
                          width: 45,
                          child: Image.asset(
                            'assets/images/time 1.png',
                            height: 25,
                            width: 25,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              ' نوع التبرع',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 14),
                            ),
                            Text(
                              ' دم ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 45,
                          width: 45,
                          child: Image.asset(
                            'assets/images/blood-drop 1.png',
                            height: 25,
                            width: 25,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              ' فصيلة الدم ',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 14),
                            ),
                            Text(
                              ' A+ ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 45,
                          width: 45,
                          child: Image.asset(
                            'assets/images/blood-donation 1.png',
                            height: 25,
                            width: 25,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 40),
                    SizedBox(
                      width: 334,
                      child: ElevatedButton(
                        onPressed: _showLoading,
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(kMainColor),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(14.0),
                          child: Text('ارسال'),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    SizedBox(
                      width: 334,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => location()),
                          );
                        },
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(kMainColor),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xffFAEAF0)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(14.0),
                          child: Text(
                            ' الغاء الحجز ',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: 190,
            left: 35,
            child: Container(
              width: MediaQuery.of(context).size.width - 70,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text(' موعدين '),
                        SizedBox(width: 10),
                        Image.asset(
                          'assets/images/hourglass 1.png',
                          height: 25,
                          width: 25,
                        ),
                        SizedBox(width: 10),
                        Text(' 4:00م -11:00ص '),
                        SizedBox(width: 10),
                        Image.asset(
                          'assets/images/time 1.png',
                          height: 25,
                          width: 25,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(' 2km'),
                        SizedBox(width: 10),
                        Image.asset(
                          'assets/images/navigation 2.png',
                          height: 25,
                          width: 25,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
            ),
          ),
          if (_isLoading)
            Positioned.fill(
              child: Container(
                color: Colors.black54,
                child: Center(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 100),
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'حجز موعد',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ],
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
