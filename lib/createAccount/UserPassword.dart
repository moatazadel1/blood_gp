import 'package:blood_gp/createAccount/birthdaypage.dart';
import 'package:blood_gp/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:progress_line/progress_line.dart';

class Password extends StatefulWidget {
  final String email;
  final String name;

  const Password({super.key, required this.email, required this.name});

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  final _formkey = GlobalKey<FormState>();
  TextEditingController _passwordController = TextEditingController();
  bool _passwordInVisible = true; // Variable to control password visibility

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
                          percent: 0.3,
                          width: 350.w,
                          height: 60.h,
                          lineColors: [pink],
                          bgColor: gray.withOpacity(0.2),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0).r,
                        child: Text(
                          "ما هي كلمة المرور الخاصة بك",
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
                          padding: const EdgeInsets.all(18.0).r,
                          child: TextFormField(
                            obscureText: _passwordInVisible,
                            onChanged: (value) {
                              setState(() {
                                _passwordController.text = value;
                              });
                            },
                            onSaved: (newValue) {
                              setState(() {
                                _passwordController.text = newValue.toString();
                              });
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return " الرجاء إدخال كلمة المرور ";
                              } else if (value.length < 6) {
                                return " يجب أن تحتوي كلمة المرور على 6 أحرف على الأقل ";
                              } else {
                                return null;
                              }
                            },
                            controller: _passwordController,
                            cursorColor: pink,
                            textAlign: TextAlign.right,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: pink),
                                borderRadius: BorderRadius.circular(30).r,
                              ),
                              isDense: true,
                              border: OutlineInputBorder(),
                              hintText: " الرجاء إدخال كلمة المرور",
                              hintStyle: TextStyle(
                                  fontFamily: 'Almarai',
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  color: blod_gray),
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _passwordInVisible
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: pink,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _passwordInVisible = !_passwordInVisible;
                                  });
                                },
                              ),
                            ),
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
                                  builder: (context) => birthday(
                                    email: widget.email,
                                    name: widget.name,
                                    password: _passwordController.text,
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
                    ],
                  ),
                )),
          );
        });
  }
}
