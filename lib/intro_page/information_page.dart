import 'package:flutter/material.dart';
import 'package:needfood/const_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'intro_page_1.dart';
import 'intro_page_2.dart';
import 'intro_page_3.dart';

class InformationPage extends StatefulWidget {
  const InformationPage({Key? key}) : super(key: key);

  @override
  State<InformationPage> createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {

  final PageController _controller = PageController();
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            controller: _controller,
            children: const [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),
            ],
          ),
          Container(
            alignment: Alignment(0,0.85),
            child: Padding(
              padding: const EdgeInsets.only(left: 24, right: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmoothPageIndicator(
                    effect: ExpandingDotsEffect(
                      activeDotColor: Color(0xFF5FC5FF),
                    ),
                    count: 3,
                    controller: _controller,
                  ),
                  onLastPage
                      ? GestureDetector(
                    onTap: () {
                      Navigator.popAndPushNamed(context, NAMES.LoginPage);
                    },
                    child: Container(
                      height: 56,
                      width: 56,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFF5FC5FF),
                      ),
                      child: const Icon(
                        Icons.navigate_next,
                        size: 36,
                        color: Colors.white,
                      ),
                    ),
                  )
                      : GestureDetector(
                    onTap: () {
                      _controller.nextPage(
                        duration: Duration(milliseconds: 400),
                        curve: Curves.easeIn,
                      );
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFF5FC5FF),
                      ),
                      child: const Icon(
                        Icons.navigate_next,
                        size: 36,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ]
              ),
            ),
          )
        ],
      ),
    );
  }
}
