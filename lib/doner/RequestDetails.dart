import 'package:blood_gp/core/constants.dart';
import 'package:flutter/material.dart';

class RequestD extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.pink),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'التبرع',
          style: TextStyle(
            color: Colors.black,
            fontFamily: "Almarai",
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DonationCard(),
            SizedBox(height: 16),
            Text(
              'الموقع',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: "Almarai",
              ),
            ),
            SizedBox(height: 8),
            Container(
              height: 200,
              color: Colors.grey[300],
              child: Center(
                child: Text('خريطة هنا'),
              ),
            ),
            SizedBox(height: 60),
            SizedBox(
              width: 365,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  backgroundColor: MaterialStateProperty.all<Color>(kMainColor),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(14.0),
                  child: Text(
                    ' تبرع ',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Almarai",
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DonationCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
          ],
        ),
      ),
    );
  }
}
