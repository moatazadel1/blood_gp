// ignore_for_file: deprecated_member_use

import 'package:blood_gp/core/BottomBar.dart';
import 'package:blood_gp/core/constants.dart';
import 'package:blood_gp/terms/page1.dart';
import 'package:blood_gp/terms/page2.dart';
import 'package:blood_gp/terms/page3.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  void _launchURL(BuildContext context, String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Could not launch $url'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'مقالات',
          style: TextStyle(fontFamily: 'Almaria'),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: kMainColor,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BottomNavigationPage()),
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
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
                  const SizedBox(width: 10),
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
            ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.all(8.0),
              children: [
                SizedBox(
                  width: 370,
                  child: GestureDetector(
                    onTap: () => _launchURL(context, 'https://example.com'),
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text(
                                ' مقالات صحية ',
                                style: TextStyle(
                                    fontSize: 12, fontFamily: 'Almaria'),
                                textAlign: TextAlign.right,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                ' أسباب ومزايا التبرع بالدم بانتظام ',
                                style: TextStyle(
                                    fontSize: 16, fontFamily: 'Almaria'),
                                textAlign: TextAlign.right,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  const Text(
                                    '16th May',
                                    style: TextStyle(
                                        fontSize: 10, fontFamily: 'Almaria'),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Image.asset("assets/images/Group.png"),
                                  const SizedBox(
                                    width: 100,
                                  ),
                                  const Text(
                                    'العربية',
                                    style: TextStyle(
                                        fontSize: 13, fontFamily: 'Almaria'),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20.0),
                                    child: Image.asset(
                                      "assets/images/unnamed 1.png",
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.asset(
                              "assets/images/paper1.png",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 370,
                  child: GestureDetector(
                    onTap: () => _launchURL(context, 'https://example.com'),
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text(
                                ' مقالات صحية ',
                                style: TextStyle(
                                    fontSize: 12, fontFamily: 'Almaria'),
                                textAlign: TextAlign.right,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                ' دور المجتمع في دعم حملات التبرع بالدم ',
                                style: TextStyle(
                                    fontSize: 16, fontFamily: 'Almaria'),
                                textAlign: TextAlign.right,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  const Text(
                                    '16th May',
                                    style: TextStyle(
                                        fontSize: 10, fontFamily: 'Almaria'),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Image.asset("assets/images/Group.png"),
                                  const SizedBox(
                                    width: 90,
                                  ),
                                  const Text(
                                    'ويب تاب ',
                                    style: TextStyle(
                                        fontSize: 13, fontFamily: 'Almaria'),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20.0),
                                    child: Image.asset(
                                      "assets/images/webTap.png",
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.asset(
                              "assets/images/paper2.png",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 370,
                  child: GestureDetector(
                    onTap: () => _launchURL(context, 'https://example.com'),
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text(
                                ' مقالات صحية ',
                                style: TextStyle(
                                    fontSize: 12, fontFamily: 'Almaria'),
                                textAlign: TextAlign.right,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                ' فوائد صحية مفاجئة للمتبرعين بالدم ',
                                style: TextStyle(
                                    fontSize: 16, fontFamily: 'Almaria'),
                                textAlign: TextAlign.right,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  const Text(
                                    '16th May',
                                    style: TextStyle(
                                        fontSize: 10, fontFamily: 'Almaria'),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Image.asset("assets/images/Group.png"),
                                  const SizedBox(
                                    width: 90,
                                  ),
                                  const Text(
                                    'ويب تاب',
                                    style: TextStyle(
                                        fontSize: 13, fontFamily: 'Almaria'),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20.0),
                                    child: Image.asset(
                                      "assets/images/webTap.png",
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.asset(
                              "assets/images/paper3.png",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
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
}
