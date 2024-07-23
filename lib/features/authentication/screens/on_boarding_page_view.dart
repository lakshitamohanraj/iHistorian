import 'package:csi_project/constants/color.dart';
import 'package:csi_project/constants/image_string.dart';
import 'package:csi_project/constants/text.dart';
import 'package:csi_project/features/authentication/screens/signup/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/theme/elevated_button_theme.dart';
import 'on_boarding_helper.dart';


class OnboardingPageView extends StatefulWidget {
  @override
  _OnboardingPageViewState createState() => _OnboardingPageViewState();
}

class _OnboardingPageViewState extends State<OnboardingPageView> {
  PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            children: [
              OnboardingScreen(
                imagePath: hOnBoardImage1,
                title: hOnBoardingHead1,
                subtitle: hOnBoardingText1,
              ),
              OnboardingScreen(
                imagePath: hOnBoardImage2,
                title: hOnBoardingHead2,
                subtitle: hOnBoardingText2,
              ),
              OnboardingScreen(
                imagePath: hOnBoardImage3,
                title: hOnBoardingHead3,
                subtitle: hOnBoardingText3,
              ),
            ],
          ),
          Positioned(
            bottom: 20,
            left: 20,
            child: _currentPage > 0
                ?
            // ElevatedButton(
            //   onPressed: () {
            //     _pageController.previousPage(
            //       duration: Duration(milliseconds: 300),
            //       curve: Curves.easeInOut,
            //     );
            //   },
            //   child: Text('Back'),
            // )
            CustomElevatedButton(
              text: "Back",
              onPressed: () {
                _pageController.previousPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
              },
                color: HPrimaryColor,

            )


                : SizedBox.shrink(),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child:
            // ElevatedButton(
            //   onPressed: () {
            //     if (_currentPage < 2) {
            //       _pageController.nextPage(
            //         duration: Duration(milliseconds: 300),
            //         curve: Curves.easeInOut,
            //       );
            //     } else {
            //       // Navigate to the next screen (e.g., home screen)
            //     }
            //   },
            //   child: Text(_currentPage == 2 ? 'Get Started' : 'Next'),
            // ),

            CustomElevatedButton(
              text: _currentPage == 2 ? 'Get Started' : 'Next',
              onPressed: () {
                if (_currentPage < 2) {
                      _pageController.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    } else {
                      Get.to(()=>const SignUpScreen());
                    }
              },
              color: HPrimaryColor,

            ),



          ),
        ],
      ),
    );
  }
}