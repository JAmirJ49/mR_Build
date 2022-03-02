import 'package:copy/screens/CustomSplashScreen2.dart';
import 'package:copy/screens/HomeScreen.dart';
import 'package:copy/screens/LoginScreen.dart';
import 'package:copy/screens/OnboardingScreen.dart';
import 'package:copy/screens/RegisterScreen.dart';
import 'package:copy/screens/profileSettingsScreen.dart';
import 'package:copy/screens/settingsScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CustomSplashScreen2(),
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        OnboardingScreen.routeName: (_) => OnboardingScreen(),
        LoginScreen.routeName: (_) => LoginScreen(),
        RegisterScreen.routeName: (_) => RegisterScreen(),
        SettingsScreen.routeName: (_) => SettingsScreen(),
        ProfileSettingsScreen.routeName: (_) => ProfileSettingsScreen(),
      },
    );
  }
}
