import 'package:flutter/material.dart';

const Color kTextColor = Color(0xffFFFFFF);
const Color kShadeColor = Color(0xff64666C);
const TextStyle kBrand = TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.w500,
  color: kTextColor,
);
const TextStyle kRate = TextStyle(
  fontSize: 13,
  fontWeight: FontWeight.w400,
  color: kTextColor,
);
const TextStyle kCarDetails = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w500,
  color: kTextColor,
);

final kTextFieldDecoration = InputDecoration(
  hintText: 'Enter the hintText',
  hintStyle: TextStyle(
    color: kTextColor.withOpacity(0.32),
    fontSize: 12,
    fontWeight: FontWeight.bold,
  ),
  fillColor: Colors.black,

  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: BorderSide(
      width: 1.0,
      color: kTextColor.withOpacity(0.5),
    ),
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: BorderSide(
      width: 2.0,
      color: kTextColor.withOpacity(0.5),
    ),
  ),
);
