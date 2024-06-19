import 'package:blood_gp/core/BottomBar.dart';
import 'package:blood_gp/core/constants.dart';
import 'package:blood_gp/doner/RequestDetails.dart';
import 'package:blood_gp/doner/donercard.dart';
import 'package:blood_gp/doner/request.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DonationPage extends StatefulWidget {
  @override
  _DonationPageState createState() => _DonationPageState();
}

class _DonationPageState extends State<DonationPage> {
  bool showRequests = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
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
        title: Text(
          'التبرع',
          style: TextStyle(
            fontFamily: "Almarai",
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        showRequests = false;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor:
                          showRequests ? Colors.black : Colors.white,
                      backgroundColor:
                          showRequests ? Colors.white : Colors.pink,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        side: BorderSide(color: Colors.pink),
                      ),
                    ),
                    child: Text(
                      'المتبرعين',
                      style: TextStyle(
                        fontFamily: "Almarai",
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        showRequests = true;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor:
                          showRequests ? Colors.white : Colors.black,
                      backgroundColor:
                          showRequests ? Colors.pink : Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        side: BorderSide(color: Colors.pink),
                      ),
                    ),
                    child: Text(
                      'الطلبات',
                      style: TextStyle(
                        fontFamily: "Almarai",
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Expanded(
              child: showRequests ? Request() : DonorCard(),
            ),
          ],
        ),
      ),
    );
  }

  /* Widget buildRequestCard() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
        side: BorderSide(color: Colors.grey.shade300),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              Stack(
                children: [
                  Image.asset('assets/images/blood-drop 1.png'),
                  Positioned(
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
              Spacer(),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
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
                      Text('مستشفي قنا العام -قنا'),
                      Image.asset('assets/images/placeholder 2.png')
                    ],
                  ),
                  Row(
                    children: [
                      Text('10 دقائق '),
                      Image.asset('assets/images/clock 1.png')
                    ],
                  ),
                  Row(children: [
                    Text('العمر : 20 | ذكر'),
                    Image.asset('assets/images/user 0.png')
                  ]),
                  Row(children: [
                    Text('سبب الطلب : اجراء عملية جراحية'),
                    Image.asset('assets/images/blood-drop0.png')
                  ])
                ],
              ),
              SizedBox(width: 20),
              CircleAvatar(
                radius: 20,
                backgroundColor: Color.fromARGB(255, 205, 212, 215),
                child: ClipOval(
                  child: Image.asset(
                    "assets/images/image0.png",
                    width: 40,
                    height: 40,
                  ),
                ),
              ),
            ]),
            SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.white,
                      side: BorderSide(color: Colors.pink),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: Text(
                      'مشاركة الطلب',
                      style: TextStyle(
                        fontFamily: "Almarai",
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RequestD()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.pink,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: Text(
                      'تبرع',
                      style: TextStyle(
                        fontFamily: "Almarai",
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
  }*/
}
