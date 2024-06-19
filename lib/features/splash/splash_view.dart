import 'dart:async';

import 'package:blood_gp/features/page1/presentation/page1.dart';
import 'package:flutter/material.dart';

class logo extends StatelessWidget {
  const logo({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Onbording()),
      );
    });
    {
      return Scaffold(
        backgroundColor: Color(0xffffffff),
        body: Center(
          child: Column(
            children: [
              Spacer(),
              Image.asset('assets/images/Logo0.png'),
              Spacer(),
            ],
          ),
        ),
      );
    }
  }
}
