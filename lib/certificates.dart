import 'package:flutter/material.dart';
import 'package:my_portfolio/CustomButton.dart';
import 'package:my_portfolio/myCert.dart';
import 'package:url_launcher/url_launcher.dart';

class MyCertificate extends StatefulWidget {
  const MyCertificate({super.key});

  @override
  State<MyCertificate> createState() => _MyCertificateState();
}

class _MyCertificateState extends State<MyCertificate> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Certificates'),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MyCert(lang: 'Coursera', desc: 'AWS Cloud Practitioner', title: 'Click for link', onPressed: ()=> launchUrl(Uri.parse('https://coursera.org/share/f544aaa20f6643a5beb601adeccc5a92'),),),
              MyCert(lang: 'Coursera', desc: 'Fundamentals of Global Energy Business', title: 'Click for link', onPressed: ()=> launchUrl(Uri.parse('https://coursera.org/share/ee7e1b8d6a11f1e4c0198ca480f07672'),),),
              MyCert(lang: 'Ethnus', desc: 'Mern Full Stack Internship Program', title: 'Click for link', onPressed: (){}),
            ],
          ),
        ),
      ),
    );
  }
}
