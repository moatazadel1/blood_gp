import 'package:blood_gp/SignUp.dart';
import 'package:blood_gp/core/constants.dart';
import 'package:blood_gp/features/page1/presentation/widgets/page1_body.dart';
import 'package:flutter/material.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  static final PageController _pageController = PageController(initialPage: 0);

  List<Widget> _onBoardingPages = [
    OnboardingCard(
      image: "assets/images/page1.png",
      title: 'سهولة البحث عن متبرع',
      description:
          'حيث ينطلق العطاء والأمل لنساهم معًا في إنقاذ الحياة. نحن هنا لجعل التبرع بالدم أمرًا سهلاً وممتعًا، ',
      buttonText: ' متابعة ',
      onPressed: (BuildContext context) {
        _pageController.animateToPage(
          1,
          duration: Durations.long1,
          curve: Curves.linear,
        );
      },
    ),
    OnboardingCard(
      image: "assets/images/page2.png",
      title: 'سهولة البحث عن متبرع',
      description:
          'يمكنك بسهولة العثور على المتبرعين المناسبين لتلبية احتياجات المرضى. مع واجهة بسيطة ومرنة ',
      buttonText: ' متابعة ',
      onPressed: (BuildContext context) {
        _pageController.animateToPage(
          2,
          duration: Durations.long1,
          curve: Curves.linear,
        );
      },
    ),
    OnboardingCard(
      image: "assets/images/page3.png",
      title: 'انضم إلى مجتمع وريد',
      description:
          'مع تطبيقنا، يمكنك التعرف على الأحداث القادمة للتبرع بالدم، والانضمام إليها بسهولة.',
      buttonText: ' سجل ',
      onPressed: (BuildContext context) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SignUpPage()),
        );
      },
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            children: _onBoardingPages,
          ),
          Positioned(
            bottom: 135,
            right: 0,
            left: 0,
            child: Center(
              child: SmoothPageIndicator(
                controller: _pageController,
                count: _onBoardingPages.length,
                effect: ExpandingDotsEffect(
                  activeDotColor: kMainColor,
                  dotColor: Color(0xffC8C3C3),
                ),
                onDotClicked: (index) {
                  _pageController.animateToPage(
                    index,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.ease,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
