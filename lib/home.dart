import 'package:blood_gp/Book_date.dart/donation_type.dart';
import 'package:blood_gp/Donor%20data/donor_data1.dart';
import 'package:blood_gp/core/constants.dart';
import 'package:blood_gp/donor/donorName.dart';
import 'package:blood_gp/more/MorePage.dart';
import 'package:blood_gp/notification.dart';
import 'package:blood_gp/doner/RequestCard.dart';
import 'package:blood_gp/terms/ma.dart';
import 'package:blood_gp/terms/page1.dart';
import 'package:blood_gp/terms/page2.dart';
import 'package:blood_gp/terms/page3.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: const Color.fromARGB(255, 205, 212, 215),
                      radius: 20,
                      child: IconButton(
                        icon: Image.asset(
                          "assets/images/categories 1.png",
                          width: 24,
                          height: 24,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MorePage()),
                          );
                        },
                      ),
                    ),
                    const SizedBox(width: 10),
                    CircleAvatar(
                      backgroundColor: const Color.fromARGB(255, 205, 212, 215),
                      radius: 20,
                      child: IconButton(
                          icon: Image.asset(
                            "assets/images/bell1.png",
                            width: 24,
                            height: 24,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const notification()),
                            );
                          }),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              const SizedBox(width: 10),
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          ' عمر ',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Almaria',
                          ),
                        ),
                        Text(
                          ' مرحبا ',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: kMainColor,
                            fontFamily: 'Almaria',
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          ' قنا-قنا ',
                          style:
                              TextStyle(fontSize: 16.0, fontFamily: 'Almaria'),
                        ),
                        Icon(Icons.add_location),
                        SizedBox(
                          width: 20.0,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              CircleAvatar(
                radius: 20,
                backgroundColor: const Color.fromARGB(255, 205, 212, 215),
                child: ClipOval(
                  child: Image.asset(
                    "assets/images/image0.png",
                    width: 40,
                    height: 40,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 0),
          SizedBox(
            width: 320,
            child: Image.asset(
              "assets/images/Group 33891.png",
              fit: BoxFit.fitWidth,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(width: 10),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DonationType()),
                    );
                  },
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.black),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: const BorderSide(color: kMainColor),
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(6, 14, 6, 14),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/date.png',
                          width: 24,
                          height: 24,
                        ),
                        const Text('حجز موعد',
                            style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Almaria')),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 5),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Donorname()),
                    );
                  },
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.black),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: const BorderSide(color: kMainColor),
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(6, 14, 6, 14),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/doner.png',
                          width: 24,
                          height: 24,
                        ),
                        const Text(' كن متبرع ',
                            style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Almaria')),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 5),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DonorPage()),
                    );
                  },
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.black),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: const BorderSide(color: kMainColor),
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(3, 14, 3, 14),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/search-for-user .png',
                          width: 24,
                          height: 24,
                        ),
                        const Text(
                          'البحث عن متبرع',
                          style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Almaria'),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8),
            ],
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DonationPage()),
                  );
                },
                child: const Text(
                  "عرض المزيد ",
                  style: TextStyle(color: Colors.blue, fontFamily: 'Almaria'),
                ),
              ),
              const Spacer(),
              const Text(
                'الحالات الطارئة ',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Almaria'),
              )
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.6,
            child: ListView(
              padding: const EdgeInsets.fromLTRB(12, 10, 10, 12),
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.1,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                        color: const Color.fromARGB(255, 53, 50, 50)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(children: [
                          Stack(
                            children: [
                              Image.asset('assets/images/blood-drop 1.png'),
                              const Positioned(
                                top: 0,
                                left: 0,
                                right: 0,
                                bottom: 0,
                                child: Center(
                                  child: Text(
                                    'A+',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          const SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text(
                                ' محمد على ',
                                style: TextStyle(
                                  color: Color(0xff121212),
                                  fontFamily: 'Almarai',
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                children: [
                                  const Text(
                                    'مستشفي قنا العام -قنا',
                                    style: TextStyle(fontFamily: 'Almaria'),
                                  ),
                                  Image.asset('assets/images/placeholder 2.png')
                                ],
                              ),
                              Row(
                                children: [
                                  const Text(
                                    '10 دقائق ',
                                    style: TextStyle(fontFamily: 'Almaria'),
                                  ),
                                  Image.asset('assets/images/clock 1.png')
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(width: 20),
                          CircleAvatar(
                            radius: 20,
                            backgroundColor:
                                const Color.fromARGB(255, 205, 212, 215),
                            child: ClipOval(
                              child: Image.asset(
                                "assets/images/image0.png",
                                width: 40,
                                height: 40,
                              ),
                            ),
                          ),
                        ]),
                        const SizedBox(height: 12),
                        SizedBox(
                          width: double.infinity,
                          child: Center(
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        kMainColor),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(24.0),
                                  ),
                                ),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 12.0, horizontal: 100.0),
                                child: Text(
                                  ' تبرع الان ',
                                  style: TextStyle(
                                      fontSize: 16, fontFamily: 'Almaria'),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                        color: const Color.fromARGB(255, 53, 50, 50)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(children: [
                          Stack(
                            children: [
                              Image.asset('assets/images/blood-drop 1.png'),
                              const Positioned(
                                top: 0,
                                left: 0,
                                right: 0,
                                bottom: 0,
                                child: Center(
                                  child: Text(
                                    'B+',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          const SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text(
                                ' احمد محمد ',
                                style: TextStyle(
                                  color: Color(0xff121212),
                                  fontFamily: 'Almarai',
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                children: [
                                  const Text(
                                    'مستشفي قنا العام -قنا',
                                    style: TextStyle(fontFamily: 'Almaria'),
                                  ),
                                  Image.asset('assets/images/placeholder 2.png')
                                ],
                              ),
                              Row(
                                children: [
                                  const Text(
                                    '3 دقائق ',
                                    style: TextStyle(fontFamily: 'Almaria'),
                                  ),
                                  Image.asset('assets/images/clock 1.png')
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(width: 20),
                          CircleAvatar(
                            radius: 20,
                            backgroundColor:
                                const Color.fromARGB(255, 205, 212, 215),
                            child: ClipOval(
                              child: Image.asset(
                                "assets/images/p-5 1.png",
                                width: 40,
                                height: 40,
                              ),
                            ),
                          ),
                        ]),
                        const SizedBox(height: 12),
                        SizedBox(
                          width: double.infinity,
                          child: Center(
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        kMainColor),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(24.0),
                                  ),
                                ),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 12.0, horizontal: 100.0),
                                child: Text(
                                  ' تبرع الان ',
                                  style: TextStyle(
                                      fontSize: 16, fontFamily: 'Almaria'),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyWidget()),
                  );
                },
                child: const Text(
                  " عرض المزيد ",
                  style: TextStyle(color: Colors.blue, fontFamily: 'Almaria'),
                ),
              ),
              const Spacer(),
              const Text(
                ' ارشادات للتبرع ',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Almaria'),
              )
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const SizedBox(width: 5),
                _buildArticleCard(
                  context,
                  imagePath: "assets/images/001.png",
                  title:
                      'الارشادات الهامة التي يجب على المتبرعين اتباعها قبل التبرع',
                  page: const page1(),
                ),
                const SizedBox(width: 10),
                _buildArticleCard(
                  context,
                  imagePath: "assets/images/002.png",
                  title: 'فوائد غير متوقعة للمتبرعين الدائمين',
                  page: const page2(),
                ),
                const SizedBox(width: 10),
                _buildArticleCard(
                  context,
                  imagePath: "assets/images/001.png",
                  title: 'كيف ينقذ تبرعك حياة الآخرين؟',
                  page: const page3(),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _buildArticleCard(
                  context,
                  imagePath: "assets/images/004.png",
                  title: ' نصائح لتجنب الشعور بالدوار أو الإغماء بعد التبرع ',
                  page: const page3(),
                ),
                const SizedBox(width: 10),
                _buildArticleCard(
                  context,
                  imagePath: "assets/images/005.png",
                  title:
                      ' كيفية التعامل مع المخاوف والقلق قبل وأثناء عملية التبرع ',
                  page: const page3(),
                ),
                const SizedBox(width: 10),
                _buildArticleCard(
                  context,
                  imagePath: "assets/images/001.png",
                  title: ' كيفية التحضير لأول تجربة تبرع بالدم بثقة ويقين ',
                  page: const page3(),
                ),
              ],
            ),
          ),
        ])));
  }
}

Widget _buildArticleCard(
  BuildContext context, {
  required String imagePath,
  required String title,
  required Widget page,
}) {
  return SizedBox(
    width: 150,
    height: 230,
    child: InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xffF1F1F1)),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(22.0),
                child: Image.asset(
                  imagePath,
                  width: 150,
                  height: 150,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  title,
                  style: const TextStyle(fontSize: 12, fontFamily: 'Almaria'),
                  textAlign: TextAlign.right,
                  textDirection: TextDirection.rtl,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
