import 'package:blue_crew/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:blue_crew/Components/customTextField.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomerLogIn extends StatefulWidget {
  const CustomerLogIn({super.key});

  @override
  State<CustomerLogIn> createState() => _CustomerLogInState();
}

class _CustomerLogInState extends State<CustomerLogIn> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
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
                padding: EdgeInsets.only(top: mediaQuery.size.height * 0.2),
                child: Text(
                  'Log into your account',
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
              padding: EdgeInsets.all(mediaQuery.size.height*0.03),
              child: Column(
                children: [
                  CustomTextField(labelText: 'Email', hintText: 'Enter registered email', controller: email, obscureText: false),
                  CustomTextField(labelText: 'Password', hintText: 'Enter password', controller: password, obscureText: true),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                            color: kYellow,
                            fontSize: mediaQuery.size.height*0.015,
                            decoration: TextDecoration.underline,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ],
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
                        'Log In',
                        style: TextStyle(
                          color: kBrown,
                          fontSize: mediaQuery.size.height * 0.027,
                          fontFamily: 'ObjectSans',
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, 'customerHomePage');
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: mediaQuery.size.height*0.1),
                    child: Column(
                      children: [
                        Text(
                          'or log in using',
                          style: TextStyle(
                            color: kWhite,
                            fontSize: mediaQuery.size.height*0.02
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: mediaQuery.size.height*0.01),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(
                                style: const ButtonStyle(
                                  backgroundColor:  MaterialStatePropertyAll(kBrown),
                                ),
                                onPressed:(){},
                                child: Icon(
                                  FontAwesomeIcons.google,
                                  color: kWhite,
                                  size: mediaQuery.size.height*0.03,
                                ),
                              ),
                              TextButton(
                                style: const ButtonStyle(
                                  backgroundColor:  MaterialStatePropertyAll(kBrown),
                                ),
                                onPressed:(){},
                                child: Icon(
                                  FontAwesomeIcons.facebook,
                                  color: kWhite,
                                  size: mediaQuery.size.height*0.03,
                                ),
                              ),
                              TextButton(
                                style: const ButtonStyle(
                                  backgroundColor:  MaterialStatePropertyAll(kBrown),
                                ),
                                onPressed:(){},
                                child: Icon(
                                  FontAwesomeIcons.apple,
                                  color: kWhite,
                                  size: mediaQuery.size.height*0.03,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
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
