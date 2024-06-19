import 'package:blood_gp/core/constants.dart';
import 'package:flutter/material.dart';

class DonorCard extends StatefulWidget {
  @override
  _DonorCardState createState() => _DonorCardState();
}

class _DonorCardState extends State<DonorCard> {
  final List<Map<String, dynamic>> donationRequests = [
    {
      "name": "احمد علي",
      "bloodType": "A+",
      "donors": 20,
      "request": 02,
      "PhoneNumber": "01099447519",
      "image": "assets/images/image0.png"
    },
    {
      "name": "خالد اشرف ",
      "bloodType": "b+",
      "donors": 25,
      "request": 05,
      "PhoneNumber": "01099447519",
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
              child: Text(' لا يوجد متبرعين '),
            ),
    );
  }
}

class DonationRequestCard extends StatefulWidget {
  final Map<String, dynamic> request;

  const DonationRequestCard({Key? key, required this.request})
      : super(key: key);

  @override
  _DonationRequestCardState createState() => _DonationRequestCardState();
}

class _DonationRequestCardState extends State<DonationRequestCard> {
  bool isExpanded = false;

  void toggleExpand() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.pink[50],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.message, color: Colors.pink),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.phone, color: Colors.pink),
                  onPressed: () {},
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      widget.request['name'],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        fontFamily: "Almarai",
                      ),
                    ),
                    Row(
                      children: List.generate(5, (index) {
                        return Icon(
                          index < 1 ? Icons.star : Icons.star_border,
                          color: Colors.yellow,
                          size: 16,
                        );
                      }),
                    ),
                  ],
                ),
                SizedBox(width: 16),
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Color.fromARGB(255, 205, 212, 215),
                  child: ClipOval(
                    child: Image.asset(
                      widget.request['image'],
                      width: 40,
                      height: 40,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            if (isExpanded) ...[
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    SizedBox(width: 20),
                    Text(
                      widget.request['bloodType'],
                      style: TextStyle(
                        color: kMainColor,
                        fontFamily: "Almarai",
                      ),
                      textDirection: TextDirection.rtl,
                    ),
                    Spacer(),
                    Text(
                      'فصيلة الدم :  ',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Almarai",
                      ),
                      textDirection: TextDirection.rtl,
                    ),
                  ]),
                  SizedBox(height: 8),
                  Row(children: [
                    SizedBox(width: 20),
                    Text(
                      ' ${widget.request['donors']} ',
                      style: TextStyle(
                        color: kMainColor,
                        fontFamily: "Almarai",
                      ),
                      textDirection: TextDirection.rtl,
                    ),
                    Spacer(),
                    Text(
                      'التبرعات :  ',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Almarai",
                      ),
                      textDirection: TextDirection.rtl,
                    ),
                  ]),
                  SizedBox(height: 8),
                  Row(children: [
                    SizedBox(width: 20),
                    Text(
                      ' ${widget.request['request']} ',
                      style: TextStyle(
                        color: kMainColor,
                        fontFamily: "Almarai",
                      ),
                      textDirection: TextDirection.rtl,
                    ),
                    Spacer(),
                    Text(
                      'الطلبات: ',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Almarai",
                      ),
                      textDirection: TextDirection.rtl,
                    ),
                  ]),
                ],
              ),
              SizedBox(height: 10),
              Divider(
                color: Color(0xffB3B3B34D),
                thickness: 1,
                indent: 20,
                endIndent: 20,
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  SizedBox(width: 16),
                  Text(
                    widget.request['PhoneNumber'],
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Almarai",
                    ),
                  ),
                  Spacer(),
                  Text(
                    ' رقم الهاتف ',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Almarai",
                    ),
                  ),
                ],
              )
            ],
            IconButton(
              icon: Icon(isExpanded ? Icons.expand_less : Icons.expand_more),
              onPressed: toggleExpand,
            ),
          ],
        ),
      ),
    );
  }
}
