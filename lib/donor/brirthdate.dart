import 'package:blood_gp/core/colors.dart';
import 'package:blood_gp/donor/BloodType.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:progress_line/progress_line.dart';

class birthdate extends StatefulWidget {
  const birthdate({super.key});

  @override
  State<birthdate> createState() => _birthdateState();
}

class _birthdateState extends State<birthdate> {
  final _formkey = GlobalKey<FormState>();
  TextEditingController _birthdatecontroller = TextEditingController();

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
                          percent: 0.5,
                          width: 350.w,
                          height: 60.h,
                          lineColors: [pink],
                          bgColor: gray.withOpacity(0.2),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0).r,
                        child: Text(
                          "ما هو تاريخ ميلادك",
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
                            keyboardType: TextInputType.datetime,
                            onChanged: (value) {
                              setState(() {
                                _birthdatecontroller.text = value;
                              });
                            },
                            onSaved: (newValue) {
                              _birthdatecontroller.text = newValue.toString();
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "الرجاء ادخال تاريخ ميلادك";
                              } else {
                                return null;
                              }
                            },
                            controller: _birthdatecontroller,
                            cursorColor: pink,
                            textAlign: TextAlign.right,
                            decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: pink),
                                    borderRadius: BorderRadius.circular(30).w),
                                isDense: true,
                                // filled: true,
                                border: OutlineInputBorder(),
                                hintText: "الرجاء إدخال تاريخ ميلادك",
                                prefixIcon: IconButton(
                                    onPressed: _showDatepicker,
                                    icon: Icon(
                                      Icons.date_range,
                                      size: 15.w,
                                    )),
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
                                  builder: (context) => BlodeType(),
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
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  backgroundColor: white,
                                  contentPadding: EdgeInsets.all(58).w,
                                  content: Text(
                                    "يستخدم تاريخ الميلاد للتحقق من أن المتبرع في السن المناسبة للتبرع بالدم، يستخدم تاريخ الميلاد أيضًا لتحديد فترة الانتظار بين عملية التبرع بالدم وبين عمليات التبرع السابقة",
                                    style: TextStyle(
                                      fontFamily: 'Almarai',
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                      color: blod_gray,
                                    ),
                                    textAlign: TextAlign.right,
                                  ),
                                );
                              },
                            );
                          },
                          child: Text(
                            "لماذا نريد معرفة ذلك ؟",
                            style: TextStyle(
                              color: gry_birth,
                              fontFamily: 'Almarai',
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )),
          );
        });
  }

  Future<void> _showDatepicker() async {
    DateTime? _picked = await showDatePicker(
        context: context, firstDate: DateTime(1980), lastDate: DateTime.now());

    if (_picked != null) {
      setState(() {
        _birthdatecontroller.text = _picked.toString().split(" ")[0];
      });
    }
  }
}
