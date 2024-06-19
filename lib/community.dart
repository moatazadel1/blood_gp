import 'package:blood_gp/community_story.dart';
import 'package:blood_gp/community_teams.dart';
import 'package:blood_gp/core/BottomBar.dart';
import 'package:blood_gp/core/constants.dart';
import 'package:flutter/material.dart';

class Community extends StatefulWidget {
  @override
  _CommunityState createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
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
          ' المجتمع ',
          style: TextStyle(fontFamily: 'Almaria'),
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
                      ' الفرق ',
                      style: TextStyle(fontFamily: 'Almaria'),
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
                      ' القصص ',
                      style: TextStyle(fontFamily: 'Almaria'),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Expanded(
              child: showRequests ? buildRequestsList() : buildDonorsList(),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDonorsList() {
    return teams();
  }

  Widget buildRequestsList() {
    return Story();
  }
}
