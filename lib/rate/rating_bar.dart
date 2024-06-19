import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingBarScreen extends StatefulWidget {
  const RatingBarScreen({Key? key}) : super(key: key);

  @override
  State<RatingBarScreen> createState() => _RatingBarScreenState();
}

class _RatingBarScreenState extends State<RatingBarScreen> {
  double fullRating = 0;
  double halfRating = 0;
  double emojiRating = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        const SizedBox(
          height: 20,
        ),
        Center(
          child: RatingBar.builder(
            initialRating: 0,
            minRating: 1,
            unratedColor: Colors.grey,
            itemCount: 5,
            itemSize: 50.0,
            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
            updateOnDrag: true,
            itemBuilder: (context, index) => Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (ratingvalue) {
              setState(() {
                fullRating = ratingvalue;
              });
            },
          ),
        ),
      ]),
    );
  }
}
