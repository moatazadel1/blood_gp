import 'package:blood_gp/personal/personal.dart';
import 'package:blood_gp/personal/pointsscore.dart';
import 'package:blood_gp/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class donationpoints extends StatefulWidget {
  const donationpoints({super.key});

  @override
  State<donationpoints> createState() => _donationpointsState();
}

class _donationpointsState extends State<donationpoints> {
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
                                      ),
                                    )),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 100, right: 5),
                                  child: Text(
                                    "نقاطك",
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
                                    physics: AlwaysScrollableScrollPhysics(),
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                                0, 8, 0, 0)
                                            .r,
                                        child: Container(
                                          width: 350.w,
                                          height: 130.h,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20).w,
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
                                                    const EdgeInsets.fromLTRB(
                                                            0, 0, 20, 0)
                                                        .r,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Text(
                                                      "نقطه",
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w400,
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
                                                        fontWeight:
                                                            FontWeight.w400,
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
                                        height: 30.h,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                                right: 5, left: 70)
                                            .r,
                                        child: Text(
                                          "كيف  تحصل علي مكافات مع وريد؟",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "Almarai",
                                            fontSize: 18.sp,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15.h,
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(bottom: 5),
                                        decoration: BoxDecoration(
                                            border: Border(
                                                bottom: BorderSide(
                                                    width: .5.w,
                                                    color: black
                                                        .withOpacity(.6)))),
                                        child: ListTile(
                                          title: Text(
                                            textDirection: TextDirection.rtl,
                                            "تبرع بالدم",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "Almarai",
                                              fontSize: 18.sp,
                                            ),
                                          ),
                                          subtitle: Text(
                                            textDirection: TextDirection.rtl,
                                            "تحصل 200 نقطة في كل مرة تبرع بالدم",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontFamily: "Almarai",
                                                fontSize: 12.sp,
                                                color: black.withOpacity(.6)),
                                          ),
                                          trailing: Image.asset(
                                              "assets/images/eb0a9cb4eb6bec4a904538c3264c7ea4.png"),
                                        ),
                                      ),
                                      Container(
                                        padding:
                                            EdgeInsets.only(top: 5, bottom: 5),
                                        decoration: BoxDecoration(
                                            border: Border(
                                                bottom: BorderSide(
                                                    width: .5.w,
                                                    color: black
                                                        .withOpacity(.7)))),
                                        child: ListTile(
                                          title: Text(
                                            textDirection: TextDirection.rtl,
                                            "افتح التطبيق يوميا",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "Almarai",
                                              fontSize: 18.sp,
                                            ),
                                          ),
                                          subtitle: Text(
                                            textDirection: TextDirection.rtl,
                                            "تحصل علي 4 نقاط في كل يوم تفتح فيه التطبيق",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontFamily: "Almarai",
                                                fontSize: 12.sp,
                                                color: black.withOpacity(.6)),
                                          ),
                                          trailing: Text(
                                            "+4",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontFamily: "Almarai",
                                                fontSize: 36.sp,
                                                color: pink),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding:
                                            EdgeInsets.only(top: 5, bottom: 5),
                                        decoration: BoxDecoration(
                                            border: Border(
                                                bottom: BorderSide(
                                                    width: .5.w,
                                                    color: black
                                                        .withOpacity(.7)))),
                                        child: ListTile(
                                          title: Text(
                                            textDirection: TextDirection.rtl,
                                            "أدع اصدقائك",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "Almarai",
                                              fontSize: 18.sp,
                                            ),
                                          ),
                                          subtitle: Text(
                                            textDirection: TextDirection.rtl,
                                            "تحصل  علي 10 نقاط علي كل تسجيل من خلال الرابط الخاص بك",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontFamily: "Almarai",
                                                fontSize: 12.sp,
                                                color: black.withOpacity(.6)),
                                          ),
                                          trailing: Image.asset(
                                              "assets/images/af86a1ad1d89ea679d0c1a5bd9f59de8.png"),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 25.h,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 150, right: 5),
                                        child: Text(
                                          textDirection: TextDirection.rtl,
                                          "احصل علي الخصومات",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "Almarai",
                                              fontSize: 20.sp,
                                              color: black),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20.h,
                                      ),
                                      Container(
                                        width: 340.w,
                                        height: 210.h,
                                        decoration: BoxDecoration(
                                          border: Border.all(width: 2),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Image.asset(
                                          "assets/images/def5a4abc188a71f35b3e8ef445070d8.jpg",
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ]),
                              ),
                            ),
                          ])),
                      pointsscore(),
                    ]),
              ));
        });
  }
}
