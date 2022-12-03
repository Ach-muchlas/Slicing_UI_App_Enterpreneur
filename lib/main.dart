import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:latihan_slicing_ui/pages/cobaOnboarding.dart';
import 'package:latihan_slicing_ui/pages/onbooarding_page.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Slicing UI',
      debugShowCheckedModeBanner: false,
      home: CobaOnboarding(),
    );
  }
}
