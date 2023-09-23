import 'package:flutter/material.dart';


const Color kYellow = Color(0xffffcb74);
const Color kBrown = Color(0xff2f2f2f);
const Color kWhite = Color(0xfff6f6f6);
const Color kBlack = Color(0xff111111);

const kTextInputDecoration = InputDecoration(
  hintText: 'Enter a value',
  hintStyle: TextStyle(
    color: kWhite,
  ),
  contentPadding:
  EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: kWhite, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: kWhite, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);