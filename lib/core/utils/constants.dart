import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFFFF7643);
const kTextColor = Color(0xFF757575);
const kAnimationDuration = Duration(milliseconds: 200);
const headingStyle = TextStyle(
  color: Colors.black,
  fontSize: 28,
  fontWeight: FontWeight.bold,
  height: 1.5,
);

// Form Errors
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kAgelNullError = "Please Enter your age";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";
const String kshowOnBoarding = 'showOnBoarding';
