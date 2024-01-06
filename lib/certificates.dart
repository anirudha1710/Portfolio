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
              MyCert(lang: 'Coursera', desc: 'Click for link', title: 'AWS Cloud Practitioner', onPressed: ()=> launchUrl(Uri.parse('https://github.com/anirudha1710/ChatGpt_App'),),),
              MyCert(lang: 'Coursera', desc: 'Click for link', title: 'Fundamentals of Global Energy Business', onPressed: ()=> launchUrl(Uri.parse('https://github.com/anirudha1710/ChatGpt_App'),),),
              MyCert(lang: 'Ethnus', desc: 'Click for link', title: 'Mern Full Stack Internship Program', onPressed: ()=> launchUrl(Uri.parse('https://github.com/anirudha1710/ChatGpt_App'),),),
            ],
          ),
        ),
      ),
    );
  }
}
