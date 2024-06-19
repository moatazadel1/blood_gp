import 'package:blood_gp/Book_date.dart/donation_type.dart';
import 'package:blood_gp/Book_date.dart/location.dart';
import 'package:blood_gp/core/bottons.dart';
import 'package:blood_gp/core/constants.dart';
import 'package:flutter/material.dart';

class Time extends StatefulWidget {
  @override
  _TimeState createState() => _TimeState();
}

class _TimeState extends State<Time> {
  String? _selectedtime;
  DateTime date = DateTime.now();

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
              MaterialPageRoute(builder: (context) => DonationType()),
            );
          },
        ),
        title: Text(
          ' تاريخ التبرع ',
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
                  width: 120,
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
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 60,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    IconButton(
                                      icon: Image.asset(
                                        "assets/images/Icon.png",
                                        width: 24,
                                        height: 24,
                                      ),
                                      onPressed: showData,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      '${date.day}/${date.month}/${date.year}',
                                      style: const TextStyle(fontSize: 20),
                                    ),
                                  ]),
                              SizedBox(
                                height: 40,
                              ),
                              Text(
                                '  الوقت المتاح ',
                                style: TextStyle(fontSize: 18),
                                textAlign: TextAlign.end,
                              ),
                              SizedBox(height: 8),
                              Column(
                                children: [
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        _buildtimeButton('9:00 AM'),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        _buildtimeButton('9:30 AM'),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        _buildtimeButton('10:00 AM'),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        _buildtimeButton('10:30 AM'),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        _buildtimeButton('11:00 AM'),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        _buildtimeButton('11:30 AM'),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          _buildtimeButton('12:00 PM'),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          _buildtimeButton('12:30 PM'),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          _buildtimeButton('1:00 PM'),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          _buildtimeButton('1:30 PM'),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          _buildtimeButton('2:00 PM'),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          _buildtimeButton('2:30 PM'),
                                        ],
                                      )),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          _buildtimeButton('3:00 PM'),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          _buildtimeButton('3:30 PM'),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          _buildtimeButton('4:00 PM'),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          _buildtimeButton('4:30 PM'),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          _buildtimeButton('5:00 PM'),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          _buildtimeButton('5:30 PM'),
                                        ],
                                      )),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  SizedBox(
                                    width: 365,
                                    child: CustomGeneralButton(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => location()),
                                        );
                                      },
                                      text: 'ارسال ',
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ]))))
      ]),
    );
  }

  Widget _buildtimeButton(String time) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          _selectedtime = time;
        });
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: _selectedtime == time ? kMainColor : Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      child: Text(
        time,
        style: TextStyle(
          color: _selectedtime == time ? Colors.white : Color(0xff6B779A),
          fontSize: 16,
        ),
      ),
    );
  }

  void showData() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    ).then((value) {
      setState(() {
        date = value!;
      });
    });
  }
}
