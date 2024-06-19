import 'package:blood_gp/core/constants.dart';
import 'package:blood_gp/createAccount/create%20account.dart';
import 'package:blood_gp/signup2.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      "وريد",
                      style: TextStyle(
                        color: kMainColor,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Almarai",
                        fontStyle: FontStyle.normal,
                        fontSize: 42.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "Wareed",
                      style: TextStyle(
                        color: kMainColor,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Almarai",
                        fontStyle: FontStyle.normal,
                        fontSize: 38.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Image.asset(
                  'assets/images/Logo0.png',
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "سجّل الآن وابدأ رحلتك في مساعدة الآخرين",
              style: TextStyle(
                fontFamily: "Almarai",
                fontSize: 12,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
              ),
            ),
            SizedBox(height: 22),
            SizedBox(
              width: 334,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'التسجيل باستخدام جوجل ',
                      style: TextStyle(
                        fontFamily: "Almarai",
                      ),
                    ),
                    Image.asset(
                      'assets/images/google.jpg',
                      width: 24,
                      height: 24,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 22),
            SizedBox(
              width: 334,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'التسجيل باستخدام فيسبوك ',
                      style: TextStyle(
                        fontFamily: "Almarai",
                      ),
                    ),
                    Image.asset(
                      'assets/images/facebook.png',
                      width: 24,
                      height: 24,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 22),
            SizedBox(
              width: 334,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  backgroundColor: MaterialStateProperty.all<Color>(kMainColor),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(14.0),
                  child: Text(
                    'تسجيل الدخول ',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Almarai",
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 22),
            SizedBox(
              width: 334,
              child: ElevatedButton(
                onPressed: () {                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CreateAccount()),
                    );},
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(kMainColor),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xffFAEAF0)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(14.0),
                  child: Text(
                    ' انشاء حساب ',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Almarai",
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
