import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Story extends StatelessWidget {
  const Story({Key? key});

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
    return ListView(padding: const EdgeInsets.all(8.0), children: [
      GestureDetector(
        onTap: () => _launchURL(context, 'https://example.com/story1'),
        child: Stack(
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset('assets/images/Story1.png'),
              ),
            ),
            Positioned(
                top: 120,
                left: 120,
                child: Row(
                  children: [
                    Text(
                      'قصة خالد محمد مع التبرع بالدم',
                      style:
                          TextStyle(color: Colors.white, fontFamily: 'Almaria'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      radius: 16,
                      backgroundColor: Colors.white,
                      child: ClipOval(
                        child: Image.asset(
                          "assets/images/shape.png",
                          width: 40,
                          height: 40,
                        ),
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
      SizedBox(
        height: 10,
      ),
      GestureDetector(
        onTap: () => _launchURL(context, 'https://example.com/story2'),
        child: Stack(
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset('assets/images/Story2.png'),
              ),
            ),
            Positioned(
                top: 120,
                left: 90,
                child: Row(
                  children: [
                    Text(
                      'التجربة الاولي لمحمد علي للتبرع بالدم',
                      style:
                          TextStyle(color: Colors.white, fontFamily: 'Almaria'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      radius: 16,
                      backgroundColor: Colors.white,
                      child: ClipOval(
                        child: Image.asset(
                          "assets/images/shape.png",
                          width: 40,
                          height: 40,
                        ),
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
      SizedBox(
        height: 10,
      ),
      GestureDetector(
          onTap: () => _launchURL(context, 'https://example.com/story3'),
          child: Stack(
            children: [
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset('assets/images/Story3.png'),
                ),
              ),
              Positioned(
                  top: 120,
                  left: 75,
                  child: Row(
                    children: [
                      Text(
                        'قصص واقعية لمتبرعي الدم وروح العطاء',
                        style: TextStyle(
                            color: Colors.white, fontFamily: 'Almaria'),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CircleAvatar(
                        radius: 16,
                        backgroundColor: Colors.white,
                        child: ClipOval(
                          child: Image.asset(
                            "assets/images/shape.png",
                            width: 40,
                            height: 40,
                          ),
                        ),
                      ),
                    ],
                  ))
            ],
          ))
    ]);
  }
}
