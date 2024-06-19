import 'package:blood_gp/Book_date.dart/SearchResults.dart';
import 'package:blood_gp/Book_date.dart/time.dart';
import 'package:blood_gp/core/constants.dart';
import 'package:flutter/material.dart';

class location extends StatelessWidget {
  const location({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: kMainColor,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Time()),
              );
            },
          ),
          title: Text(
            ' الموقع ',
            style: TextStyle(fontSize: 18),
            textAlign: TextAlign.center,
          ),
          centerTitle: true,
        ),
        body: Column(children: [
          SizedBox(
            width: 350,
            child: Container(
              height: 7,
              color: Color(0xffF1F1F1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 200,
                    height: 7,
                    color: kMainColor,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: SingleChildScrollView(
                  child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Stack(children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 80,
                              ),
                              SizedBox(
                                width: 334,
                                height: 80,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => search()),
                                    );
                                  },
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      border:
                                          Border.all(color: Color(0xffF1F1F1)),
                                    ),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            ' بالقرب من موقعك الحالي ',
                                            style: TextStyle(fontSize: 20),
                                            textAlign: TextAlign.right,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Container(
                                            width: 70,
                                            height: 70,
                                            color: Color.fromARGB(
                                                255, 247, 239, 239),
                                            child: Center(
                                              child: Image.asset(
                                                'assets/images/navigation 2.png',
                                                width: 50,
                                                height: 50,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              SizedBox(
                                width: 334,
                                height: 80,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => search()),
                                    );
                                  },
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      border:
                                          Border.all(color: Color(0xffF1F1F1)),
                                    ),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            children: [
                                              SizedBox(
                                                width: 10,
                                              ),
                                            ],
                                          ),
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Text(
                                                  'الرمز البريدي للمنزل',
                                                  style:
                                                      TextStyle(fontSize: 20),
                                                ),
                                                SizedBox(height: 4),
                                                Text(
                                                  ' الرمز البريدي الخاص بك : 110023 ',
                                                  style:
                                                      TextStyle(fontSize: 12),
                                                  textAlign: TextAlign.right,
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Container(
                                            width: 70,
                                            height: 70,
                                            color: Color.fromARGB(
                                                255, 247, 239, 239),
                                            child: Center(
                                              child: Image.asset(
                                                'assets/images/home 1.png',
                                                width: 50,
                                                height: 50,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ])
                      ]))))
        ]));
  }
}
