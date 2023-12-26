import 'package:flutter/material.dart';
import 'package:my_portfolio/about.dart';
import 'package:my_portfolio/home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'home',
    routes: {
      'home': (context) => const MyHome(),
      'about':(context ) => const About(),
    },
  ));
}
