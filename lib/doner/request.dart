import 'package:blood_gp/doner/RequestDetails.dart';
import 'package:flutter/material.dart';

class Request extends StatelessWidget {
  final List<Map<String, dynamic>> donationRequests = [
    {
      "name": "محمد علي",
      "hospital": "مستشفى قنا العام - قنا",
      "distance": "10 دقائق",
      "age": 10,
      "gender": "ذكر",
      "reason": "إجراء عملية جراحية",
      "bloodType": "A+",
      "image": "assets/images/image0.png"
    },
    {
      "name": "احمد علي",
      "hospital": "مستشفى قنا العام - قنا",
      "distance": "20 دقائق",
      "age": 10,
      "gender": "ذكر",
      "reason": "إجراء عملية جراحية",
      "bloodType": "A+",
      "image": "assets/images/image0.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: donationRequests.isNotEmpty
          ? ListView.builder(
              itemCount: donationRequests.length,
              itemBuilder: (context, index) {
                return DonationRequestCard(request: donationRequests[index]);
              },
            )
          : Center(
              child: Text('لا يوجد طلبات'),
            ),
    );
  }
}

class DonationRequestCard extends StatelessWidget {
  final Map<String, dynamic> request;

  const DonationRequestCard({Key? key, required this.request})
      : super(key: key);

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
            Row(
              children: [
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
                          request['bloodType'],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        request['name'],
                        style: TextStyle(
                          color: Color(0xff121212),
                          fontFamily: 'Almarai',
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Text(' المستشفى ${request['hospital']}',
                                  textAlign: TextAlign.right)),
                          SizedBox(
                            width: 8,
                          ),
                          Image.asset('assets/images/placeholder 2.png')
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Text('المسافة: ${request['distance']}',
                                  textAlign: TextAlign.right)),
                          SizedBox(
                            width: 8,
                          ),
                          Image.asset('assets/images/clock 1.png')
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Text(
                                  'العمر: ${request['age']} | النوع: ${request['gender']}',
                                  textAlign: TextAlign.right)),
                          SizedBox(
                            width: 8,
                          ),
                          Image.asset('assets/images/user 0.png')
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Text('سبب الطلب: ${request['reason']}',
                                  textAlign: TextAlign.right)),
                          SizedBox(
                            width: 8,
                          ),
                          Image.asset('assets/images/blood-drop0.png')
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 20),
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Color.fromARGB(255, 205, 212, 215),
                  child: ClipOval(
                    child: Image.asset(
                      request['image'],
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
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
  }
}
