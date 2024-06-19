import 'package:blood_gp/core/colors.dart';
import 'package:blood_gp/forgetpasswor/done.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class newpass extends StatefulWidget {
  const newpass({super.key});

  @override
  State<newpass> createState() => _newpassState();
}

class _newpassState extends State<newpass> {
  bool ispass = true;
  bool ispass2 = true;
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
              theme: ThemeData(
                primarySwatch: Colors.blue,
                visualDensity: VisualDensity.adaptivePlatformDensity,
              ),
              home: Scaffold(
                appBar: AppBar(
                  elevation: 0,
                  toolbarHeight: 3.h,
                  backgroundColor: Colors.white,
                ),
                body: Padding(
                  padding: const EdgeInsets.all(8.0).w,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(140, 20, 5, 0).r,
                          child: Text(
                            textAlign: TextAlign.right,
                            "كلمة سر جديدة",
                            style: TextStyle(
                                fontFamily: 'Almarai',
                                fontWeight: FontWeight.w700,
                                fontSize: 28.sp),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(180, 18, 0, 0).r,
                          child: Text(
                            "الرجاء إدخال كلمة مرور جديدة",
                            style: TextStyle(
                                fontFamily: 'Almarai',
                                fontWeight: FontWeight.w700,
                                fontSize: 12.sp,
                                color: gray),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0).w,
                          child: Image.asset(
                            "assets/images/92030f2f24eab59c48cd7596cf39d723.png",
                            width: 250.w,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0).w,
                          child: TextField(
                            obscureText: ispass,
                            textAlign: TextAlign.right,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15).w),
                                hintText: "كلمة السر الجديدة",
                                prefixIcon: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        ispass = false;
                                      });
                                    },
                                    child: Icon(
                                      Icons.remove_red_eye_outlined,
                                      size: 30.w,
                                    )),
                                suffixIcon: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        ispass = true;
                                      });
                                    },
                                    child: Icon(
                                      Icons.lock_open_outlined,
                                      size: 30.w,
                                    )),
                                contentPadding:
                                    EdgeInsets.fromLTRB(190, 15, 5, 15).r,
                                hintStyle: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Almarai',
                                  color: gray,
                                )),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0).w,
                          child: TextField(
                            obscureText: ispass2,
                            textAlign: TextAlign.right,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15).w),
                                hintText: " اعادة ادخال كلمة السر الجديدة",
                                suffixIcon: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        ispass2 = true;
                                      });
                                    },
                                    child: Icon(
                                      Icons.lock_open_outlined,
                                      size: 30.w,
                                    )),
                                prefixIcon: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        ispass2 = false;
                                      });
                                    },
                                    child: Icon(
                                      Icons.remove_red_eye_outlined,
                                      size: 30.w,
                                    )),
                                contentPadding:
                                    EdgeInsets.fromLTRB(190, 15, 5, 15).r,
                                hintStyle: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Almarai',
                                  color: gray,
                                )),
                          ),
                        ),
                        SizedBox(
                          height: 25.h,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => done(),
                                ));
                          },
                          child: Container(
                            height: 53.h,
                            width: 366.w,
                            child: Center(
                              child: Text(
                                "تاكيد",
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
                      ],
                    ),
                  ),
                ),
              ));
        });
  }
}
