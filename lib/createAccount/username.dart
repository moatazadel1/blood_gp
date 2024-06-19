import 'package:blood_gp/core/BottomBar.dart';
import 'package:blood_gp/core/colors.dart';
import 'package:blood_gp/createAccount/creatingdone.dart';
import 'package:blood_gp/signup2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:progress_line/progress_line.dart';

class username extends StatefulWidget {
  final String name;
  final String email;
  final String password;
  final String birthday;
  final String bloodType;
  final String zipCode;

  const username(
      {super.key,
      required this.name,
      required this.email,
      required this.password,
      required this.birthday,
      required this.bloodType,
      required this.zipCode});

  @override
  State<username> createState() => _usernameState();
}

class _usernameState extends State<username> {
  final _formkey = GlobalKey<FormState>();

  TextEditingController _username = TextEditingController();
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
                          percent: 0.9,
                          width: 350.w,
                          height: 60.h,
                          lineColors: [pink],
                          bgColor: gray.withOpacity(0.2),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0).r,
                        child: Text(
                          "اسم المستخدم",
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
                            onChanged: (value) {
                              setState(() {
                                _username.text = value;
                              });
                            },
                            onSaved: (newValue) {
                              setState(() {
                                _username.text = newValue.toString();
                              });
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "الرجاء ادخال اسم المستخدم";
                              } else {
                                return null;
                              }
                            },
                            controller: _username,
                            cursorColor: pink,
                            textAlign: TextAlign.right,
                            decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: pink),
                                    borderRadius: BorderRadius.circular(30).w),
                                isDense: true,
                                // filled: true,
                                border: OutlineInputBorder(),
                                hintText: "الرجاء اسم المستخدم",
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
                                  builder: (context) => creatingdone(
                                    birthday: widget.birthday,
                                    bloodType: widget.bloodType,
                                    email: widget.email,
                                    name: widget.name,
                                    password: widget.password,
                                    zipCode: widget.zipCode,
                                    userName: _username.text,
                                  ),
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
                      Padding(
                        padding: const EdgeInsets.fromLTRB(100, 30, 0, 0).r,
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => LoginPage(),
                                    ));
                              },
                              child: Text(
                                " تسجيل الدخول",
                                style: TextStyle(
                                    color: pink,
                                    fontFamily: 'Almarai',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13.sp),
                              ),
                            ),
                            Text(
                              "لديك بالفعل حساب؟",
                              style: TextStyle(
                                  fontFamily: 'Almarai',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13.sp),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )),
          );
        });
  }
}
