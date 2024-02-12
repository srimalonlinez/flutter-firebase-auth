import 'package:firebase_auth_tutorial/constants/colors.dart';
import 'package:flutter/material.dart';

const TextStyle descriptionstyle = TextStyle(
  fontSize: 12,
  color: textLight,
  fontWeight: FontWeight.w200,
);

const textInputDecoration = InputDecoration(
  hintText: "Email",
  hintStyle: TextStyle(color: textLight, fontSize: 15),
  fillColor: bgBlack,
  filled: true,
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: mainYellow, width: 1),
    borderRadius: BorderRadius.all(Radius.circular(100)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: mainYellow, width: 1),
    borderRadius: BorderRadius.all(Radius.circular(100)),
  ),
);
