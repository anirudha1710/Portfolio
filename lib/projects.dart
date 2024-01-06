import 'package:flutter/material.dart';
import 'package:my_portfolio/CustomButton.dart';
import 'package:my_portfolio/myPro.dart';
import 'package:url_launcher/url_launcher.dart';

class MyProjects extends StatefulWidget {
  const MyProjects({super.key});
  @override
  State<MyProjects> createState() => _MyProjectsState();
}

class _MyProjectsState extends State<MyProjects> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Projects'),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MyPro(lang: 'Flutter', desc: 'A ChatGpt App', title: 'Click for Code', star: '1', onPressed: ()=> launchUrl(Uri.parse('https://github.com/anirudha1710/ChatGpt_App'),),),
            ],
          ),
        ),
      ),
    );
  }
}
