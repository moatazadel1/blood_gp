import 'package:blood_gp/core/bottons.dart';
import 'package:blood_gp/core/constants.dart';
import 'package:flutter/material.dart';

class OnboardingCard extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final String buttonText;
  final Function(BuildContext) onPressed;

  const OnboardingCard({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
    required this.buttonText,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            image,
            height: 350,
            width: 350,
          ),
          Column(
            children: [
              Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Almarai',
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                description,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                  fontFamily: 'Almarai',
                ),
              )
            ],
          ),
          SizedBox(
            height: 50,
          ),
          SizedBox(
            width: 350,
            height: 60,
            child: ElevatedButton(
              onPressed: () => onPressed(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: kMainColor,
              ),
              child: Text(buttonText, style: TextStyle(color: Colors.white)),
            ),
          )
        ],
      ),
    );
  }
}
