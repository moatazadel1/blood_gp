import 'package:blood_gp/core/BottomBar.dart';
import 'package:blood_gp/core/constants.dart';
import 'package:blood_gp/home.dart';
import 'package:blood_gp/more/CallUs%20.dart';
import 'package:flutter/material.dart';

class conf extends StatelessWidget {
  const conf({super.key});

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
          '  تواصل معنا  ',
          style: TextStyle(fontSize: 21, fontFamily: 'Almaria'),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 113,
            ),
            Image.asset('assets/images/Done (1).png'),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 365,
              child: Text(
                'تم ارسال رسالتك بنجاح سوف نقوم بالرد عليك قريبا هل تريد ارسال رسالة أخري؟',
                style: TextStyle(fontSize: 16, fontFamily: 'Almaria'),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 130),
            SizedBox(
              width: 365,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => wwww()),
                  );
                },
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
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
                    ' ارسال رسالة أخرى ',
                    style: TextStyle(fontSize: 16, fontFamily: 'Almaria'),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              width: 365,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BottomNavigationPage()),
                  );
                },
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(kMainColor),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      side: BorderSide(color: Colors.red),
                    ),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(14.0),
                  child: Text(
                    ' الرئيسية ',
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
