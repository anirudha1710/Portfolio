import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(168, 0, 0, 0),
        appBar: AppBar(
          leading: PopupMenuButton(
              icon: Icon(Icons.menu),
              color: Colors.black,
              itemBuilder: (context) => [
                    PopupMenuItem(
                        child: TextButton(
                            child: const Text(
                              'Projects',
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {})),
                    PopupMenuItem(
                        child: TextButton(
                            child: const Text(
                              'About',
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {})),
                  ]),
        ),
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
                colors: [
                  Color.fromARGB(255, 19, 16, 16),
                  Color.fromARGB(255, 0, 0, 0),
                ]
          )),
        ));
  }
}
