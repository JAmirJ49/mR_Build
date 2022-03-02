import 'dart:async';

import 'package:copy/screens/OnboardingScreen.dart';
import 'package:flutter/material.dart';

class CustomSplashScreen2 extends StatefulWidget {
  const CustomSplashScreen2({Key? key}) : super(key: key);

  @override
  State<CustomSplashScreen2> createState() => _CustomSplashScreen2State();
}

class _CustomSplashScreen2State extends State<CustomSplashScreen2> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    Timer(const Duration(seconds: 1), () {
      Navigator.of(context).pushReplacementNamed(OnboardingScreen.routeName);
    });

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Container(
          // width: double.infinity,
          // height: double.infinity,
          child: Image.asset(
            'assets/images/splashLogoYellowRBG.png',
            fit: BoxFit.cover,
            scale: 2,
          ),
        ),
      ),
    );
  }
}
