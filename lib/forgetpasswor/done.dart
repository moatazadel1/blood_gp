import 'package:blood_gp/core/colors.dart';
import 'package:blood_gp/createAccount/create%20account.dart';

import 'package:blood_gp/signup2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class done extends StatefulWidget {
  const done({super.key});

  @override
  State<done> createState() => _doneState();
}

class _doneState extends State<done> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        // Use builder only if you need to use library outside ScreenUtilInit context
        builder: (_, child) {
          return Scaffold(
              appBar: AppBar(
                elevation: 0,
                toolbarHeight: 3.h,
                backgroundColor: Colors.white,
              ),
              body: Padding(
                padding: const EdgeInsets.all(8.0).w,
                child: ListView(children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(111, 170, 100, 0).r,
                        child: Container(
                          height: 130.h,
                          width: 130.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(80).w,
                            color: pink,
                          ),
                          child: Image.asset(
                            'assets/images/done.png',
                            width: 100.w,
                            height: 100.h,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0).w,
                        child: Text(
                          "تم تغير كلمة السر بنجاح",
                          style: TextStyle(
                              fontFamily: 'Almarai',
                              fontWeight: FontWeight.w700,
                              fontSize: 28.sp),
                        ),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0).w,
                        child: Column(
                          children: [
                            Text(
                              "تم تغيير كلمة المرور بنجاح. يرجى التأكد من الاحتفاظ بها ",
                              style: TextStyle(
                                  fontFamily: 'Almarai',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12.sp,
                                  color: blod_gray),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              "بشكل آمن",
                              style: TextStyle(
                                  fontFamily: 'Almarai',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12.sp,
                                  color: blod_gray),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0).w,
                        child: Center(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LoginPage(),
                                  ));
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0).w,
                              child: Container(
                                height: 50.h,
                                width: 334.w,
                                child: Center(
                                  child: Text(
                                    "تسجبل الدخول",
                                    style: TextStyle(
                                        color: white,
                                        fontFamily: 'Almarai',
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14.sp),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    color: pink,
                                    borderRadius: BorderRadius.circular(10).w),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CreateAccount(),
                              ));
                        },
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0).w,
                            child: Container(
                              height: 50.h,
                              width: 334.w,
                              child: Center(
                                child: Text(
                                  "انشاء حساب",
                                  style: TextStyle(
                                      color: pink,
                                      fontFamily: 'Almarai',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14.sp),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  color: scondcolor,
                                  borderRadius: BorderRadius.circular(10).w),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ]),
              ));
        });
  }
}
