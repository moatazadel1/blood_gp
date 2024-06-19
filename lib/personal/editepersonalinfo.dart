import 'package:blood_gp/core/colors.dart';
import 'package:blood_gp/personal/setting.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class editepersonalfile extends StatefulWidget {
  const editepersonalfile({super.key});

  @override
  State<editepersonalfile> createState() => _editepersonalfileState();
}

class _editepersonalfileState extends State<editepersonalfile> {
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
                    backgroundColor: Colors.white,
                    elevation: 0,
                    toolbarHeight: 3.h,
                  ),
                  body: PageView(children: [
                    Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 0, 5).r,
                        child: Column(children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(0, 10, 330, 0).r,
                              child: Container(
                                child: Icon(
                                  Icons.arrow_back,
                                  color: pink,
                                ),
                                width: 35.w,
                                height: 35.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40).w,
                                    color: scondcolor),
                              ),
                            ),
                          ),
                          Expanded(
                              child: Container(
                                  child: ListView(
                            children: [
                              Column(
                                children: [
                                  ClipOval(
                                    child: Image.asset(
                                      "assets/images/someone.jpeg",
                                      width: 110.w,
                                      height: 110.h,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8.h,
                                  ),
                                  Text(
                                    "محمد علي",
                                    style: TextStyle(
                                        fontSize: 20.sp,
                                        fontFamily: "Almarai",
                                        fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(
                                    height: 6.h,
                                  ),
                                  Text(
                                    "متبرع ",
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        fontFamily: "Almarai",
                                        fontWeight: FontWeight.w300,
                                        color: black.withOpacity(.7)),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 5, right: 10).r,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                              220, 0, 0, 10)
                                          .r,
                                      child: Text(
                                        "الاسم بالكامل",
                                        style: TextStyle(
                                            fontSize: 16.sp,
                                            fontFamily: "Almarai",
                                            fontWeight: FontWeight.w400,
                                            color: black),
                                      ),
                                    ),
                                    TextFormField(
                                      cursorColor: pink,
                                      decoration: InputDecoration(
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: pink, width: 2),
                                              borderRadius:
                                                  BorderRadius.circular(15).r),
                                          border: OutlineInputBorder(
                                              borderSide:
                                                  BorderSide(color: black),
                                              borderRadius:
                                                  BorderRadius.circular(15).r)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          240, 15, 0, 10),
                                      child: Text(
                                        "البريد الالكتروني",
                                        style: TextStyle(
                                            fontSize: 16.sp,
                                            fontFamily: "Almarai",
                                            fontWeight: FontWeight.w400,
                                            color: black),
                                      ),
                                    ),
                                    TextFormField(
                                      cursorColor: pink,
                                      decoration: InputDecoration(
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: pink, width: 2),
                                              borderRadius:
                                                  BorderRadius.circular(15).r),
                                          border: OutlineInputBorder(
                                              borderSide:
                                                  BorderSide(color: black),
                                              borderRadius:
                                                  BorderRadius.circular(15).r)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                              240, 15, 0, 10)
                                          .r,
                                      child: Text(
                                        "رقم الهاتف",
                                        style: TextStyle(
                                            fontSize: 16.sp,
                                            fontFamily: "Almarai",
                                            fontWeight: FontWeight.w400,
                                            color: black),
                                      ),
                                    ),
                                    TextFormField(
                                      cursorColor: pink,
                                      decoration: InputDecoration(
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: pink, width: 2),
                                              borderRadius:
                                                  BorderRadius.circular(15).r),
                                          border: OutlineInputBorder(
                                              borderSide:
                                                  BorderSide(color: black),
                                              borderRadius:
                                                  BorderRadius.circular(15).r)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                              260, 15, 0, 10)
                                          .r,
                                      child: Text(
                                        "العنوان",
                                        style: TextStyle(
                                            fontSize: 16.sp,
                                            fontFamily: "Almarai",
                                            fontWeight: FontWeight.w400,
                                            color: black),
                                      ),
                                    ),
                                    TextFormField(
                                      cursorColor: pink,
                                      decoration: InputDecoration(
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: pink, width: 2),
                                              borderRadius:
                                                  BorderRadius.circular(15).r),
                                          border: OutlineInputBorder(
                                              borderSide:
                                                  BorderSide(color: black),
                                              borderRadius:
                                                  BorderRadius.circular(15).r)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                              240, 15, 0, 10)
                                          .r,
                                      child: Text(
                                        "فصيلة الدم",
                                        style: TextStyle(
                                            fontSize: 16.sp,
                                            fontFamily: "Almarai",
                                            fontWeight: FontWeight.w400,
                                            color: black),
                                      ),
                                    ),
                                    TextFormField(
                                      cursorColor: pink,
                                      decoration: InputDecoration(
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: pink, width: 2),
                                              borderRadius:
                                                  BorderRadius.circular(15).r),
                                          border: OutlineInputBorder(
                                              borderSide:
                                                  BorderSide(color: black),
                                              borderRadius:
                                                  BorderRadius.circular(15).r)),
                                    ),
                                    SizedBox(
                                      height: 30.h,
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Container(
                                            height: 50.h,
                                            child: Center(
                                              child: Text(
                                                "حفظ التغيرات",
                                                style: TextStyle(
                                                    color: white,
                                                    fontFamily: 'Almarai',
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 16.sp),
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                                color: pink,
                                                borderRadius:
                                                    BorderRadius.circular(10)
                                                        .w),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )))
                        ])),
                    setting(),
                  ])));
        });
  }
}
