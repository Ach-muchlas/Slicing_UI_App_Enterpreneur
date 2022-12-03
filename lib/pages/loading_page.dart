import 'dart:async';
import 'package:flutter/material.dart';
import 'package:latihan_slicing_ui/pages/onbooarding_page.dart';
import 'package:latihan_slicing_ui/material-assets/color/colors.dart';
import 'package:latihan_slicing_ui/material-assets/font/typography.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  
  @override
  void initState() {
    super.initState();

    // setting loading
    Timer(
      const Duration(seconds: 5),
      () {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const OnboardingPage()));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Container(
        color: Colors.white,
        width: double.infinity,
        height: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // image logo lampu
            Image.asset(
              'assets/png/logoLoadingPage.png',
              width: 66,
              height: 94,
            ),

            const SizedBox(
              width: 12.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    // text enterpreur smart
                    Text(
                      'Entrepeneur',
                      style: MyTypography.headingBold
                          .copyWith(color: MyColors.darkPurple),
                    ),

                    const SizedBox(
                      width: 5.0,
                    ),
                    // text smart
                    Text(
                      'Smart',
                      style: MyTypography.heading
                          .copyWith(color: MyColors.darkPurple),
                    ), // text enterpreur smart
                  ],
                ),
                Text('Mulai Bisnismu Sekarang',
                    style: MyTypography.txtSmalItalic
                        .copyWith(color: MyColors.darkPurple))
              ],
            )
          ],
        ),
      ),
    );
  }
}
