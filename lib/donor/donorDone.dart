import 'package:blood_gp/core/BottomBar.dart';
import 'package:blood_gp/core/colors.dart';
import 'package:blood_gp/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class donorDone extends StatefulWidget {
  const donorDone({super.key});

  @override
  State<donorDone> createState() => _donorDoneState();
}

class _donorDoneState extends State<donorDone> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        // Use builder only if you need to use library outside ScreenUtilInit context
        builder: (_, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
                appBar: AppBar(
                  backgroundColor: white,
                  elevation: 0,
                  toolbarHeight: 3.h,
                ),
                body: Padding(
                  padding: const EdgeInsets.all(8.0).w,
                  child: ListView(children: [
                    Column(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(131, 140, 131, 0).r,
                          child: Container(
                            height: 120.h,
                            width: 120.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(80).w,
                              color: pink,
                            ),
                            child: Image.asset(
                              'assets/images/done.png',
                              width: 150.w,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 8, 18, 10).r,
                          child: Text(
                            ' تم تسجيلك بنجاح كمتبرع ',
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
                          padding: const EdgeInsets.fromLTRB(60, 20, 0, 10).r,
                          child: Text(
                            "نحن سعداء بانضمامكم إلى مجتمع وريد ! يمكنك الان المساهمة في إنقاذ الحياة وتحقيق تغيير إيجابي",
                            style: TextStyle(
                                fontFamily: 'Almarai',
                                fontWeight: FontWeight.w700,
                                fontSize: 12.sp,
                                color: blod_gray),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(18.0).w,
                          child: Center(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          BottomNavigationPage(),
                                    ));
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0).w,
                                child: Container(
                                  height: 50.h,
                                  width: 334.w,
                                  child: Center(
                                    child: Text(
                                      "متابعة",
                                      style: TextStyle(
                                          color: white,
                                          fontFamily: 'Almarai',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14.sp),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                      color: pink,
                                      borderRadius:
                                          BorderRadius.circular(10).w),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ]),
                )),
          );
        });
  }
}
