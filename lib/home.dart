import 'package:flutter/material.dart';
import 'package:sliding_sheet2/sliding_sheet2.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(244, 1, 60, 255),
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
                  onPressed: () {},
                ),
              ),
              PopupMenuItem(
                child: TextButton(
                  child: const Text(
                    'About',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {},
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
            body: const Center(
              child: Text('This widget is below the SlidingSheet'),
            ),
            builder: (context, state) {
              return const SizedBox(
                height: 500,
                child: Center(
                  child: Text('This is the content of the sheet'),
                ),
              );
            },
          ),
        )
    );
  }
}