import 'package:blood_gp/core/BottomBar.dart';
import 'package:blood_gp/core/constants.dart';
import 'package:blood_gp/home.dart';
import 'package:blood_gp/rate/rating.dart';
import 'package:flutter/material.dart';

class FindDonor extends StatelessWidget {
  const FindDonor({Key? key});

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
                  MaterialPageRoute(
                      builder: (context) => BottomNavigationPage()),
                );
              },
              child: Text(
                " الغاء ",
                style: TextStyle(color: kMainColor),
              ),
            ),
            SizedBox(width: 16),
          ],
        ),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          SizedBox(height: 15),
          Image.asset(
            'assets/images/Done2.png',
            width: 71,
          ),
          SizedBox(height: 20),
          Text(
            'تم العثور على المتبرع',
            style: TextStyle(
              color: Color(0xff121212),
              fontFamily: 'Almarai',
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 30),
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
                      Row(
                        children: [
                          SizedBox(
                            width: 90,
                            height: 30,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        kMainColor),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(0),
                                child: Text(
                                  ' متاح للتبرع ',
                                  style: TextStyle(
                                      fontSize: 9, fontFamily: 'Almaria'),
                                ),
                              ),
                            ),
                          ),
                          Spacer(),
                          Text(
                            ' أحمد على ',
                            style: TextStyle(
                              color: Color(0xff121212),
                              fontFamily: 'Almarai',
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: Color.fromARGB(255, 205, 212, 215),
                            child: ClipOval(
                              child: Image.asset(
                                "assets/images/Warith 1.png",
                                width: 40,
                                height: 40,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(children: [
                        SizedBox(width: 20),
                        Text(
                          ' A ',
                          style: TextStyle(
                              color: kMainColor, fontFamily: 'Almaria'),
                          textDirection: TextDirection.rtl,
                        ),
                        Spacer(),
                        Text(
                          'فصيلة الدم :  ',
                          style: TextStyle(
                              color: Colors.black, fontFamily: 'Almaria'),
                          textDirection: TextDirection.rtl,
                        ),
                      ]),
                      SizedBox(height: 8),
                      Row(children: [
                        SizedBox(width: 20),
                        Text(
                          ' 20 ',
                          style: TextStyle(
                              color: kMainColor, fontFamily: 'Almaria'),
                          textDirection: TextDirection.rtl,
                        ),
                        Spacer(),
                        Text(
                          'التبرعات :  ',
                          style: TextStyle(
                              color: Colors.black, fontFamily: 'Almaria'),
                          textDirection: TextDirection.rtl,
                        ),
                      ]),
                      SizedBox(height: 8),
                      Row(children: [
                        SizedBox(width: 20),
                        Text(
                          ' 02 ',
                          style: TextStyle(
                              color: kMainColor, fontFamily: 'Almaria'),
                          textDirection: TextDirection.rtl,
                        ),
                        Spacer(),
                        Text(
                          'الطلبات: ',
                          style: TextStyle(
                              color: Colors.black, fontFamily: 'Almaria'),
                          textDirection: TextDirection.rtl,
                        ),
                      ]),
                    ]),
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      ' رقم الهاتف ',
                      style: TextStyle(
                        color: Color(0xff121212),
                        fontFamily: 'Almarai',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '01099447519',
                      style: TextStyle(
                        color: Color(0xff121212),
                        fontFamily: 'Almarai',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(
              width: 150,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(kMainColor),
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
                    '  دردشة ',
                    style: TextStyle(fontSize: 16, fontFamily: 'Almaria'),
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
                onPressed: () {},
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  backgroundColor: MaterialStateProperty.all<Color>(kMainColor),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14.0),
                    ),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(14.0),
                  child: Text(
                    ' اتصال',
                    style: TextStyle(fontSize: 16, fontFamily: 'Almaria'),
                  ),
                ),
              ),
            ),
          ]),
        ])));
  }
}
