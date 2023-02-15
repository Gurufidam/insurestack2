import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insurestack/screens/dashboard_screen.dart';
import 'package:insurestack/screens/notificaiton_screen.dart';
import 'package:insurestack/screens/onboarding_screen.dart';

class SpleshScreen extends StatefulWidget {
  @override
  State<SpleshScreen> createState() => _SpleshScreenState();
}

class _SpleshScreenState extends State<SpleshScreen> {
  String appName = 'Insurestack';

  @override
  Widget build(BuildContext context) {
    Timer(
        const Duration(seconds: 3),
            () =>
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => OnBoardingScreen())));

    return Scaffold(
      backgroundColor: Color(0xff1e3d73),
      body: Center(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 0.0, horizontal: 64.0),
            child: Image.asset('assets/images/logo.png'),
          ),
        ),
      ),
    );
  }
}
