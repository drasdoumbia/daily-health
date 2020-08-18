import 'package:flutter/material.dart';

// Project Colors
const kPrimaryColor = Color(0xFF0D47A1);
const kGreyDark = Color(0xFF0D0F20);
const kLightBlue = Color(0xFFCFCCE0);

// Custom styles
const kTextFieldDecoration = InputDecoration(
  labelText: "Phone",
  labelStyle: TextStyle(fontSize: 13.0, fontFamily: 'AvenirLTPro-Heavy', color: kLightBlue),
  hintText: "Type phone number here",
  hintStyle: TextStyle(fontSize: 13.0, fontFamily: 'AvenirLTPro-Heavy', color: kLightBlue),
  border: UnderlineInputBorder(borderSide: BorderSide(color: kLightBlue, width: 2.0)),
  enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: kLightBlue, width: 2.0)),
  focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: kPrimaryColor, width: 2.0)),
);
