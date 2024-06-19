import 'package:blood_gp/Book_date.dart/manage_booking.dart';
import 'package:blood_gp/Book_date.dart/donation_type.dart';
import 'package:blood_gp/Donor%20data/donor_data1.dart';
import 'package:blood_gp/community.dart';
import 'package:blood_gp/core/constants.dart';
import 'package:blood_gp/doner/RequestCard.dart';
import 'package:blood_gp/donor/donorName.dart';
import 'package:blood_gp/more/MorePage.dart';
import 'package:blood_gp/notification.dart';
import 'package:blood_gp/personal/personal.dart';
import 'package:flutter/material.dart';

class BottomNavigationPage0 extends StatefulWidget {
  const BottomNavigationPage0({Key? key}) : super(key: key);

  @override
  State<BottomNavigationPage0> createState() => _BottomNavigationPage0State();
}

class _BottomNavigationPage0State extends State<BottomNavigationPage0> {
  int _selectedIndex = 3;

  List pages = [
    Community(),
    personal(),
    DonationPage(),
    HomePage2(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: 'مجتمع',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'الملف الشخصى ',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bloodtype),
              label: 'تبرع',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'الرئيسية',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          backgroundColor: Colors.white,
          selectedItemColor: kMainColor,
          unselectedItemColor: Colors.black,
          showSelectedLabels: true,
          showUnselectedLabels: true,
        ),
        body: pages[_selectedIndex]);
  }
}

class HomePage2 extends StatefulWidget {
  @override
  _HomePage2State createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 205, 212, 215),
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
                                  builder: (context) => MorePage()),
                            );
                          },
                        ),
                      ),
                      SizedBox(width: 10),
                      CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 205, 212, 215),
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
                                  builder: (context) => notification()),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                SizedBox(width: 10),
                Expanded(
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
                            ),
                          ),
                          Text(
                            ' مرحبا ',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: kMainColor,
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
                            style: TextStyle(fontSize: 16.0),
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
                  backgroundColor: Color.fromARGB(255, 205, 212, 215),
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
            SizedBox(height: 0),
            SizedBox(
              width: 340,
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
            SizedBox(
              height: 15,
            ),
            Column(mainAxisAlignment: MainAxisAlignment.end, children: [
              Text(
                'تبرعك القادم',
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.right,
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Manage()),
                  );
                },
                child: SizedBox(
                  width: 365,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 45,
                              height: 45,
                              color: Color(0xffFAEAF0),
                              child: Center(
                                child: Image.asset(
                                  'assets/images/navigation 2.png',
                                  width: 25,
                                  height: 25,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    'مستشفى قنا العام',
                                    style: TextStyle(fontSize: 20),
                                    textAlign: TextAlign.right,
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        'شارع النساجون- قنا -قنا',
                                        style: TextStyle(fontSize: 12),
                                        textAlign: TextAlign.right,
                                      ),
                                      SizedBox(width: 10),
                                      Image.asset(
                                        'assets/images/placeholder 3.png',
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                            width: 270,
                            height: 45,
                            color: Color(0xffFAEAF0),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  '9:00م',
                                  style: TextStyle(color: kMainColor),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Icon(
                                  Icons.timelapse,
                                  color: kMainColor,
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Image.asset('assets/images/Line 18.png'),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  '09 مارس , 2024',
                                  style: TextStyle(color: kMainColor),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Icon(
                                  Icons.date_range,
                                  color: kMainColor,
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                ),
              ),
            ]),
          ]),
    ));
  }
}
