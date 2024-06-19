import 'package:blood_gp/core/colors.dart';

import 'package:blood_gp/donor/donorDone.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:progress_line/progress_line.dart';

class ZipCode extends StatefulWidget {
  const ZipCode({super.key});

  @override
  State<ZipCode> createState() => _ZipCodeState();
}

class _ZipCodeState extends State<ZipCode> {
  final _formkey = GlobalKey<FormState>();

  TextEditingController _ZipCode = TextEditingController();
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
                  backgroundColor: white,
                  elevation: 0,
                  toolbarHeight: 3.h,
                ),
                body: SingleChildScrollView(
                  child: Column(
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
                                  size: 15.w,
                                ),
                                width: 35.w,
                                height: 35.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40).w,
                                    color: scondcolor),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0).w,
                        child: ProgressLineWidget(
                          percent: 0.8,
                          width: 350.w,
                          height: 60.h,
                          lineColors: [pink],
                          bgColor: gray.withOpacity(0.2),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0).r,
                        child: Text(
                          "الرمز البريدي",
                          style: TextStyle(
                            fontFamily: 'Almarai',
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Form(
                        key: _formkey,
                        child: Padding(
                          padding: const EdgeInsets.all(18.0).w,
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            onChanged: (value) {
                              setState(() {
                                _ZipCode.text = value;
                              });
                            },
                            onSaved: (newValue) {
                              setState(() {
                                _ZipCode.text = newValue.toString();
                              });
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "الرجاء ادخال الرمز البريدي الخاص بمدينتك";
                              } else {
                                return null;
                              }
                            },
                            controller: _ZipCode,
                            cursorColor: pink,
                            textAlign: TextAlign.right,
                            decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: pink),
                                    borderRadius: BorderRadius.circular(30).w),
                                isDense: true,
                                // filled: true,
                                border: OutlineInputBorder(),
                                hintText: "الرجاء ادخال الرمز البريدي لمدينتك",
                                hintStyle: TextStyle(
                                    fontFamily: 'Almarai',
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    color: blod_gray)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      GestureDetector(
                        onTap: () {
                          if (_formkey.currentState!.validate()) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => donorDone(),
                                ));
                          }
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0).w,
                          child: Container(
                            height: 53.h,
                            width: 366.w,
                            child: Center(
                              child: Text(
                                "متابعة",
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
                )),
          );
        });
  }
}
