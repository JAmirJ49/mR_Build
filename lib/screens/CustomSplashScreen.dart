import 'dart:async';

import 'package:copy/screens/OnboardingScreen.dart';
import 'package:flutter/material.dart';

class CustomSplashScreen extends StatefulWidget {
  const CustomSplashScreen({Key? key}) : super(key: key);

  @override
  State<CustomSplashScreen> createState() => _CustomSplashScreenState();
}

class _CustomSplashScreenState extends State<CustomSplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 1), () {
      Navigator.of(context).pushNamed(OnboardingScreen.routeName);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Image.asset(
          'assets/images/Splash-2.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
