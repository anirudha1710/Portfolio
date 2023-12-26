import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {

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

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color.fromARGB(163, 0, 0, 0),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Stack(children: [
        Container(
          margin: const EdgeInsets.all(40),
          child: ShaderMask(
            shaderCallback: (bound) {
              return const LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: [Colors.black, Colors.transparent])
                  .createShader(
                  Rect.fromLTRB(0, 0, bound.width, bound.height));
            },
            blendMode: BlendMode.dstIn,
            child: Image.asset(
              'assets/img.png',
              alignment: Alignment.topCenter,
              height: 300,
              fit: BoxFit.contain,
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.49),
          child: Column(
            children: [
              Text(
                'Anirudha Sharma',
                style: TextStyle(
                    foreground: Paint()..shader = headerGradient,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                'Android Developer',
                style: TextStyle(
                  foreground: Paint()..shader = highlightGradient,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}