import 'package:blood_gp/core/BottomBar.dart';
import 'package:blood_gp/core/colors.dart';
import 'package:blood_gp/personal/Donation%20Points.dart';
import 'package:blood_gp/personal/editepersonalinfo.dart';
import 'package:blood_gp/personal/privesdonation.dart';
import 'package:blood_gp/personal/rating.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class personal extends StatefulWidget {
  const personal({super.key});

  @override
  State<personal> createState() => _personalState();
}

class _personalState extends State<personal> {
  bool switchstate = true;
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
                body: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const BottomNavigationPage(),
                            ));
                      },
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 330, 0).r,
                        child: Container(
                          width: 35.w,
                          height: 35.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40).w,
                              color: scondcolor),
                          child: Icon(
                            Icons.arrow_back,
                            color: pink,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 20.h,
                    ),
                    Expanded(
                        child: Container(
                            child: ListView(
                      physics: const AlwaysScrollableScrollPhysics(),
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
                            Text(
                              "محمد طلعت",
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 90.w,
                              height: 70.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: scondcolor),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "A+",
                                    style: TextStyle(
                                        fontSize: 26.sp,
                                        fontFamily: "Almarai",
                                        fontWeight: FontWeight.w400,
                                        color: pink),
                                  ),
                                  Text(
                                    "الفصيلة",
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        fontFamily: "Almarai",
                                        fontWeight: FontWeight.w400,
                                        color: black),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 90.w,
                              height: 70.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: scondcolor),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "12",
                                    style: TextStyle(
                                        fontSize: 22.sp,
                                        fontFamily: "Almarai",
                                        fontWeight: FontWeight.w400,
                                        color: pink),
                                  ),
                                  Text(
                                    "التبرعات",
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        fontFamily: "Almarai",
                                        fontWeight: FontWeight.w400,
                                        color: black),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 90.w,
                              height: 70.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12).r,
                                  color: scondcolor),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "4.8+",
                                    style: TextStyle(
                                        fontSize: 22.sp,
                                        fontFamily: "Almarai",
                                        fontWeight: FontWeight.w400,
                                        color: pink),
                                  ),
                                  Text(
                                    "التقييم",
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        fontFamily: "Almarai",
                                        fontWeight: FontWeight.w400,
                                        color: black),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                        Column(
                          // physics: BouncingScrollPhysics(),
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 15, 0).w,
                              child: Container(
                                height: 60.h,
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            width: .5.w,
                                            color: black.withOpacity(.4)))),
                                child: Row(
                                    textDirection: TextDirection.rtl,
                                    children: [
                                      Container(
                                        width: 35.w,
                                        height: 35.h,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30).r,
                                          color: scondcolor,
                                        ),
                                        child: Icon(
                                          Icons.date_range,
                                          color: pink,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20.w,
                                      ),
                                      Text(
                                        "متاح للتبرع",
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            fontFamily: "Almarai",
                                            fontWeight: FontWeight.w400,
                                            color: black),
                                      ),
                                      SizedBox(
                                        width: 150.w,
                                      ),
                                      Switch(
                                        activeColor: white,
                                        activeTrackColor: pink,
                                        value: switchstate,
                                        onChanged: (value) {
                                          setState(() {
                                            switchstate = value;
                                          });
                                        },
                                      ),
                                    ]),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const editepersonalfile(),
                                    ));
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(0, 0, 15, 0).w,
                                child: Container(
                                  height: 60.h,
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              width: .5.w,
                                              color: black.withOpacity(.4)))),
                                  child: Row(
                                      textDirection: TextDirection.rtl,
                                      children: [
                                        Container(
                                          width: 35.w,
                                          height: 35.h,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30).r,
                                              color: scondcolor),
                                          child: Icon(
                                            Icons.person_outline_sharp,
                                            color: pink,
                                            size: 35,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 15.w,
                                        ),
                                        Text(
                                          "تعديل الملف الشخصي ",
                                          style: TextStyle(
                                              fontSize: 14.sp,
                                              fontFamily: "Almarai",
                                              fontWeight: FontWeight.w400,
                                              color: black),
                                        ),
                                        const Spacer(),
                                        Icon(
                                          Icons.arrow_back_ios,
                                          color: pink,
                                          size: 30,
                                        ),
                                        const SizedBox(
                                          width: 30,
                                        )
                                      ]),
                                ),
                              ),
                            ),
                            // Padding(
                            //   padding: const EdgeInsets.fromLTRB(0, 0, 15, 0).w,
                            //   child: Container(
                            //     height: 60.h,
                            //     decoration: BoxDecoration(
                            //         border: Border(
                            //             bottom: BorderSide(
                            //                 width: .5.w,
                            //                 color: black.withOpacity(.4)))),
                            //     child: Row(
                            //         textDirection: TextDirection.rtl,
                            //         children: [
                            //           Container(
                            //             width: 35.w,
                            //             height: 35.h,
                            //             decoration: BoxDecoration(
                            //                 borderRadius:
                            //                     BorderRadius.circular(30).r,
                            //                 color: scondcolor),
                            //             child: Icon(
                            //               CupertinoIcons.creditcard,
                            //               color: pink,
                            //               size: 28,
                            //             ),
                            //           ),
                            //           SizedBox(
                            //             width: 15.w,
                            //           ),
                            //           Text(
                            //             "كارت التبرع",
                            //             style: TextStyle(
                            //                 fontSize: 14.sp,
                            //                 fontFamily: "Almarai2",
                            //                 fontWeight: FontWeight.w400,
                            //                 color: black),
                            //           ),
                            //           SizedBox(
                            //             width: 172.w,
                            //           ),
                            //           Icon(
                            //             Icons.arrow_back_ios,
                            //             color: pink,
                            //             size: 30,
                            //           )
                            //         ]),
                            //   ),
                            // ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const donationpoints(),
                                    ));
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(0, 0, 15, 0).w,
                                child: Container(
                                  height: 60.h,
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              width: .5.w,
                                              color: black.withOpacity(.4)))),
                                  child: Row(
                                      textDirection: TextDirection.rtl,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 1).r,
                                          child: Container(
                                            width: 35.w,
                                            height: 35.h,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(30).r,
                                                color: scondcolor),
                                            child: Icon(
                                              Icons.settings,
                                              color: pink,
                                              size: 28,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 15.w,
                                        ),
                                        Text(
                                          "نقاط التبرع",
                                          style: TextStyle(
                                              fontSize: 14.sp,
                                              fontFamily: "Almarai",
                                              fontWeight: FontWeight.w400,
                                              color: black),
                                        ),
                                        const Spacer(),
                                        Icon(
                                          Icons.arrow_back_ios,
                                          color: pink,
                                          size: 30,
                                        ),
                                        const SizedBox(
                                          width: 30,
                                        )
                                      ]),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const privesdonation(),
                                    ));
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(0, 0, 15, 0).w,
                                child: Container(
                                  height: 60.h,
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              width: .5.w,
                                              color: black.withOpacity(.4)))),
                                  child: Row(
                                      textDirection: TextDirection.rtl,
                                      children: [
                                        Container(
                                          width: 35.w,
                                          height: 35.h,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30).r,
                                              color: scondcolor),
                                          child: Icon(
                                            Icons.date_range_sharp,
                                            color: pink,
                                            size: 28,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 15.w,
                                        ),
                                        Text(
                                          "التبرعات السابقة",
                                          style: TextStyle(
                                              fontSize: 14.sp,
                                              fontFamily: "Almarai",
                                              fontWeight: FontWeight.w400,
                                              color: black),
                                        ),
                                        const Spacer(),
                                        Icon(
                                          Icons.arrow_back_ios,
                                          color: pink,
                                          size: 30,
                                        ),
                                        const SizedBox(
                                          width: 30,
                                        )
                                      ]),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 15, 0).w,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const rating(),
                                      ));
                                },
                                child: Container(
                                  height: 60.h,
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              width: .5.w,
                                              color: black.withOpacity(.4)))),
                                  child: Row(
                                      textDirection: TextDirection.rtl,
                                      children: [
                                        Container(
                                          width: 35.w,
                                          height: 35.h,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30).r,
                                              color: scondcolor),
                                          child: Icon(
                                            Icons.star_border_rounded,
                                            color: pink,
                                            size: 35,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 15.w,
                                        ),
                                        Text(
                                          "التقيمات",
                                          style: TextStyle(
                                              fontSize: 14.sp,
                                              fontFamily: "Almarai",
                                              fontWeight: FontWeight.w400,
                                              color: black),
                                        ),
                                        const Spacer(),
                                        Icon(
                                          Icons.arrow_back_ios,
                                          color: pink,
                                          size: 30,
                                        ),
                                        const SizedBox(
                                          width: 30,
                                        )
                                      ]),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                        alignment:
                                            AlignmentDirectional.bottomEnd,
                                        title: Column(
                                          children: [
                                            Container(
                                              width: 90.w,
                                              height: 70.h,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  color: scondcolor),
                                              child: Center(
                                                  child: Container(
                                                width: 30.w,
                                                height: 30.h,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
                                                    color: pink),
                                                child: Icon(
                                                  Icons.close,
                                                  color: white,
                                                ),
                                              )),
                                            ),
                                            SizedBox(
                                              height: 20.h,
                                            ),
                                            Text(
                                              "تسجيل الخروج",
                                              style: TextStyle(
                                                  fontSize: 22.sp,
                                                  fontFamily: "Almarai",
                                                  fontWeight: FontWeight.w700,
                                                  color: black),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                "هل انت متاكد من رغبتك في تسجيل الخروج؟",
                                                style: TextStyle(
                                                  fontFamily: 'Almarai',
                                                  fontSize: 16.sp,
                                                  fontWeight: FontWeight.w400,
                                                  color: blod_gray,
                                                ),
                                                textAlign: TextAlign.right,
                                              ),
                                            ),
                                          ],
                                        ),
                                        backgroundColor: white,
                                        contentPadding:
                                            const EdgeInsets.all(35).w,
                                        content: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              width: 100.w,
                                              height: 50.h,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    width: 2, color: pink),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  "تسجيل الخروج",
                                                  style: TextStyle(
                                                      fontSize: 14.sp,
                                                      fontFamily: "Almarai",
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: pink),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Container(
                                              width: 100.w,
                                              height: 50.h,
                                              decoration: BoxDecoration(
                                                color: pink,
                                                border: Border.all(
                                                    width: 2, color: pink),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  "البقاء ",
                                                  style: TextStyle(
                                                      fontSize: 14.sp,
                                                      fontFamily: "Almarai",
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: white),
                                                ),
                                              ),
                                            )
                                          ],
                                        ));
                                  },
                                );
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(0, 0, 15, 0).w,
                                child: Container(
                                  height: 60.h,
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              width: .5.w,
                                              color: black.withOpacity(.4)))),
                                  child: Row(
                                      textDirection: TextDirection.rtl,
                                      children: [
                                        Container(
                                          width: 35.w,
                                          height: 35.h,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30).r,
                                              color: scondcolor),
                                          child: Icon(
                                            Icons.power_settings_new,
                                            color: pink,
                                            size: 28,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 15.w,
                                        ),
                                        Text(
                                          "تسجيل الخروج",
                                          style: TextStyle(
                                              fontSize: 14.sp,
                                              fontFamily: "Almarai",
                                              fontWeight: FontWeight.w400,
                                              color: black),
                                        ),
                                        const Spacer(),
                                        Icon(
                                          Icons.arrow_back_ios,
                                          color: pink,
                                          size: 30,
                                        ),
                                        const SizedBox(
                                          width: 30,
                                        )
                                      ]),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ))),

                    // Container(
                    //   width: 360.w,
                    //   height: 100.h,
                    //   child: ListView(
                    //     children: [
                    //       Row(
                    //         children: [
                    //           Container(
                    //             width: 340.w,
                    //             child: Row(
                    //               children: [
                    // Container(
                    //   width: 35.w,
                    //   height: 35.h,
                    //   decoration: BoxDecoration(
                    //       borderRadius:
                    //           BorderRadius.circular(30),
                    //       color: scondcolor),
                    //   child: Icon(
                    //     Icons.date_range,
                    //     color: pink,
                    //   ),
                    // ),
                    // Text(
                    //   "متاح للتبرع",
                    //   style: TextStyle(
                    //       fontSize: 12.sp,
                    //       fontFamily: "Almarai2",
                    //       fontWeight: FontWeight.w400,
                    //       color: black),
                    // ),
                    //               ],
                    //             ),
                    //           )
                    //         ],
                    //       )
                    //     ],
                    //   ),
                    // )
                  ],
                )),
          );
        });
  }
}
