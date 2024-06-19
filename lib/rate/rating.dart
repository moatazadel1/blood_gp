import 'package:flutter/material.dart';
import 'package:blood_gp/core/bottons.dart';
import 'package:blood_gp/core/constants.dart';

class Rate extends StatelessWidget {
  const Rate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Row(
                  children: [
                    SizedBox(width: 10),
                    IconButton(
                      icon: Ink(
                        decoration: ShapeDecoration(
                          color: Color(0xffF8DFE9),
                          shape: CircleBorder(),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.arrow_back,
                            color: kMainColor,
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      color: kMainColor,
                      padding: EdgeInsets.all(0),
                      splashRadius: 10,
                    ),
                  ],
                ),
                SizedBox(height: 20),
                CircleAvatar(
                  radius: 45,
                  backgroundColor: Colors.white,
                  child: ClipOval(
                    child: Image.asset(
                      "assets/images/Warith 1.png",
                      width: 200,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'محمد على',
                  style: TextStyle(fontSize: 22, fontFamily: 'Almaria'),
                ),
                Text(
                  'متبرع',
                  style: TextStyle(fontSize: 12, fontFamily: 'Almaria'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'المعني - قنا',
                      style: TextStyle(fontSize: 12, fontFamily: 'Almaria'),
                    ),
                    Image.asset(
                      'assets/images/placeholder 3.png',
                      height: 24,
                      width: 24,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  color: Color(0xffB3B3B34D),
                  thickness: 1,
                  indent: 20,
                  endIndent: 20,
                ),
                Text(
                  'تقييمك',
                  style: TextStyle(
                      fontSize: 22,
                      color: Color(0xff746F6F),
                      fontFamily: 'Almaria'),
                ),
                // Rate(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'أضف تقييم ',
                      style: TextStyle(fontSize: 22, fontFamily: 'Almaria'),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(
                      width: 365,
                      child: TextFormField(
                        textAlign: TextAlign.right,
                        minLines: 7,
                        maxLines: null,
                        decoration: InputDecoration(
                          hintText: 'رايك يساهم بشكل كبير في تحسين خدمتنا ',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 20),
                    SizedBox(
                      width: 365,
                      child: CustomGeneralButton(
                        onTap: () {
                          showModalBottomSheet(
                              context: context,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(30))),
                              builder: (context) => Center(
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                              'assets/images/tick 1.png'),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            'شكرا لك لاعطاء تقييمك وملاحظاتك عن المتبرع',
                                            style: TextStyle(
                                                fontSize: 24,
                                                fontFamily: 'Almaria'),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            'تقييم المتبرع يمكننا من تحسين جودة خدمتنا',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontFamily: 'Almaria'),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          SizedBox(
                                            width: 365,
                                            child: CustomGeneralButton(
                                              onTap: () {},
                                              text: 'ارسال ',
                                            ),
                                          )
                                        ]),
                                  ));
                        },
                        text: 'ارسال ',
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
