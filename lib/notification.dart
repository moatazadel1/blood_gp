import 'package:blood_gp/core/constants.dart';
import 'package:flutter/material.dart';

class notification extends StatelessWidget {
  const notification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'الاشعارات',
          style: TextStyle(fontFamily: 'Almaria'),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: kMainColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemCount: 5,
        itemBuilder: (context, index) {
          return NotificationTile(
            date: '20 مارس 2024',
            status: 'تم ارسال الرسالة بنجاح',
            message:
                'تم بنجاح إرسال رسالتك إلى فريق الدعم. نحن نقوم بمراجعة رسالتك وسنعود إليك في أقرب وقت ممكن.',
            iconPath: 'assets/images/Done (1).png',
          );
        },
      ),
    );
  }
}

class NotificationTile extends StatelessWidget {
  final String date;
  final String status;
  final String message;
  final String iconPath;

  const NotificationTile({
    Key? key,
    required this.date,
    required this.status,
    required this.message,
    required this.iconPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.0),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      date,
                      style: TextStyle(fontSize: 12, fontFamily: 'Almaria'),
                    ),
                    Spacer(),
                    Text(
                      status,
                      style: TextStyle(fontSize: 18, fontFamily: 'Almaria'),
                    ),
                  ],
                ),
                SizedBox(height: 8.0),
                Text(
                  message,
                  style: TextStyle(fontSize: 16, fontFamily: 'Almaria'),
                  textAlign: TextAlign.right,
                ),
              ],
            ),
          ),
          SizedBox(width: 16.0),
          Image.asset(
            iconPath,
            height: 40,
            width: 40,
          ),
        ],
      ),
    );
  }
}
