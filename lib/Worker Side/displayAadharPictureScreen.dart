import 'package:flutter/material.dart';
import 'package:blue_crew/Components/topAppBar.dart';
import 'package:blue_crew/constants.dart';
import 'dart:io';

// A widget that displays the picture taken by the user.
class DisplayPictureScreen extends StatelessWidget {
  final String imagePath;

  const DisplayPictureScreen({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(mediaQuery.size.height * 0.057),
        child:
            TopBar(text: 'Picture Preview', color: kWhite, iconColor: kWhite),
      ),
      body: Container(
        color: kWhite,
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: mediaQuery.size.height * 0.03),
              child: Image.file(
                File(imagePath),
              ),
            ),
            SizedBox(
              height: mediaQuery.size.height*0.05,
              width: double.infinity,
            ),
            TextButton(
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(kYellow),
              ),
              onPressed: () {
                //Upload Picture onto database
                Navigator.pushReplacementNamed(context, 'selfieVerification');
              },
              child: Text(
                'Upload Picture',
                style: TextStyle(
                  color: kBlack,
                  fontFamily: 'ObjectSans',
                  fontSize: mediaQuery.size.height * 0.03,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
