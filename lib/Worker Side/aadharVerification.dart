import 'package:flutter/material.dart';
import 'package:blue_crew/constants.dart';
import 'package:file_picker/file_picker.dart';
import 'dart:io';
import 'package:camera/camera.dart';
import 'takeAadharPictureScreen.dart';

class IdentityVerification extends StatefulWidget {
  const IdentityVerification({super.key});

  @override
  State<IdentityVerification> createState() => _IdentityVerificationState();
}

class _IdentityVerificationState extends State<IdentityVerification> {
  PlatformFile? pickedFile;
  String? containerText;
  bool isVisible = false;
  Future<void> pickFile() async {
    final result = await FilePicker.platform.pickFiles(
        type: FileType.custom, allowedExtensions: ['jpg', 'png', 'pdf']);
    setState(() {
      pickedFile = result?.files.first;
      containerText = result?.files.first.name;
      isVisible = true;
    });
  }

  Future<void> uploadFile() async {
    final file = File(pickedFile!.path!);
    // final path = '${category.text.toString()}/${pickedFile!.name}';
    // final ref = FirebaseStorage.instance.ref().child(path);
    // ref.putFile(file);
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: kWhite,
      body: Stack(
        children: [
          Column(
            mainAxisAlignment:
                MainAxisAlignment.center, // Adjust alignment as needed
            children: <Widget>[
              Container(
                color: kBrown,
                height: mediaQuery.size.height *
                    0.6, // Adjust the height of the first container
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: SizedBox(
                          child: Column(
                            children: [
                              Icon(
                                Icons.upload_file_rounded,
                                size: mediaQuery.size.height * 0.1,
                                color: kWhite,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: mediaQuery.size.height * 0.02),
                                child: Text(
                                  'Aadhar Card',
                                  style: TextStyle(
                                    color: kWhite,
                                    fontSize: mediaQuery.size.height * 0.03,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mediaQuery.size.height * 0.05,
                                    top: mediaQuery.size.height * 0.01,
                                    right: mediaQuery.size.height * 0.05),
                                child: Text(
                                  'Aadhaar card is a unique 12-digit identification number issued by the Indian government, which serves as proof of identity and residence for Indian citizens.',
                                  style: TextStyle(
                                    color: kWhite,
                                    fontSize: mediaQuery.size.height * 0.02,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: pickFile,
                    child: Container(
                      color: kWhite,
                      height: mediaQuery.size.height *
                          0.3, // Adjust the height of the second container
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.image,
                              size: mediaQuery.size.height * 0.054,
                              color: Colors.brown,
                            ),
                            Text(
                              containerText ??
                                  'Select the document from Gallery \n JPG, PNG, PDF',
                              style: TextStyle(
                                color: kBrown,
                                fontSize: mediaQuery.size.height * 0.02,
                                fontFamily: 'ObjectSans',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: isVisible,
                    child: TextButton(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(kYellow),
                      ),
                      onPressed: () {
                        //Upload Picture onto database, uploadFile method defined above
                        Navigator.pushNamed(context, 'selfieVerification');
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
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            top: mediaQuery.size.height * 0.6,
            left: mediaQuery.size.width * 0.37,
            child: TextButton(
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.green),
              ),
              onPressed: () async {
                final cameras = await availableCameras();
                final firstCamera = cameras.first;
                print('In button On Pressed');
                await Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        TakePictureScreen(camera: firstCamera),
                  ),
                );
              },
              child: Row(
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
