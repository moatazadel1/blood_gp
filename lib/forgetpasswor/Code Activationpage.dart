import 'package:blood_gp/core/colors.dart';
import 'package:blood_gp/forgetpasswor/newpassword.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CodeActivation extends StatefulWidget {
  const CodeActivation({super.key});

  @override
  State<CodeActivation> createState() => _CodeActivationState();
}

class _CodeActivationState extends State<CodeActivation> {
  int height = 1;
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
                      padding: const EdgeInsets.fromLTRB(170, 20, 0, 0).r,
                      child: Text(
                        "كود التفعيل",
                        style: TextStyle(
                            fontFamily: 'Almarai',
                            fontWeight: FontWeight.w700,
                            fontSize: 28.sp),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(77, 18, 0, 0).r,
                      child: Text(
                        "تم إرسال رمز التفعيل إلى البريد الالكتروني",
                        style: TextStyle(
                            fontFamily: 'Almarai',
                            fontWeight: FontWeight.w700,
                            fontSize: 14.sp,
                            color: gray),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(100, 20, 20, 0).r,
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: Row(
                          children: [
                            Text(
                              "mo909@gmail.com",
                              style: TextStyle(
                                  fontFamily: 'Almarai',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.sp,
                                  color: black),
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                "تعديل",
                                style: TextStyle(
                                    fontFamily: 'Almarai',
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w700,
                                    color: pink),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(100, 50, 100, 30).r,
                      child: Container(
                        height: 120.h,
                        width: 120.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(80).w,
                          color: pink,
                        ),
                        child: Image.asset(
                          'assets/images/1954aa932ec9cdedb570fb996ce3a187.png',
                          // scale: 2,
                          width: 150.w,
                        ),
                      ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.all(8.0),
                    //   child: Pinput(

                    //     forceErrorState: true,
                    //     autofocus: true,
                    //     length: 5,
                    //     keyboardType: TextInputType.number,
                    //   ),
                    // )

                    Form(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 65,
                            width: 52,
                            child: TextFormField(
                              autofocus: true,
                              cursorHeight: 0,
                              onChanged: (value) {
                                if (value.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                              decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: pink),
                                  ),
                                  isDense: true,
                                  fillColor: pink,
                                  hintText: "0",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20))),
                              style: Theme.of(context).textTheme.titleLarge,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                                FilteringTextInputFormatter.digitsOnly
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          SizedBox(
                            height: 65,
                            width: 52,
                            child: TextFormField(
                              cursorHeight: 0,
                              onChanged: (value) {
                                if (value.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                              decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: pink),
                                  ),
                                  isDense: true,
                                  focusColor: pink,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20))),
                              style: Theme.of(context).textTheme.titleLarge,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                                FilteringTextInputFormatter.digitsOnly
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          SizedBox(
                            height: 65,
                            width: 52,
                            child: TextFormField(
                              cursorHeight: 0,
                              onChanged: (value) {
                                if (value.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                              decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: pink),
                                  ),
                                  isDense: true,
                                  focusColor: pink,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20))),
                              style: Theme.of(context).textTheme.titleLarge,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                                FilteringTextInputFormatter.digitsOnly
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          SizedBox(
                            height: 65,
                            width: 52,
                            child: TextFormField(
                              cursorHeight: 0,
                              onChanged: (value) {
                                if (value.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                              decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: pink),
                                  ),
                                  isDense: true,
                                  focusColor: pink,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20))),
                              style: Theme.of(context).textTheme.titleLarge,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                                FilteringTextInputFormatter.digitsOnly
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          SizedBox(
                            height: 65,
                            width: 52,
                            child: TextFormField(
                              cursorHeight: 0,
                              onChanged: (value) {
                                if (value.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                              decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: pink),
                                  ),
                                  isDense: true,
                                  focusColor: pink,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20))),
                              style: Theme.of(context).textTheme.titleLarge,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                                FilteringTextInputFormatter.digitsOnly
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(28.0).w,
                      child: Text(
                        "ستنتهي صلاحية الكود خلال 60 ثانية",
                        style: TextStyle(
                            fontFamily: 'Almarai',
                            fontWeight: FontWeight.w300,
                            fontSize: 12.sp,
                            color: gray),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0).w,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => newpass(),
                              ));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0).w,
                          child: Container(
                            height: 50.h,
                            width: 334.w,
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
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
