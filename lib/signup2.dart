import 'package:blood_gp/core/constants.dart';
import 'package:blood_gp/core/loginWithEmail.dart';
import 'package:blood_gp/createAccount/create%20account.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20.0),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'تسجيل الدخول',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Almarai",
                  ),
                ),
                SizedBox(width: 20.0),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'نحن في انتظار تبرعك',
                  style: TextStyle(
                    fontSize: 13.0,
                    fontFamily: "Almarai",
                  ),
                ),
                SizedBox(width: 20.0),
              ],
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Column(
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
            const SizedBox(height: 20.0),
            EmailLogin(),
            const SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(width: 10.0),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CreateAccount()),
                    );
                  },
                  child: const Text(
                    "سجل الان",
                    style: TextStyle(
                      color: kMainColor,
                      fontFamily: "Almarai",
                    ),
                  ),
                ),
                const Text(
                  "ليس لديك حساب؟",
                  style: TextStyle(
                    fontFamily: "Almarai",
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 334,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  foregroundColor: WidgetStateProperty.all<Color>(Colors.black),
                  backgroundColor: WidgetStateProperty.all<Color>(Colors.white),
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
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
            const SizedBox(height: 22),
            SizedBox(
              width: 334,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    foregroundColor:
                        WidgetStateProperty.all<Color>(Colors.black),
                    backgroundColor:
                        WidgetStateProperty.all<Color>(Colors.white),
                    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
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
                      ])),
            ),
          ],
        ),
      ),
    );
  }
}
