import 'package:blood_gp/forgetpasswor/Code%20Activationpage.dart';
import 'package:blood_gp/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class fogetpass extends StatefulWidget {
  const fogetpass({super.key});

  @override
  State<fogetpass> createState() => _fogetpassState();
}

class _fogetpassState extends State<fogetpass> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        // Use builder only if you need to use library outside ScreenUtilInit context
        builder: (_, child) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              toolbarHeight: 3.h,
            ),
            body: Padding(
              padding: const EdgeInsets.all(8.0).w,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(179, 20, 0, 0).r,
                      child: Text(
                        "تغير كلمة السر",
                        style: TextStyle(
                            fontFamily: 'Almarai',
                            fontWeight: FontWeight.w700,
                            fontSize: 22.sp),
                            textAlign: TextAlign.right,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(110, 18, 0, 0).r,
                      child: Text(
                        "ادخل البريد الالكتروني لارسال كود تغير كلمة السر",
                        style: TextStyle(
                            fontFamily: 'Almarai',
                            fontWeight: FontWeight.w700,
                            fontSize: 12.sp,
                            color: gray),
                            textAlign: TextAlign.right,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0).w,
                      child: Image.asset(
                        "assets/images/92030f2f24eab59c48cd7596cf39d723.png",
                        width: 150.w,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0).w,
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15).w),
                            hintText: "البريد الالكتروني",
                            suffixIcon: Icon(
                              Icons.alternate_email,
                              size: 15.w,
                            ),
                            contentPadding:
                                EdgeInsets.fromLTRB(210, 15, 5, 15).r,
                            hintStyle: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Almarai',
                              color: blod_gray,
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
                              builder: (context) => CodeActivation(),
                            ));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0).w,
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
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
