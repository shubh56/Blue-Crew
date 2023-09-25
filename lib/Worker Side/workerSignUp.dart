import 'package:flutter/material.dart';
import 'package:blue_crew/constants.dart';
import 'package:blue_crew/Components/customTextField.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WorkerSignUp extends StatefulWidget {
  const WorkerSignUp({super.key});

  @override
  State<WorkerSignUp> createState() => _WorkerSignUpState();
}

class _WorkerSignUpState extends State<WorkerSignUp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController occupationController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: kBrown,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.only(top: mediaQuery.size.height * 0.1),
                child: Text(
                  'Create a new account',
                  style: TextStyle(
                    color: kWhite,
                    fontSize: mediaQuery.size.height * 0.035,
                    fontFamily: 'ObjectSans',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(mediaQuery.size.height * 0.03),
              child: Column(
                children: [
                  CustomTextField(
                    labelText: 'Name',
                    hintText: 'Enter Full Name',
                    controller: nameController,
                    obscureText: false,
                  ),
                  CustomTextField(
                    labelText: 'Email',
                    hintText: 'Enter Email Address',
                    controller: emailController,
                    obscureText: false,
                  ),
                  CustomTextField(
                    labelText: 'Phone Number',
                    hintText: 'Enter Phone Number',
                    controller: phoneController,
                    obscureText: false,
                  ),
                  CustomTextField(
                    labelText: 'Password',
                    hintText: 'Enter Password',
                    controller: passwordController,
                    obscureText: true,
                  ),
                  CustomTextField(
                    labelText: 'Confirm Password',
                    hintText: 'Re-enter Password',
                    controller: confirmPasswordController,
                    obscureText: true,
                  ),
                  CustomTextField(
                    labelText: 'Occupation',
                    hintText: 'Enter your occupation',
                    controller: occupationController,
                    obscureText: true,
                  ),
                  SizedBox(
                    width: mediaQuery.size.width*0.9,
                    height: mediaQuery.size.height*0.05,
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(kYellow),
                      ),
                      onPressed: (){
                        Navigator.pushNamed(context, 'aadharVerification');
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Verify Identity',
                            style: TextStyle(
                              color: kBlack,
                              fontFamily: 'ObjectSans',
                              fontStyle: FontStyle.italic,
                              fontSize: mediaQuery.size.height*0.025,
                            ),
                          ),
                          Icon(
                            FontAwesomeIcons.arrowRight,
                            color: kBlack,
                            size: mediaQuery.size.height*0.025,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: mediaQuery.size.width * 0.5,
              height: mediaQuery.size.height * 0.07,
              child: TextButton(
                style: ButtonStyle(
                  elevation:
                  MaterialStatePropertyAll(mediaQuery.size.height * 0.04),
                  shadowColor: const MaterialStatePropertyAll(kBlack),
                  backgroundColor: const MaterialStatePropertyAll(kYellow),
                ),
                child: Text(
                  'Register',
                  style: TextStyle(
                    color: kBrown,
                    fontSize: mediaQuery.size.height * 0.027,
                    fontFamily: 'ObjectSans',
                  ),
                ),
                onPressed: () {

                },
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: TextStyle(
                      color: kWhite,
                      fontSize: mediaQuery.size.height * 0.02,
                    ),
                  ),
                  SizedBox(
                    height: mediaQuery.size.height * 0.01,
                    width: mediaQuery.size.height * 0.01,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'workerLogIn');
                    },
                    child: Text(
                      'Log in',
                      style: TextStyle(
                        color: kYellow,
                        fontSize: mediaQuery.size.height * 0.02,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

