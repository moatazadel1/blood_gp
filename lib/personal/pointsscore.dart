import 'package:blood_gp/core/colors.dart';
import 'package:blood_gp/personal/Donation%20Points.dart';
import 'package:blood_gp/personal/personal.dart';
import 'package:blood_gp/personal/replacingpoints.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class pointsscore extends StatefulWidget {
  const pointsscore({super.key});

  @override
  State<pointsscore> createState() => _pointsscoreState();
}

class _pointsscoreState extends State<pointsscore> {
  final PageController _pageController = PageController();
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
                body: PageView(
                    controller: _pageController,
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                          padding: const EdgeInsets.fromLTRB(5, 10, 5, 0).r,
                          child: Column(children: [
                            Row(
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                donationpoints(),
                                          ));
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        child: Icon(
                                          Icons.arrow_back,
                                          color: pink,
                                        ),
                                        width: 35.w,
                                        height: 35.h,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(40).w,
                                            color: scondcolor),
                                      ),
                                    )),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 100, right: 5),
                                  child: Text(
                                    "سجل النقاط",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Almarai",
                                      fontSize: 20.sp,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0).r,
                              child: Container(
                                width: 350.w,
                                height: 130.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20).w,
                                    color: pink),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                              left: 240, right: 0)
                                          .r,
                                      child: Text(
                                        textAlign: TextAlign.right,
                                        "لديك الان",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "Almarai",
                                          fontSize: 18.sp,
                                          color: white,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(0, 0, 20, 0)
                                              .r,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            "نقطه",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "Almarai",
                                              fontSize: 16.sp,
                                              color: white,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 8.w,
                                          ),
                                          Text(
                                            "1500",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "Almarai",
                                              fontSize: 30.sp,
                                              color: white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text(
                                      "وستنتهي صلاحية 1500 نقطة في تاريخ 11 مارس 2024",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "Almarai",
                                        fontSize: 14.sp,
                                        color: white.withOpacity(.8),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 25.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              replacingpoints(),
                                        ));
                                  },
                                  child: Container(
                                    width: 85.w,
                                    height: 33.h,
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: pink, width: 2),
                                        color: white,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Center(
                                      child: Text(
                                        "المستبدل",
                                        style: TextStyle(
                                            fontFamily: "Almarai",
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w700,
                                            color: pink),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 15.h,
                                ),
                                Container(
                                  width: 85.w,
                                  height: 33.h,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: pink, width: 2),
                                    color: white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "المستحق",
                                      style: TextStyle(
                                          fontFamily: "Almarai",
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w700,
                                          color: pink),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 15.h,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10).w,
                                  child: Container(
                                    width: 85.w,
                                    height: 33.h,
                                    decoration: BoxDecoration(
                                        color: pink,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Center(
                                      child: Text(
                                        "الجميع",
                                        style: TextStyle(
                                            fontFamily: "Almarai",
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w700,
                                            color: white),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Expanded(
                                child: Container(
                              child: ListView(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: Container(
                                      padding: EdgeInsets.only(bottom: 20.r),
                                      decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(width: .5))),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "+500",
                                            style: TextStyle(
                                                fontFamily: "Almarai",
                                                fontSize: 18.sp,
                                                fontWeight: FontWeight.w700,
                                                color: green),
                                          ),
                                          Column(
                                            children: [
                                              Text(
                                                "تبرع بالدم",
                                                style: TextStyle(
                                                    fontFamily: "Almarai",
                                                    fontSize: 16.sp,
                                                    fontWeight: FontWeight.w700,
                                                    color: black),
                                              ),
                                              SizedBox(
                                                height: 15.h,
                                              ),
                                              Text(
                                                  textDirection:
                                                      TextDirection.rtl,
                                                  "12 مارس 2024",
                                                  style: TextStyle(
                                                      fontFamily: "Almarai",
                                                      fontSize: 12.sp,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: black
                                                          .withOpacity(.7))),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: Container(
                                      padding: EdgeInsets.only(bottom: 20.r),
                                      decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(width: .5))),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "+500",
                                            style: TextStyle(
                                                fontFamily: "Almarai",
                                                fontSize: 18.sp,
                                                fontWeight: FontWeight.w700,
                                                color: pink),
                                          ),
                                          Column(
                                            children: [
                                              Text(
                                                "انتهاء صلاحية النقاط",
                                                style: TextStyle(
                                                    fontFamily: "Almarai",
                                                    fontSize: 16.sp,
                                                    fontWeight: FontWeight.w700,
                                                    color: black),
                                              ),
                                              SizedBox(
                                                height: 15.h,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                        left: 70)
                                                    .r,
                                                child: Text(
                                                    textDirection:
                                                        TextDirection.rtl,
                                                    "12 مارس 2024",
                                                    style: TextStyle(
                                                        fontFamily: "Almarai",
                                                        fontSize: 12.sp,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color: black
                                                            .withOpacity(.7))),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: Container(
                                      padding: EdgeInsets.only(bottom: 20.r),
                                      decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(width: .5))),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "+500",
                                            style: TextStyle(
                                                fontFamily: "Almarai",
                                                fontSize: 18.sp,
                                                fontWeight: FontWeight.w700,
                                                color: green),
                                          ),
                                          Column(
                                            children: [
                                              Text(
                                                "تبرع بالدم",
                                                style: TextStyle(
                                                    fontFamily: "Almarai",
                                                    fontSize: 16.sp,
                                                    fontWeight: FontWeight.w700,
                                                    color: black),
                                              ),
                                              SizedBox(
                                                height: 15.h,
                                              ),
                                              Text(
                                                  textDirection:
                                                      TextDirection.rtl,
                                                  "12 مارس 2024",
                                                  style: TextStyle(
                                                      fontFamily: "Almarai",
                                                      fontSize: 12.sp,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: black
                                                          .withOpacity(.7))),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: Container(
                                      padding: EdgeInsets.only(bottom: 20.r),
                                      decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(width: .5))),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "+500",
                                            style: TextStyle(
                                                fontFamily: "Almarai",
                                                fontSize: 18.sp,
                                                fontWeight: FontWeight.w700,
                                                color: pink),
                                          ),
                                          Column(
                                            children: [
                                              Text(
                                                "انتهاء صلاحية النقاط",
                                                style: TextStyle(
                                                    fontFamily: "Almarai",
                                                    fontSize: 16.sp,
                                                    fontWeight: FontWeight.w700,
                                                    color: black),
                                              ),
                                              SizedBox(
                                                height: 15.h,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                        left: 70)
                                                    .r,
                                                child: Text(
                                                    textDirection:
                                                        TextDirection.rtl,
                                                    "12 مارس 2024",
                                                    style: TextStyle(
                                                        fontFamily: "Almarai",
                                                        fontSize: 12.sp,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color: black
                                                            .withOpacity(.7))),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: Container(
                                      padding: EdgeInsets.only(bottom: 20.r),
                                      decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(width: .5))),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "+500",
                                            style: TextStyle(
                                                fontFamily: "Almarai",
                                                fontSize: 18.sp,
                                                fontWeight: FontWeight.w700,
                                                color: green),
                                          ),
                                          Column(
                                            children: [
                                              Text(
                                                "تبرع بالدم",
                                                style: TextStyle(
                                                    fontFamily: "Almarai",
                                                    fontSize: 16.sp,
                                                    fontWeight: FontWeight.w700,
                                                    color: black),
                                              ),
                                              SizedBox(
                                                height: 15.h,
                                              ),
                                              Text(
                                                  textDirection:
                                                      TextDirection.rtl,
                                                  "12 مارس 2024",
                                                  style: TextStyle(
                                                      fontFamily: "Almarai",
                                                      fontSize: 12.sp,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: black
                                                          .withOpacity(.7))),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: Container(
                                      padding: EdgeInsets.only(bottom: 20.r),
                                      decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(width: .5))),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "+500",
                                            style: TextStyle(
                                                fontFamily: "Almarai",
                                                fontSize: 18.sp,
                                                fontWeight: FontWeight.w700,
                                                color: pink),
                                          ),
                                          Column(
                                            children: [
                                              Text(
                                                "انتهاء صلاحية النقاط",
                                                style: TextStyle(
                                                    fontFamily: "Almarai",
                                                    fontSize: 16.sp,
                                                    fontWeight: FontWeight.w700,
                                                    color: black),
                                              ),
                                              SizedBox(
                                                height: 15.h,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                        left: 70)
                                                    .r,
                                                child: Text(
                                                    textDirection:
                                                        TextDirection.rtl,
                                                    "12 مارس 2024",
                                                    style: TextStyle(
                                                        fontFamily: "Almarai",
                                                        fontSize: 12.sp,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color: black
                                                            .withOpacity(.7))),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )),
                          ])),
                    ]),
              ));
        });
  }
}
