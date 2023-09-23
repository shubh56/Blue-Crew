import 'package:blue_crew/constants.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Stack(
        children: [
          Opacity(
            opacity: 0.4,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/electrician.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            top: mediaQuery.size.height * 0.2,
            left: mediaQuery.size.height * 0.2,
            child: Text(
              'Welcome to',
              style: TextStyle(
                fontFamily: 'Northwell',
                fontSize: mediaQuery.size.height * 0.06,
              ),
            ),
          ),
          Positioned(
            top: mediaQuery.size.height * 0.3,
            left: mediaQuery.size.width * 0.14,
            child: Text(
              'BLUE CREW',
              style: TextStyle(
                color: kBrown,
                fontFamily: 'ObjectSans',
                fontSize: mediaQuery.size.height * 0.07,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: mediaQuery.size.height * 0.36,
            left: mediaQuery.size.width * 0.21,
            child: Text(
              'EMPOWERING THE WORKFORCE',
              style: TextStyle(
                color: kBrown,
                fontFamily: 'ObjectSans',
                fontSize: mediaQuery.size.height * 0.02,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: mediaQuery.size.height * 0.75,
            left: mediaQuery.size.height * 0.06,
            child: SizedBox(
              width: mediaQuery.size.width*0.8,
              height: mediaQuery.size.height*0.065,
              child: TextButton(
                style: ButtonStyle(
                  elevation: MaterialStatePropertyAll(mediaQuery.size.height*0.04),
                  shadowColor: const MaterialStatePropertyAll(kBlack),
                  backgroundColor: MaterialStatePropertyAll(kYellow),
                ),
                child: Text(
                  'Start Working',
                  style: TextStyle(
                    color: kBrown,
                    fontSize: mediaQuery.size.height * 0.035,
                    fontFamily: 'ObjectSans',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'workerSignUp');
                },
              ),
            ),
          ),
          Positioned(
            top: mediaQuery.size.height * 0.84,
            left: mediaQuery.size.height * 0.06,
            child: SizedBox(
              width: mediaQuery.size.width*0.8,
              height: mediaQuery.size.height*0.065,
              child: TextButton(
                style: ButtonStyle(
                  elevation: MaterialStatePropertyAll(mediaQuery.size.height*0.04),
                  shadowColor: const MaterialStatePropertyAll(kBlack),
                  backgroundColor: MaterialStatePropertyAll(kYellow),
                ),
                child: Text(
                  'Start Hiring',
                  style: TextStyle(
                    color: kBrown,
                    fontSize: mediaQuery.size.height * 0.035,
                    fontFamily: 'ObjectSans',
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'customerSignUp');
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
