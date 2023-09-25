import 'package:blue_crew/Components/topAppBar.dart';
import 'package:blue_crew/constants.dart';
import 'package:flutter/material.dart';
import 'package:blue_crew/Worker Side/takeAadharPictureScreen.dart';
import 'package:camera/camera.dart';

class SelfieVerification extends StatefulWidget {
  const SelfieVerification({super.key});

  @override
  State<SelfieVerification> createState() => _SelfieVerificationState();
}

class _SelfieVerificationState extends State<SelfieVerification> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: kBrown,
      appBar: PreferredSize(
        child: TopBar(
            text: 'Selfie Verification', color: kWhite, iconColor: kWhite),
        preferredSize: Size.fromHeight(mediaQuery.size.height * 0.07),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.photo,
            color: kWhite,
            size: mediaQuery.size.height * 0.2,
          ),
          Container(
            padding: EdgeInsets.all(mediaQuery.size.height * 0.04),
            child: Text(
              'You are required to upload a selfie too, for verification purposes',
              style: TextStyle(
                color: kWhite,
                fontSize: mediaQuery.size.height * 0.025,
                fontFamily: 'Serif',
              ),
            ),
          ),
          Container(
            width: mediaQuery.size.width*0.4,
            child: TextButton(
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.green),
              ),
              onPressed: () async {
                final cameras = await availableCameras();
                final frontCamera = cameras.firstWhere(
                      (camera) => camera.lensDirection == CameraLensDirection.front,
                );
                print('In button On Pressed');
                await Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) =>
                        TakePictureScreen(camera: frontCamera),
                  ),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.camera_alt_rounded,
                    color: kWhite,
                    size: mediaQuery.size.height * 0.03,
                  ),
                  SizedBox(
                    width: mediaQuery.size.height * 0.01,
                    height: mediaQuery.size.height * 0.03,
                  ),
                  Text(
                    'Use Camera',
                    style: TextStyle(
                      color: kWhite,
                      fontSize: mediaQuery.size.height * 0.02,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
