import 'package:blood_gp/createAccount/Zip%20code.dart';
import 'package:blood_gp/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:progress_line/progress_line.dart';

class blodetype extends StatefulWidget {
  final String name;
  final String email;
  final String password;
  final String birthday;

  const blodetype(
      {super.key,
      required this.name,
      required this.email,
      required this.password,
      required this.birthday});

  @override
  State<blodetype> createState() => _blodetypeState();
}

class _blodetypeState extends State<blodetype> {
  String? chousevalue;
  List bloodtype = ["A+", "B+", "AB+", "O+", "A-", "B-", "AB-", "O-"];
  final _formkey = GlobalKey<FormState>();

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
                          percent: 0.7,
                          width: 350.w,
                          height: 60.h,
                          lineColors: [pink],
                          bgColor: gray.withOpacity(0.2),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0).r,
                        child: Text(
                          "ما هي فصيلة دمك",
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
                          child: DropdownButtonFormField(
                            iconSize: 15.w,
                            value: chousevalue,
                            // menuMaxHeight: 100.w,
                            decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30).w,
                                    borderSide: BorderSide(color: pink)),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30).w)),
                            validator: (value) {
                              if (value == null) {
                                return "الرجاء اختيار فصيلة دمك";
                              } else {
                                return null;
                              }
                            },
                            onSaved: (newValue) {
                              setState(() {
                                chousevalue = newValue.toString();
                              });
                            },
                            hint: Text("فصيلة الدم",
                                style: TextStyle(
                                    fontFamily: 'Almarai',
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    color: blod_gray)),
                            isDense: true,
                            items: bloodtype.map((valueItem) {
                              return DropdownMenuItem(
                                child: Text(valueItem),
                                value: valueItem,
                              );
                            }).toList(),
                            onChanged: (value) {
                              setState(() {
                                chousevalue = value.toString();
                              });
                            },
                          ),
                        ),
                      ),

                      // Form(
                      //   key: _formkey,
                      //   child: Padding(
                      //     padding: const EdgeInsets.all(18.0),
                      //     child: TextFormField(
                      //       onChanged: (value) {
                      //         setState(() {
                      //           _blodtype.text = value;
                      //         });
                      //       },
                      //       onSaved: (newValue) {
                      //         _blodtype.text = newValue.toString();
                      //       },
                      //       validator: (value) {
                      //         if (value!.isEmpty) {
                      //           return "الرجاء اختيار فصيلة دمك اولا";
                      //         } else {
                      //           return null;
                      //         }
                      //       },
                      //       controller: _blodtype,
                      //       cursorColor: pink,
                      //       textAlign: TextAlign.right,
                      //       decoration: InputDecoration(
                      //           focusedBorder: OutlineInputBorder(
                      //               borderSide: BorderSide(color: pink),
                      //               borderRadius: BorderRadius.circular(30)),
                      //           isDense: true,
                      //           // filled: true,
                      //           border: OutlineInputBorder(),
                      //           hintText: "فصيلة الدم",
                      //           hintStyle: TextStyle(
                      //               fontFamily: 'Almarai2',
                      //               fontSize: 14,
                      //               fontWeight: FontWeight.w400,
                      //               color: blod_gray)),
                      //     ),
                      //   ),
                      // ),
                      SizedBox(
                        height: 10.h,
                      ),
                      GestureDetector(
                        onTap: () {
                          if (_formkey.currentState!.validate()) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => zipcode(
                                    birthday: widget.birthday,
                                    bloodType: chousevalue ?? "لا أعرف فصيلتي",
                                    email: widget.email,
                                    name: widget.name,
                                    password: widget.password,
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
                        padding: const EdgeInsets.all(28.0).w,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => zipcode(
                                    birthday: widget.birthday,
                                    bloodType: chousevalue ?? "لا أعرف فصيلتي",
                                    email: widget.email,
                                    name: widget.name,
                                    password: widget.password,
                                  ),
                                ));
                          },
                          child: Text(
                            "لا أعرف فصيلتي",
                            style: TextStyle(
                              color: gry_birth,
                              fontFamily: 'Almarai',
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                            ),
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
