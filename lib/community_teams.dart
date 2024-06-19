// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class teams extends StatelessWidget {
  const teams({Key? key});

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
        body: ListView(padding: const EdgeInsets.all(8.0), children: [
      GestureDetector(
        onTap: () => _launchURL(context, 'https://example.com'),
        child: Container(
            child: Column(
          children: [
            Row(
              children: [
                SizedBox(width: 10),
                Image.asset('assets/images/back.png'),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      ' جمعية أجبال المستقبل ',
                      style: TextStyle(fontSize: 18, fontFamily: 'Almaria'),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      ' 800 عضو ',
                      style: TextStyle(fontSize: 10, fontFamily: 'Almaria'),
                      textAlign: TextAlign.right,
                    )
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Image.asset(
                  'assets/images/images 1.png',
                  height: 60,
                  width: 60,
                ),
              ],
            ),
            Divider(
              color: Color(0xffB3B3B34D),
              thickness: 1,
              indent: 20,
              endIndent: 20,
            ),
          ],
        )),
      ),
      SizedBox(
        height: 10,
      ),
      GestureDetector(
        onTap: () => _launchURL(context, 'https://example.com'),
        child: Container(
            child: Column(
          children: [
            Row(
              children: [
                SizedBox(width: 10),
                Image.asset('assets/images/back.png'),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      ' جمعية رسالة  ',
                      style: TextStyle(fontSize: 18, fontFamily: 'Almaria'),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      ' 800 عضو ',
                      style: TextStyle(fontSize: 10, fontFamily: 'Almaria'),
                      textAlign: TextAlign.right,
                    )
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Image.asset(
                  'assets/images/Resala 1.png',
                  height: 60,
                  width: 60,
                ),
              ],
            ),
            Divider(
              color: Color(0xffB3B3B34D),
              thickness: 1,
              indent: 20,
              endIndent: 20,
            ),
          ],
        )),
      ),
      SizedBox(
        height: 10,
      ),
      GestureDetector(
        onTap: () => _launchURL(context, 'https://example.com'),
        child: Container(
            child: Column(
          children: [
            Row(
              children: [
                SizedBox(width: 10),
                Image.asset('assets/images/back.png'),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      ' جمعية الهلال الأحمر  ',
                      style: TextStyle(fontSize: 18, fontFamily: 'Almaria'),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      ' 800 عضو ',
                      style: TextStyle(fontSize: 10, fontFamily: 'Almaria'),
                      textAlign: TextAlign.right,
                    )
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Image.asset(
                  'assets/images/alhelal.png',
                  height: 60,
                  width: 60,
                ),
              ],
            ),
            Divider(
              color: Color(0xffB3B3B34D),
              thickness: 1,
              indent: 20,
              endIndent: 20,
            ),
          ],
        )),
      ),
      SizedBox(
        height: 10,
      ),
      GestureDetector(
        onTap: () => _launchURL(context, 'https://example.com'),
        child: Container(
            child: Column(
          children: [
            Row(
              children: [
                SizedBox(width: 10),
                Image.asset('assets/images/back.png'),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      ' جمعية رسالة  ',
                      style: TextStyle(fontSize: 18, fontFamily: 'Almaria'),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      ' 800 عضو ',
                      style: TextStyle(fontSize: 10, fontFamily: 'Almaria'),
                      textAlign: TextAlign.right,
                    )
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Image.asset(
                  'assets/images/Resala 1.png',
                  height: 60,
                  width: 60,
                ),
              ],
            ),
            Divider(
              color: Color(0xffB3B3B34D),
              thickness: 1,
              indent: 20,
              endIndent: 20,
            ),
          ],
        )),
      ),
      SizedBox(
        height: 10,
      ),
      GestureDetector(
        onTap: () => _launchURL(context, 'https://example.com'),
        child: Container(
            child: Column(
          children: [
            Row(
              children: [
                SizedBox(width: 10),
                Image.asset('assets/images/back.png'),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      ' جمعية البر والتقوي ',
                      style: TextStyle(fontSize: 18, fontFamily: 'Almaria'),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      ' 800 عضو ',
                      style: TextStyle(fontSize: 10, fontFamily: 'Almaria'),
                      textAlign: TextAlign.right,
                    )
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Image.asset(
                  'assets/images/logo-1 1.png',
                  height: 60,
                  width: 60,
                ),
              ],
            ),
            Divider(
              color: Color(0xffB3B3B34D),
              thickness: 1,
              indent: 20,
              endIndent: 20,
            ),
          ],
        )),
      ),
      SizedBox(
        height: 10,
      ),
      GestureDetector(
        onTap: () => _launchURL(context, 'https://example.com/story1'),
        child: Container(
            child: Column(
          children: [
            Row(
              children: [
                SizedBox(width: 10),
                Image.asset('assets/images/back.png'),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      ' جمعية رسالة  ',
                      style: TextStyle(fontSize: 18, fontFamily: 'Almaria'),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      ' 800 عضو ',
                      style: TextStyle(fontSize: 10, fontFamily: 'Almaria'),
                      textAlign: TextAlign.right,
                    )
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Image.asset(
                  'assets/images/Resala 1.png',
                  height: 60,
                  width: 60,
                ),
              ],
            ),
            Divider(
              color: Color(0xffB3B3B34D),
              thickness: 1,
              indent: 20,
              endIndent: 20,
            ),
          ],
        )),
      ),
    ]));
  }
}
