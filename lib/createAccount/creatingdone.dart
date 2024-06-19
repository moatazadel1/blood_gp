import 'dart:developer';
import 'package:blood_gp/core/api/api_service.dart';
import 'package:blood_gp/core/colors.dart';
import 'package:blood_gp/signup2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class creatingdone extends StatefulWidget {
  final String name;
  final String email;
  final String password;
  final String birthday;
  final String bloodType;
  final String zipCode;
  final String userName;

  const creatingdone(
      {super.key,
      required this.name,
      required this.email,
      required this.password,
      required this.birthday,
      required this.bloodType,
      required this.zipCode,
      required this.userName});

  @override
  State<creatingdone> createState() => _creatingdoneState();
}

class _creatingdoneState extends State<creatingdone> {
  @override
  void initState() {
    super.initState();
    _registerUser();
  }

  Future<void> _registerUser() async {
    try {
      final response = await ApiService.signUp(
        email: widget.email,
        phone: '010320650',
        name: widget.name,
        password: widget.password,
        birthday: widget.birthday,
        bloodType: widget.bloodType,
        zipCode: widget.zipCode,
      );
      log('User registered: $response');
    } catch (e) {
      log('Error: $e');
    }
  }

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
                              borderRadius: BorderRadius.circular(90).w,
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
                            "تم أنشاء حسابك بنجاح",
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
                                      builder: (context) => const LoginPage(),
                                    ));
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0).w,
                                child: Container(
                                  height: 50.h,
                                  width: 334.w,
                                  decoration: BoxDecoration(
                                      color: pink,
                                      borderRadius:
                                          BorderRadius.circular(10).w),
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
