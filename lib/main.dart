import 'package:flutter/material.dart';
import 'splashscreen.dart';
import 'startScreen.dart';
import 'package:blue_crew/Worker Side/workerSignUp.dart';
import 'package:blue_crew/Customer Side/customerSignUp.dart';
import 'package:blue_crew/Customer Side/customerLogin.dart';
import 'package:blue_crew/Customer Side/cutomerHomePage.dart';
import 'package:blue_crew/Worker Side/workerLogIn.dart';
import 'package:blue_crew/Worker Side/aadharVerification.dart';
import 'package:blue_crew/Worker Side/selfieVerification.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: 'splashScreen',
      routes: {
        //Common Pages
        'splashScreen' : (context) => SplashScreen(),
        'startScreen' : (context) => StartScreen(),
        //Worker Side
        'workerSignUp' : (context) => WorkerSignUp(),
        'workerLogIn':(context) => WorkerLogIn(),
        'aadharVerification': (context) => IdentityVerification(),
        'selfieVerification': (context) => SelfieVerification(),
        //Customer Side
        'customerSignUp' : (context) => CustomerSignUp(),
        'customerLogIn': (context) => CustomerLogIn(),
        'customerHomePage' : (context) => CustomerHomePage(),

      },
    );
  }
}

