import 'package:blood_gp/core/colors.dart';
import 'package:blood_gp/personal/personal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class setting extends StatefulWidget {
  const setting({super.key});

  @override
  State<setting> createState() => _settingState();
}

class _settingState extends State<setting> {
  bool switchsound = true;
  bool switchnotfication = true;
  bool switchvipration = true;
  bool switchdondata = true;

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
                  body: SingleChildScrollView(
                    child: Padding(
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
                                  "الاعدادات",
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
                            height: 70.h,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 15).r,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "عام",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Almarai",
                                    fontSize: 20.sp,
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 15, left: 15).r,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Switch(
                                  activeColor: white,
                                  activeTrackColor: pink,
                                  value: switchsound,
                                  onChanged: (value) {
                                    setState(() {
                                      switchsound = value;
                                    });
                                  },
                                ),
                                Text(
                                  "الصوت",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Almarai",
                                    fontSize: 16.sp,
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 15, left: 15).r,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Switch(
                                  activeColor: white,
                                  activeTrackColor: pink,
                                  value: switchnotfication,
                                  onChanged: (value) {
                                    setState(() {
                                      switchnotfication = value;
                                    });
                                  },
                                ),
                                Text(
                                  "الاشعارات",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Almarai",
                                    fontSize: 16.sp,
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 15, left: 15).r,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Switch(
                                  activeColor: white,
                                  activeTrackColor: pink,
                                  value: switchvipration,
                                  onChanged: (value) {
                                    setState(() {
                                      switchvipration = value;
                                    });
                                  },
                                ),
                                Text(
                                  "الاهتزاز",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Almarai",
                                    fontSize: 16.sp,
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 15, left: 15).r,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Switch(
                                  activeColor: white,
                                  activeTrackColor: pink,
                                  value: switchdondata,
                                  onChanged: (value) {
                                    setState(() {
                                      switchdondata = value;
                                    });
                                  },
                                ),
                                Text(
                                  "التذكير بموعد التبرع",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Almarai",
                                    fontSize: 16.sp,
                                  ),
                                )
                              ],
                            ),
                          )
                        ])),
                  )));
        });
  }
}
