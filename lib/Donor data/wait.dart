import 'dart:async';

import 'package:blood_gp/Donor%20data/findDonor.dart';
import 'package:blood_gp/core/constants.dart';
import 'package:flutter/material.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    Key? key,
    required this.hospitalName,
    required this.donationTime,
    required this.selectedBloodType,
  }) : super(key: key);

  final String hospitalName;
  final String donationTime;
  final String selectedBloodType;

  @override
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 12), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => FindDonor()),
      );
    });
    {
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
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                " الغاء ",
                style: TextStyle(color: kMainColor, fontFamily: 'Almaria'),
              ),
            ),
            SizedBox(width: 16),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                ' جاري البحث عن متبرع',
                style: TextStyle(
                  color: Color(0xff121212),
                  fontFamily: 'Almarai',
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Image.asset('assets/images/3d-clock.png'),
              Text(
                'الوصول الي 20 من 30 متبرع ',
                style: TextStyle(
                  color: Color(0xff121212),
                  fontFamily: 'Almarai',
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Card(
                color: Color(0xffFAEAF0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(
                                children: [
                                  Spacer(),
                                  Text(hospitalName),
                                  SizedBox(width: 10),
                                  Image.asset(
                                      'assets/images/placeholder 3.png'),
                                ],
                              ),
                              SizedBox(height: 8),
                              Row(
                                children: [
                                  Spacer(),
                                  Text(donationTime),
                                  SizedBox(width: 10),
                                  Image.asset(
                                      'assets/images/hospital-bed 1.png'),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Card(
                          color: kMainColor,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text(
                              selectedBloodType,
                              style: TextStyle(color: Color(0xffF8F8F8)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 80),
              SizedBox(
                width: 334,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(kMainColor),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14.0),
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(14.0),
                    child: Text(
                      ' الغاء الطلب ',
                      style: TextStyle(fontSize: 16, fontFamily: 'Almaria'),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
}
