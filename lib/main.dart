

import 'package:flutter/material.dart';

import 'Page1.dart';
import 'Page2.dart';
import 'Page3.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => screen1(),
        '2':(context) => screen2(),
        '3':(context) => screen3(),
      },
    ),
  );
}


