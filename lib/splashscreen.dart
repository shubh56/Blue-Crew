import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'constants.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, 'startScreen');
    });
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: kBrown,
      body: Center(
         child: AnimatedTextKit(
           animatedTexts: [
             TypewriterAnimatedText(
               'Blue Crew',
                  textStyle: TextStyle(
                    fontFamily: 'ObjectSans',
                    fontSize: mediaQuery.size.height*0.05,
                    color: kWhite,
                  ),
               speed: const Duration(milliseconds: 100)
             ),
           ],
           totalRepeatCount: 5,
         )
      ),
    );
  }
}
