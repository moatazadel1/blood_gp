import 'package:blood_gp/core/colors.dart';
import 'package:blood_gp/personal/personal.dart';
import 'package:blood_gp/personal/setting.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class rating extends StatefulWidget {
  const rating({super.key});

  @override
  State<rating> createState() => _ratingState();
}

class _ratingState extends State<rating> {
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
                        padding: const EdgeInsets.fromLTRB(5, 10, 5, 0).r,
                        child: Column(children: [
                          Row(
                            children: [
                              GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
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
                                      ))),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 85, right: 5).r,
                                child: Text(
                                  "التقيمات",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Almarai",
                                    fontSize: 20.sp,
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Expanded(
                              child: Container(
                            child: ListView(
                              children: [
                                Container(
                                  width: 335.w,
                                  height: 200.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: privescon),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: const EdgeInsets.only(
                                                      bottom: 80)
                                                  .r,
                                              child: Text(
                                                "16 مارس,2024",
                                                style: TextStyle(
                                                    color: blod_gray,
                                                    fontSize: 14.sp,
                                                    fontFamily: "Almarai",
                                                    fontWeight:
                                                        FontWeight.w400),
                                              )),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                    left: 5,
                                                    right: 5,
                                                    bottom: 30)
                                                .r,
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                          left: 80, bottom: 8)
                                                      .r,
                                                  child: Text(
                                                    "محمد علي",
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontFamily: "Almarai",
                                                      fontSize: 20.sp,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                              left: 77,
                                                              right: 0)
                                                          .r,
                                                  child: Row(
                                                    children: [
                                                      Icon(
                                                        Icons.star,
                                                        color: blod_gray
                                                            .withOpacity(.8),
                                                      ),
                                                      Icon(
                                                        Icons.star,
                                                        color: blod_gray
                                                            .withOpacity(.8),
                                                      ),
                                                      Icon(
                                                        Icons.star,
                                                        color: blod_gray
                                                            .withOpacity(.8),
                                                      ),
                                                      Icon(
                                                        Icons.star,
                                                        color: blod_gray
                                                            .withOpacity(.8),
                                                      ),
                                                      Icon(
                                                        Icons.star,
                                                        color: Colors.amber,
                                                      ),
                                                      SizedBox(
                                                        width: 10.w,
                                                      ),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                    bottom: 15)
                                                .r,
                                            child: ClipOval(
                                              child: Image.asset(
                                                "assets/images/someone.jpeg",
                                                width: 55.w,
                                                height: 55.h,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                                left: 10, bottom: 10, right: 5)
                                            .r,
                                        child: Column(
                                          children: [
                                            Text(
                                              "شكراً لك على عطائك الكريم واستجابتك السريعة لنداء",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontFamily: "Almarai",
                                                fontSize: 14.sp,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                left: 250,
                                              ).r,
                                              child: Text(
                                                ".التبرع بالدم",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: "Almarai",
                                                  fontSize: 14.sp,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Container(
                                  width: 335.w,
                                  height: 200.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: privescon),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: const EdgeInsets.only(
                                                      bottom: 80)
                                                  .r,
                                              child: Text(
                                                "16 مارس,2024",
                                                style: TextStyle(
                                                    color: blod_gray,
                                                    fontSize: 14.sp,
                                                    fontFamily: "Almarai",
                                                    fontWeight:
                                                        FontWeight.w400),
                                              )),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                    left: 5,
                                                    right: 5,
                                                    bottom: 30)
                                                .r,
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                          left: 80, bottom: 8)
                                                      .r,
                                                  child: Text(
                                                    "محمد علي",
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontFamily: "Almarai",
                                                      fontSize: 20.sp,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                              left: 77,
                                                              right: 0)
                                                          .r,
                                                  child: Row(
                                                    children: [
                                                      Icon(
                                                        Icons.star,
                                                        color: blod_gray
                                                            .withOpacity(.8),
                                                      ),
                                                      Icon(
                                                        Icons.star,
                                                        color: blod_gray
                                                            .withOpacity(.8),
                                                      ),
                                                      Icon(
                                                        Icons.star,
                                                        color: blod_gray
                                                            .withOpacity(.8),
                                                      ),
                                                      Icon(
                                                        Icons.star,
                                                        color: blod_gray
                                                            .withOpacity(.8),
                                                      ),
                                                      Icon(
                                                        Icons.star,
                                                        color: Colors.amber,
                                                      ),
                                                      SizedBox(
                                                        width: 10.w,
                                                      ),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                    bottom: 15)
                                                .r,
                                            child: ClipOval(
                                              child: Image.asset(
                                                "assets/images/someone.jpeg",
                                                width: 55.w,
                                                height: 55.h,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                                left: 10, bottom: 10, right: 5)
                                            .r,
                                        child: Column(
                                          children: [
                                            Text(
                                              "شكراً لك على عطائك الكريم واستجابتك السريعة لنداء",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontFamily: "Almarai",
                                                fontSize: 14.sp,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                left: 250,
                                              ).r,
                                              child: Text(
                                                ".التبرع بالدم",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: "Almarai",
                                                  fontSize: 14.sp,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Container(
                                  width: 335.w,
                                  height: 200.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: privescon),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: const EdgeInsets.only(
                                                      bottom: 80)
                                                  .r,
                                              child: Text(
                                                "16 مارس,2024",
                                                style: TextStyle(
                                                    color: blod_gray,
                                                    fontSize: 14.sp,
                                                    fontFamily: "Almarai",
                                                    fontWeight:
                                                        FontWeight.w400),
                                              )),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                    left: 5,
                                                    right: 5,
                                                    bottom: 30)
                                                .r,
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                          left: 80, bottom: 8)
                                                      .r,
                                                  child: Text(
                                                    "محمد علي",
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontFamily: "Almarai",
                                                      fontSize: 20.sp,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                              left: 77,
                                                              right: 0)
                                                          .r,
                                                  child: Row(
                                                    children: [
                                                      Icon(
                                                        Icons.star,
                                                        color: blod_gray
                                                            .withOpacity(.8),
                                                      ),
                                                      Icon(
                                                        Icons.star,
                                                        color: blod_gray
                                                            .withOpacity(.8),
                                                      ),
                                                      Icon(
                                                        Icons.star,
                                                        color: blod_gray
                                                            .withOpacity(.8),
                                                      ),
                                                      Icon(
                                                        Icons.star,
                                                        color: blod_gray
                                                            .withOpacity(.8),
                                                      ),
                                                      Icon(
                                                        Icons.star,
                                                        color: Colors.amber,
                                                      ),
                                                      SizedBox(
                                                        width: 10.w,
                                                      ),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                    bottom: 15)
                                                .r,
                                            child: ClipOval(
                                              child: Image.asset(
                                                "assets/images/someone.jpeg",
                                                width: 55.w,
                                                height: 55.h,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                                left: 10, bottom: 10, right: 5)
                                            .r,
                                        child: Column(
                                          children: [
                                            Text(
                                              "شكراً لك على عطائك الكريم واستجابتك السريعة لنداء",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontFamily: "Almarai",
                                                fontSize: 14.sp,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                left: 250,
                                              ).r,
                                              child: Text(
                                                ".التبرع بالدم",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: "Almarai",
                                                  fontSize: 14.sp,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Container(
                                  width: 335.w,
                                  height: 200.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: privescon),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: const EdgeInsets.only(
                                                      bottom: 80)
                                                  .r,
                                              child: Text(
                                                "16 مارس,2024",
                                                style: TextStyle(
                                                    color: blod_gray,
                                                    fontSize: 14.sp,
                                                    fontFamily: "Almarai",
                                                    fontWeight:
                                                        FontWeight.w400),
                                              )),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                    left: 5,
                                                    right: 5,
                                                    bottom: 30)
                                                .r,
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                          left: 80, bottom: 8)
                                                      .r,
                                                  child: Text(
                                                    "محمد علي",
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontFamily: "Almarai",
                                                      fontSize: 20.sp,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                              left: 77,
                                                              right: 0)
                                                          .r,
                                                  child: Row(
                                                    children: [
                                                      Icon(
                                                        Icons.star,
                                                        color: blod_gray
                                                            .withOpacity(.8),
                                                      ),
                                                      Icon(
                                                        Icons.star,
                                                        color: blod_gray
                                                            .withOpacity(.8),
                                                      ),
                                                      Icon(
                                                        Icons.star,
                                                        color: blod_gray
                                                            .withOpacity(.8),
                                                      ),
                                                      Icon(
                                                        Icons.star,
                                                        color: blod_gray
                                                            .withOpacity(.8),
                                                      ),
                                                      Icon(
                                                        Icons.star,
                                                        color: Colors.amber,
                                                      ),
                                                      SizedBox(
                                                        width: 10.w,
                                                      ),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                    bottom: 15)
                                                .r,
                                            child: ClipOval(
                                              child: Image.asset(
                                                "assets/images/someone.jpeg",
                                                width: 55.w,
                                                height: 55.h,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                                left: 10, bottom: 10, right: 5)
                                            .r,
                                        child: Column(
                                          children: [
                                            Text(
                                              "شكراً لك على عطائك الكريم واستجابتك السريعة لنداء",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontFamily: "Almarai",
                                                fontSize: 14.sp,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                left: 250,
                                              ).r,
                                              child: Text(
                                                ".التبرع بالدم",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: "Almarai",
                                                  fontSize: 14.sp,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Container(
                                  width: 335.w,
                                  height: 200.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: privescon),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: const EdgeInsets.only(
                                                      bottom: 80)
                                                  .r,
                                              child: Text(
                                                "16 مارس,2024",
                                                style: TextStyle(
                                                    color: blod_gray,
                                                    fontSize: 14.sp,
                                                    fontFamily: "Almarai",
                                                    fontWeight:
                                                        FontWeight.w400),
                                              )),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                    left: 5,
                                                    right: 5,
                                                    bottom: 30)
                                                .r,
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                          left: 80, bottom: 8)
                                                      .r,
                                                  child: Text(
                                                    "محمد علي",
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontFamily: "Almarai",
                                                      fontSize: 20.sp,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                              left: 77,
                                                              right: 0)
                                                          .r,
                                                  child: Row(
                                                    children: [
                                                      Icon(
                                                        Icons.star,
                                                        color: blod_gray
                                                            .withOpacity(.8),
                                                      ),
                                                      Icon(
                                                        Icons.star,
                                                        color: blod_gray
                                                            .withOpacity(.8),
                                                      ),
                                                      Icon(
                                                        Icons.star,
                                                        color: blod_gray
                                                            .withOpacity(.8),
                                                      ),
                                                      Icon(
                                                        Icons.star,
                                                        color: blod_gray
                                                            .withOpacity(.8),
                                                      ),
                                                      Icon(
                                                        Icons.star,
                                                        color: Colors.amber,
                                                      ),
                                                      SizedBox(
                                                        width: 10.w,
                                                      ),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                    bottom: 15)
                                                .r,
                                            child: ClipOval(
                                              child: Image.asset(
                                                "assets/images/someone.jpeg",
                                                width: 55.w,
                                                height: 55.h,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                                left: 10, bottom: 10, right: 5)
                                            .r,
                                        child: Column(
                                          children: [
                                            Text(
                                              "شكراً لك على عطائك الكريم واستجابتك السريعة لنداء",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontFamily: "Almarai",
                                                fontSize: 14.sp,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                left: 250,
                                              ).r,
                                              child: Text(
                                                ".التبرع بالدم",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: "Almarai",
                                                  fontSize: 14.sp,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )),
                        ])),
                    setting(),
                  ])));
        });
  }
}
