import 'package:flutter/material.dart';

const bottomBarHeight = 80;
const bottomBarColor = Color(0xFFEB1555);
const activeColor = Color(0xFF1D1E33);
const inactiveColor = Color(0xFF111328);

const styleText = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 18,
  color: Color(0xFF8D8E98),
);

List<Widget> savedItems = [];

const numberStyle = TextStyle(
  fontWeight: FontWeight.w900,
  fontSize: 50,
);

enum Gender {
  male,
  female,
}
