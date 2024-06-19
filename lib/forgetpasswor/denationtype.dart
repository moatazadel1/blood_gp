import 'package:blood_gp/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:progress_line/progress_line.dart';

class denationtype extends StatefulWidget {
  const denationtype({super.key});

  @override
  State<denationtype> createState() => _denationtypeState();
}

class _denationtypeState extends State<denationtype> {
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
                elevation: 0,
                toolbarHeight: 3.h,
              ),
              body: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 25, 0, 5).r,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            child: Icon(
                              Icons.arrow_back,
                              color: pink,
                            ),
                            width: 35.w,
                            height: 35.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50).w,
                                color: scondcolor),
                          ),
                        ),
                        SizedBox(
                          width: 100.w,
                        ),
                        Text(
                          "نوع التبرع",
                          style: TextStyle(
                            fontFamily: 'Almarai',
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0).w,
                    child: ProgressLineWidget(
                      percent: 0.2,
                      width: 350.w,
                      height: 60.h,
                      lineColors: [pink],
                      bgColor: gray.withOpacity(0.2),
                    ),
                  ),
                  Container(
                    width: 335.w,
                    height: 126.h,
                    decoration: BoxDecoration(border: Border.all(width: 0.1)),
                    child: Row(
                      children: [
                        Container(
                          width: 47.w,
                          height: 22.h,
                          decoration: BoxDecoration(
                            border: Border.all(width: 1.w, color: pink),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Center(
                              child: Text(
                            "متاح",
                            style: TextStyle(
                              fontFamily: 'Almarai',
                              fontSize: 12.sp,
                              color: pink,
                              fontWeight: FontWeight.w400,
                            ),
                          )),
                        ),
                        Column(
                          children: [
                            Text(
                              "دم",
                              style: TextStyle(
                                fontFamily: 'Almarai',
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              "هو نوع التبرع الأكثر شيوعًا",
                              style: TextStyle(
                                fontFamily: 'Almarai',
                                color: blod_gray,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: 73.w,
                          height: 84.h,
                          child: Image.asset(
                            "assets/images/redblood.png",
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
