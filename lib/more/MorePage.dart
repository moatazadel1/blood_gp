import 'package:blood_gp/Book_date.dart/Instructions.dart';
import 'package:blood_gp/core/constants.dart';
import 'package:blood_gp/more/CallUs%20.dart';
import 'package:blood_gp/more/Policies.dart';
import 'package:blood_gp/more/Terms.dart';
import 'package:blood_gp/rate/rating.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';

class MorePage extends StatelessWidget {
  const MorePage({super.key});

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
          '  المزيد ',
          style: TextStyle(fontSize: 21, fontFamily: 'Almaria'),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50),
            Align(
              alignment: Alignment.center,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => wwww()),
                  );
                },
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffF1F1F1)),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xffEEEEEE),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: 335,
                    height: 60,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(width: 10),
                        Image.asset('assets/images/back.png'),
                        Spacer(),
                        Text(
                          ' تواصل معنا ',
                          style: TextStyle(fontSize: 14, fontFamily: 'Almaria'),
                          textAlign: TextAlign.right,
                        ),
                        SizedBox(width: 20),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 25),
            Align(
              alignment: Alignment.center,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Terms()),
                  );
                },
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffF1F1F1)),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xffEEEEEE),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: 335,
                    height: 60,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(width: 10),
                        Image.asset('assets/images/back.png'),
                        Spacer(),
                        Text(
                          ' الشروط والاحكام ',
                          style: TextStyle(fontSize: 14, fontFamily: 'Almaria'),
                          textAlign: TextAlign.right,
                        ),
                        SizedBox(width: 20),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 25),
            Align(
              alignment: Alignment.center,
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
                      color: Color(0xffEEEEEE),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: 335,
                    height: 70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(width: 10),
                        Image.asset('assets/images/back.png'),
                        Spacer(),
                        Expanded(
                          child: Text(
                            ' الاستعداد للتبرع ',
                            style:
                                TextStyle(fontSize: 14, fontFamily: 'Almaria'),
                            textAlign: TextAlign.right,
                          ),
                        ),
                        SizedBox(width: 20),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 25),
            Align(
              alignment: Alignment.center,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rate()),
                  );
                },
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffF1F1F1)),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xffEEEEEE),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: 335,
                    height: 60,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(width: 10),
                        Image.asset('assets/images/back.png'),
                        Spacer(),
                        Expanded(
                          child: Text(
                            ' قيمنا ',
                            style:
                                TextStyle(fontSize: 14, fontFamily: 'Almaria'),
                            textAlign: TextAlign.right,
                          ),
                        ),
                        SizedBox(width: 20),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 25),
            Align(
              alignment: Alignment.center,
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
                      color: Color(0xffEEEEEE),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: 335,
                    height: 60,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(width: 10),
                        Image.asset('assets/images/back.png'),
                        Spacer(),
                        Text(
                          ' دعوة صديق ',
                          style: TextStyle(fontSize: 14, fontFamily: 'Almaria'),
                          textAlign: TextAlign.right,
                        ),
                        SizedBox(width: 20),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 25),
            Align(
              alignment: Alignment.center,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PrivacyPolicy()),
                  );
                },
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffF1F1F1)),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xffEEEEEE),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: 335,
                    height: 60,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(width: 10),
                        Image.asset('assets/images/back.png'),
                        Spacer(),
                        Text(
                          ' سياسة الخصوصية ',
                          style: TextStyle(fontSize: 14, fontFamily: 'Almaria'),
                          textAlign: TextAlign.right,
                        ),
                        SizedBox(width: 20),
                      ],
                    ),
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
