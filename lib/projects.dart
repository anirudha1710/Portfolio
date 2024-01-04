import 'package:flutter/material.dart';
import 'package:my_portfolio/CustomButton.dart';

class MyProjects extends StatefulWidget {
  const MyProjects({super.key});
  @override
  State<MyProjects> createState() => _MyProjectsState();
}

class _MyProjectsState extends State<MyProjects> {

  final Shader headerGradient = const LinearGradient(
    colors: <Color>[
      Color.fromARGB(255, 0, 242, 255),
      Color.fromARGB(255, 33, 170, 97),
    ],
  ).createShader(const Rect.fromLTWH(0, 0, 200.0, 70.0));

  final Shader highlightGradient = const LinearGradient(
    colors: <Color>[
      Color.fromARGB(255, 43, 255, 1),
      Color.fromARGB(255, 255, 255, 0),
    ],
  ).createShader(const Rect.fromLTWH(0, 0, 200.0, 70.0));

  final Shader overallTextGradient = const LinearGradient(
    colors: <Color>[
      Color(0xff1f005c),
      Color(0xff5b0060),
      Color(0xff870160),
      Color(0xffac255e),
      Color(0xffca485c),
      Color(0xffe16b5c),
      Color(0xfff39060),
      Color.fromARGB(255, 255, 89, 0),
    ],
  ).createShader(const Rect.fromLTWH(0, 0, 200.0, 70.0));

  myPro(lang, title, desc, star){
    return Container(
      height: 220,
      width: MediaQuery.of(context).size.width * 0.9,
      child: Card(
        color: const Color(0xff262628),
        child: Container(
          margin: const EdgeInsets.only(left: 20, right: 20, top: 40),
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text(
                lang,
                style: TextStyle(
                  foreground: Paint()..shader = headerGradient,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
               Text(
                 desc,
                style: TextStyle(
                  foreground: Paint()..shader = highlightGradient,
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),
              ),
               const SizedBox(
                height: 3,
              ),
               Text(
                title,
                style: TextStyle(
                  foreground: Paint()..shader = overallTextGradient,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.white70,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                   Text(
                    star,
                    style: const TextStyle(color: Colors.white),
                  ),
                  Expanded(child: Container()),
                  const CustomButton(path: 'assets/github.svg'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
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
              myPro('Flutter', 'Click to code', 'A ChatGpt App', '1'),
              myPro('Flutter', 'Click to code', 'A ChatGpt App', '1'),
              myPro('Flutter', 'Click to code', 'A ChatGpt App', '1'),
              myPro('Flutter', 'Click to code', 'A ChatGpt App', '1'),
              myPro('Flutter', 'Click to code', 'A ChatGpt App', '1'),
              myPro('Flutter', 'Click to code', 'A ChatGpt App', '1'),
            ],
          ),
        ),
      ),
    );
  }
}
//https://youtube.com/watch?v=L03pPyJRo8M&list=PLkRwd9j2i_qkYweNXkRyAFevi4hEhZ0S7&index=3
