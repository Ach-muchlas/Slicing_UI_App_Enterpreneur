import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:latihan_slicing_ui/material-assets/font/typography.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    final pageDecoration = PageDecoration(
      titleTextStyle: MyTypography.headingLarge.copyWith(),
      bodyTextStyle: MyTypography.txtMedium.copyWith(),
      bodyPadding: const EdgeInsets.all(10.0),
    );

    return IntroductionScreen(
      globalBackgroundColor: Colors.white,
      pages: [
        // loading page pertama
        PageViewModel(
            titleWidget: Text('Entrepreneur Basic'),
            bodyWidget: Text('Tingkatkan dan uji pengetahuanmu',
                style: MyTypography.headingLarge.copyWith(color: Colors.black)),
            image: Stack(fit: StackFit.expand, children: [
              Image.asset(
                'assets/png/Vector_1.png',
                fit: BoxFit.fill,
                height: 300,
                width: 393,
              ),
              Positioned(
                top: 68,
                left: 20,
                right: 10,
                child: Image.asset(
                  'assets/png/logo_onboarding_1.png',
                  fit: BoxFit.cover,
                  height: 400,
                  width: 350,
                ),
              ),
            ])),

        // loading page kedua
        PageViewModel(
            titleWidget: Text('Entrepreneur Basic'),
            bodyWidget: Text('Tingkatkan dan uji pengetahuanmu',
                style: MyTypography.headingLarge.copyWith(color: Colors.black)),
            image: Image.asset('assets/png/logo_onboarding_2.png')),
        PageViewModel(
            titleWidget: Text('Entrepreneur Basic'),
            bodyWidget: Text('Tingkatkan dan uji pengetahuanmu',
                style: MyTypography.headingLarge.copyWith(color: Colors.black)),
            image: Image.asset('assets/png/logo_onboarding_3.png'),
            footer:
                ElevatedButton(onPressed: () {}, child: Text('Get started'))),
      ],
      onDone: () {},
      showSkipButton: true,
      showBackButton: false,
      showDoneButton: true,
      showNextButton: true,
      back: Icon(Icons.arrow_back),
      skip: Text('Skip'),
      next: Icon(Icons.arrow_forward),
      done: Text('Done'),
      dotsDecorator: DotsDecorator(
          size: Size(10, 10),
          color: Colors.grey,
          activeSize: Size(22, 10),
          activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
    );
  }
}
