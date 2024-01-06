import 'package:flutter/material.dart';
import 'package:sliding_sheet2/sliding_sheet2.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
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

  mySkills(num, type) {
    return Row(
      children: [
        Text(
          num,
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              foreground: Paint()..shader = overallTextGradient),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10),
          child: Text(type),
        )
      ],
    );
  }

  mySpecialization(String path, String text) {
    return SizedBox(
      width: 105,
      height: 115,
      child: Card(
        margin: const EdgeInsets.all(0),
        color: const Color.fromARGB(255, 30, 31, 30),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              path,
              height: 50,
              width: 50,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              text,
              style: TextStyle(
                foreground: Paint()..shader = highlightGradient,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(244, 1, 60, 255),
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: PopupMenuButton(
            icon: const Icon(Icons.menu),
            color: Colors.black,
            itemBuilder: (context) => [
              PopupMenuItem(
                child: TextButton(
                  child: const Text(
                    'Projects',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'projects');
                  },
                ),
              ),
              PopupMenuItem(
                child: TextButton(
                  child: const Text(
                    'Certificates',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'certificates');
                  },
                ),
              ),
              PopupMenuItem(
                child: TextButton(
                  child: const Text(
                    'About',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'about');
                  },
                ),
              ),
            ],
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 19, 16, 16),
                Color.fromARGB(255, 0, 0, 0),
              ],
            ),
          ),
          child: SlidingSheet(
            color: Colors.white,
            elevation: 8,
            cornerRadius: 30,
            snapSpec: const SnapSpec(
              snap: true,
              snappings: [0.4, 0.7, 1.0],
              positioning: SnapPositioning.relativeToAvailableSpace,
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
            builder: (context, state) {
              return Container(
                margin: const EdgeInsets.only(left: 20, right: 20, top: 30),
                height: 500,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        mySkills('9', 'Projects'),
                        mySkills('5', 'Certificates'),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Specialized In',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              mySpecialization('assets/android.svg', 'Android'),
                              mySpecialization('assets/github.svg', 'Github'),
                              mySpecialization('assets/java.svg', 'Java'),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              mySpecialization('assets/flutter.svg', 'Flutter'),
                              mySpecialization('assets/dart.svg', 'Dart'),
                              mySpecialization('assets/kotlin.svg', 'Kotlin'),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              mySpecialization('assets/aws.svg', 'Aws'),
                              mySpecialization('assets/python.svg', 'Python'),
                              mySpecialization('assets/git.svg', 'Git'),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                        ])
                  ],
                ),
              );
            },
          ),
        ));
  }
}
