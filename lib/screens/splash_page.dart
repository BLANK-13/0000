import 'dart:async';

import 'package:flutter/material.dart';
import 'package:trainee_task/screens/bottom_bar.dart';
import '../constants.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 2),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => const BottomBarWidget())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: Center(
        child: Image.asset(
          'assets/images/splashIcon.png',
        ),
      ),
    );
  }
}
