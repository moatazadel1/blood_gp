import 'package:blood_gp/core/colors.dart';
import 'package:blood_gp/personal/personal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class privesdonation extends StatefulWidget {
  const privesdonation({super.key});

  @override
  State<privesdonation> createState() => _privesdonationState();
}

class _privesdonationState extends State<privesdonation> {
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
                  body: Padding(
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
                                  const EdgeInsets.only(left: 75, right: 5),
                              child: Text(
                                "التبرعات السابقة",
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
                          height: 25.h,
                        ),
                        Expanded(
                            child: Container(
                          child: ListView(
                            children: [
                              Container(
                                width: 335.w,
                                height: 135.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: privescon),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 80).r,
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Image.asset(
                                              "assets/images/dropblood.png",
                                              width: 60,
                                            ),
                                            Text(
                                              "A+",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontFamily: "Almarai",
                                                  fontSize: 14.sp,
                                                  color: white),
                                            ),
                                          ]),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                              left: 30, right: 5)
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
                                                fontWeight: FontWeight.w400,
                                                fontFamily: "Almarai",
                                                fontSize: 20.sp,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                    left: 15, bottom: 8)
                                                .r,
                                            child: Row(
                                              children: [
                                                Text(
                                                  "مستشفي قنا العام -قنا",
                                                  style: TextStyle(
                                                      color: blod_gray
                                                          .withOpacity(.8),
                                                      fontSize: 14.sp,
                                                      fontFamily: "Almarai",
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                                SizedBox(
                                                  width: 5.w,
                                                ),
                                                Image.asset(
                                                  "assets/images/loct.png",
                                                  width: 14.w,
                                                  height: 12.h,
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                    right: 4, bottom: 8)
                                                .r,
                                            child: Row(
                                              children: [
                                                Text(
                                                  "تاريخ التبرع : 20 مارس,2024",
                                                  style: TextStyle(
                                                      color: blod_gray
                                                          .withOpacity(.8),
                                                      fontSize: 14.sp,
                                                      fontFamily: "Almarai",
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                                SizedBox(
                                                  width: 5.w,
                                                ),
                                                Image.asset(
                                                  "assets/images/clock.png",
                                                  width: 12.w,
                                                  height: 10.h,
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                    left: 18, right: 5)
                                                .r,
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  color:
                                                      blod_gray.withOpacity(.8),
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color:
                                                      blod_gray.withOpacity(.8),
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color:
                                                      blod_gray.withOpacity(.8),
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color:
                                                      blod_gray.withOpacity(.8),
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.amber,
                                                ),
                                                SizedBox(
                                                  width: 10.w,
                                                ),
                                                Text(
                                                  ": تقيمك ",
                                                  style: TextStyle(
                                                      color: blod_gray
                                                          .withOpacity(.8),
                                                      fontSize: 13.sp,
                                                      fontFamily: "Almarai",
                                                      fontWeight:
                                                          FontWeight.w400),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 60).r,
                                      child: ClipOval(
                                        child: Image.asset(
                                          "assets/images/someone.jpeg",
                                          width: 60.w,
                                          height: 60.h,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Container(
                                width: 335.w,
                                height: 135.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: privescon),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 80).r,
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Image.asset(
                                              "assets/images/dropblood.png",
                                              width: 60,
                                            ),
                                            Text(
                                              "A+",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontFamily: "Almarai",
                                                  fontSize: 14.sp,
                                                  color: white),
                                            ),
                                          ]),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                              left: 30, right: 5)
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
                                                fontWeight: FontWeight.w400,
                                                fontFamily: "Almarai",
                                                fontSize: 20.sp,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                    left: 15, bottom: 8)
                                                .r,
                                            child: Row(
                                              children: [
                                                Text(
                                                  "مستشفي قنا العام -قنا",
                                                  style: TextStyle(
                                                      color: blod_gray
                                                          .withOpacity(.8),
                                                      fontSize: 14.sp,
                                                      fontFamily: "Almarai",
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                                SizedBox(
                                                  width: 5.w,
                                                ),
                                                Image.asset(
                                                  "assets/images/loct.png",
                                                  width: 14.w,
                                                  height: 12.h,
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                    right: 4, bottom: 8)
                                                .r,
                                            child: Row(
                                              children: [
                                                Text(
                                                  "تاريخ التبرع : 20 مارس,2024",
                                                  style: TextStyle(
                                                      color: blod_gray
                                                          .withOpacity(.8),
                                                      fontSize: 14.sp,
                                                      fontFamily: "Almarai",
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                                SizedBox(
                                                  width: 5.w,
                                                ),
                                                Image.asset(
                                                  "assets/images/clock.png",
                                                  width: 12.w,
                                                  height: 10.h,
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                    left: 18, right: 5)
                                                .r,
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  color:
                                                      blod_gray.withOpacity(.8),
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color:
                                                      blod_gray.withOpacity(.8),
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color:
                                                      blod_gray.withOpacity(.8),
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color:
                                                      blod_gray.withOpacity(.8),
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.amber,
                                                ),
                                                SizedBox(
                                                  width: 10.w,
                                                ),
                                                Text(
                                                  ": تقيمك ",
                                                  style: TextStyle(
                                                      color: blod_gray
                                                          .withOpacity(.8),
                                                      fontSize: 13.sp,
                                                      fontFamily: "Almarai",
                                                      fontWeight:
                                                          FontWeight.w400),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 60).r,
                                      child: ClipOval(
                                        child: Image.asset(
                                          "assets/images/someone.jpeg",
                                          width: 60.w,
                                          height: 60.h,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Container(
                                width: 335.w,
                                height: 135.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: privescon),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 80).r,
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Image.asset(
                                              "assets/images/dropblood.png",
                                              width: 60,
                                            ),
                                            Text(
                                              "A+",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontFamily: "Almarai",
                                                  fontSize: 14.sp,
                                                  color: white),
                                            ),
                                          ]),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                              left: 30, right: 5)
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
                                                fontWeight: FontWeight.w400,
                                                fontFamily: "Almarai",
                                                fontSize: 20.sp,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                    left: 15, bottom: 8)
                                                .r,
                                            child: Row(
                                              children: [
                                                Text(
                                                  "مستشفي قنا العام -قنا",
                                                  style: TextStyle(
                                                      color: blod_gray
                                                          .withOpacity(.8),
                                                      fontSize: 14.sp,
                                                      fontFamily: "Almarai",
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                                SizedBox(
                                                  width: 5.w,
                                                ),
                                                Image.asset(
                                                  "assets/images/loct.png",
                                                  width: 14.w,
                                                  height: 12.h,
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                    right: 4, bottom: 8)
                                                .r,
                                            child: Row(
                                              children: [
                                                Text(
                                                  "تاريخ التبرع : 20 مارس,2024",
                                                  style: TextStyle(
                                                      color: blod_gray
                                                          .withOpacity(.8),
                                                      fontSize: 14.sp,
                                                      fontFamily: "Almarai",
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                                SizedBox(
                                                  width: 5.w,
                                                ),
                                                Image.asset(
                                                  "assets/images/clock.png",
                                                  width: 12.w,
                                                  height: 10.h,
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                    left: 18, right: 5)
                                                .r,
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  color:
                                                      blod_gray.withOpacity(.8),
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color:
                                                      blod_gray.withOpacity(.8),
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color:
                                                      blod_gray.withOpacity(.8),
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color:
                                                      blod_gray.withOpacity(.8),
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.amber,
                                                ),
                                                SizedBox(
                                                  width: 10.w,
                                                ),
                                                Text(
                                                  ": تقيمك ",
                                                  style: TextStyle(
                                                      color: blod_gray
                                                          .withOpacity(.8),
                                                      fontSize: 13.sp,
                                                      fontFamily: "Almarai",
                                                      fontWeight:
                                                          FontWeight.w400),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 60).r,
                                      child: ClipOval(
                                        child: Image.asset(
                                          "assets/images/someone.jpeg",
                                          width: 60.w,
                                          height: 60.h,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Container(
                                width: 335.w,
                                height: 135.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: privescon),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 80).r,
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Image.asset(
                                              "assets/images/dropblood.png",
                                              width: 60,
                                            ),
                                            Text(
                                              "A+",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontFamily: "Almarai",
                                                  fontSize: 14.sp,
                                                  color: white),
                                            ),
                                          ]),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                              left: 30, right: 5)
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
                                                fontWeight: FontWeight.w400,
                                                fontFamily: "Almarai",
                                                fontSize: 20.sp,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                    left: 15, bottom: 8)
                                                .r,
                                            child: Row(
                                              children: [
                                                Text(
                                                  "مستشفي قنا العام -قنا",
                                                  style: TextStyle(
                                                      color: blod_gray
                                                          .withOpacity(.8),
                                                      fontSize: 14.sp,
                                                      fontFamily: "Almarai",
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                                SizedBox(
                                                  width: 5.w,
                                                ),
                                                Image.asset(
                                                  "assets/images/loct.png",
                                                  width: 14.w,
                                                  height: 12.h,
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                    right: 4, bottom: 8)
                                                .r,
                                            child: Row(
                                              children: [
                                                Text(
                                                  "تاريخ التبرع : 20 مارس,2024",
                                                  style: TextStyle(
                                                      color: blod_gray
                                                          .withOpacity(.8),
                                                      fontSize: 14.sp,
                                                      fontFamily: "Almarai",
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                                SizedBox(
                                                  width: 5.w,
                                                ),
                                                Image.asset(
                                                  "assets/images/clock.png",
                                                  width: 12.w,
                                                  height: 10.h,
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                    left: 18, right: 5)
                                                .r,
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  color:
                                                      blod_gray.withOpacity(.8),
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color:
                                                      blod_gray.withOpacity(.8),
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color:
                                                      blod_gray.withOpacity(.8),
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color:
                                                      blod_gray.withOpacity(.8),
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.amber,
                                                ),
                                                SizedBox(
                                                  width: 10.w,
                                                ),
                                                Text(
                                                  ": تقيمك ",
                                                  style: TextStyle(
                                                      color: blod_gray
                                                          .withOpacity(.8),
                                                      fontSize: 13.sp,
                                                      fontFamily: "Almarai",
                                                      fontWeight:
                                                          FontWeight.w400),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 60).r,
                                      child: ClipOval(
                                        child: Image.asset(
                                          "assets/images/someone.jpeg",
                                          width: 60.w,
                                          height: 60.h,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Container(
                                width: 335.w,
                                height: 135.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: privescon),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 80).r,
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Image.asset(
                                              "assets/images/dropblood.png",
                                              width: 60,
                                            ),
                                            Text(
                                              "A+",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontFamily: "Almarai",
                                                  fontSize: 14.sp,
                                                  color: white),
                                            ),
                                          ]),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                              left: 30, right: 5)
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
                                                fontWeight: FontWeight.w400,
                                                fontFamily: "Almarai",
                                                fontSize: 20.sp,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                    left: 15, bottom: 8)
                                                .r,
                                            child: Row(
                                              children: [
                                                Text(
                                                  "مستشفي قنا العام -قنا",
                                                  style: TextStyle(
                                                      color: blod_gray
                                                          .withOpacity(.8),
                                                      fontSize: 14.sp,
                                                      fontFamily: "Almarai",
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                                SizedBox(
                                                  width: 5.w,
                                                ),
                                                Image.asset(
                                                  "assets/images/loct.png",
                                                  width: 14.w,
                                                  height: 12.h,
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                    right: 4, bottom: 8)
                                                .r,
                                            child: Row(
                                              children: [
                                                Text(
                                                  "تاريخ التبرع : 20 مارس,2024",
                                                  style: TextStyle(
                                                      color: blod_gray
                                                          .withOpacity(.8),
                                                      fontSize: 14.sp,
                                                      fontFamily: "Almarai",
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                                SizedBox(
                                                  width: 5.w,
                                                ),
                                                Image.asset(
                                                  "assets/images/clock.png",
                                                  width: 12.w,
                                                  height: 10.h,
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                    left: 18, right: 5)
                                                .r,
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  color:
                                                      blod_gray.withOpacity(.8),
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color:
                                                      blod_gray.withOpacity(.8),
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color:
                                                      blod_gray.withOpacity(.8),
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color:
                                                      blod_gray.withOpacity(.8),
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.amber,
                                                ),
                                                SizedBox(
                                                  width: 10.w,
                                                ),
                                                Text(
                                                  ": تقيمك ",
                                                  style: TextStyle(
                                                      color: blod_gray
                                                          .withOpacity(.8),
                                                      fontSize: 13.sp,
                                                      fontFamily: "Almarai",
                                                      fontWeight:
                                                          FontWeight.w400),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 60).r,
                                      child: ClipOval(
                                        child: Image.asset(
                                          "assets/images/someone.jpeg",
                                          width: 60.w,
                                          height: 60.h,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )),
                      ]))));
        });
  }
}
