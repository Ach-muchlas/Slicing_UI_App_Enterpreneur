import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:latihan_slicing_ui/material-assets/font/model/onboarding_model.dart';
import 'package:latihan_slicing_ui/material-assets/font/typography.dart';

class CobaOnboarding extends StatefulWidget {
  const CobaOnboarding({super.key});

  @override
  State<CobaOnboarding> createState() => _CobaOnboardingState();
}

class _CobaOnboardingState extends State<CobaOnboarding> {
  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
                itemCount: model.length,
                onPageChanged: (int index) {
                  setState(() {
                    currentindex = index;
                  });
                },
                itemBuilder: (_, i) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Image.asset(
                            model[i].imageBackground,
                            fit: BoxFit.fill,
                            height: 400,
                            width: 400,
                          ),
                          Image.asset(
                            model[i].imageSvg,
                            height: 480,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Text(
                          model[i].tittle,
                          style: MyTypography.headingLarge.copyWith(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 50, right: 20, bottom: 10),
                        child: Text(
                          model[i].discription,
                          style: MyTypography.txtMedium
                              .copyWith(color: Colors.black),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 50),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(model.length,
                              (index) => buildDot(index, context)),
                        ),
                      ),
                    ],
                  );
                }),
          ),
          Container(
            height: 45,
            width: 300,
            margin: const EdgeInsets.only(right: 20),
            child: ElevatedButton(onPressed: () {}, child: const Text('Daftar')),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 20,
            width: 100,
            margin: const EdgeInsets.only(bottom: 40),
            child: ElevatedButton(onPressed: () {}, child: const Text('Daftar')),
          )
        ],
      ),
    );
  }
  Container buildDot(int index, BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 5),
      height: 10,
      width: currentindex == index ? 15 : 10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
