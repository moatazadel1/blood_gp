import 'package:blood_gp/Donor%20data/donor_data1.dart';
import 'package:blood_gp/Donor%20data/wait.dart';
import 'package:blood_gp/core/constants.dart';

import 'package:flutter/material.dart';
import 'package:blood_gp/Donor%20data/donor_data2.dart';
import 'package:blood_gp/core/bottons.dart';

class DonorInformationPage extends StatelessWidget {
  final String name;
  final String phoneNumber;
  final String address;
  final String hospitalName;
  final String donationTime;
  final String selectedBloodType;
  final String donationReason;

  DonorInformationPage({
    required this.name,
    required this.phoneNumber,
    required this.address,
    required this.hospitalName,
    required this.donationTime,
    required this.selectedBloodType,
    required this.donationReason,
  });

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
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DonorPage()),
              );
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
            Text(
              'تاكيد الطلب',
              style: TextStyle(
                color: Color(0xff121212),
                fontFamily: 'Almarai',
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Card(
              color: Color(0xffFAEAF0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(children: [
                        SizedBox(width: 10),
                        CircleAvatar(
                          backgroundColor: Color(0xffF8DFE9),
                          radius: 20,
                          child: IconButton(
                            icon: Image.asset(
                              "assets/images/pen 1.png",
                              width: 24,
                              height: 24,
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DonorPage()),
                              );
                            },
                          ),
                        ),
                        Spacer(),
                        Text(
                          'البيانات الشخصية',
                          style: TextStyle(
                            color: Color(0xff121212),
                            fontFamily: 'Almarai',
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ]),
                      Text(
                        'الأسم: $name',
                        style: TextStyle(
                            color: Colors.black, fontFamily: 'Almaria'),
                        textDirection: TextDirection.rtl,
                      ),
                      SizedBox(height: 8),
                      Text(
                        'رقم الهاتف: $phoneNumber',
                        style: TextStyle(
                            color: Colors.black, fontFamily: 'Almaria'),
                        textDirection: TextDirection.rtl,
                      ),
                      SizedBox(height: 8),
                      Text(
                        'العنوان: $address',
                        style: TextStyle(
                            color: Colors.black, fontFamily: 'Almaria'),
                        textDirection: TextDirection.rtl,
                      ),
                      SizedBox(height: 8),
                      Text(
                        'أسم المستشفى: $hospitalName',
                        style: TextStyle(
                            color: Colors.black, fontFamily: 'Almaria'),
                        textDirection: TextDirection.rtl,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            Card(
              color: Color(0xffF0F6FD),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(children: [
                        SizedBox(width: 10),
                        CircleAvatar(
                          backgroundColor: Color(0xffF8DFE9),
                          radius: 20,
                          child: IconButton(
                            icon: Image.asset(
                              "assets/images/pen 1.png",
                              width: 24,
                              height: 24,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        Spacer(),
                        Text(
                          'بيانات الطلب',
                          style: TextStyle(
                            color: Color(0xff121212),
                            fontFamily: 'Almarai',
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ]),
                      SizedBox(height: 8),
                      Text(
                        'فصيلة الدم : $selectedBloodType',
                        style: TextStyle(
                            color: Colors.black, fontFamily: 'Almaria'),
                        textDirection: TextDirection.rtl,
                      ),
                      SizedBox(height: 8),
                      Text(
                        'أسباب التبرع : $donationReason',
                        style: TextStyle(
                            color: Colors.black, fontFamily: 'Almaria'),
                        textDirection: TextDirection.rtl,
                      ),
                      Text(
                        'وقت التبرع : $donationTime',
                        style: TextStyle(
                            color: Colors.black, fontFamily: 'Almaria'),
                        textDirection: TextDirection.rtl,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 50),
            SizedBox(
              width: 334,
              child: CustomGeneralButton(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PageViewItem(
                        hospitalName: hospitalName,
                        donationTime: donationTime,
                        selectedBloodType: selectedBloodType,
                      ),
                    ),
                  );
                },
                text: ' البحث عن متبرع',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
