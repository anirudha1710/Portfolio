import 'package:flutter/material.dart';
import 'package:my_portfolio/about.dart';
import 'package:my_portfolio/certificates.dart';
import 'package:my_portfolio/home.dart';
import 'package:my_portfolio/projects.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'about',
    routes: {
      'home': (context) => const MyHome(),
      'about': (context) => const About(),
      'projects': (context) => const MyProjects(),
      'certificates': (context) => const MyCertificate(),
    },
  ));
}
