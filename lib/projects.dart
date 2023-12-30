
import 'package:flutter/material.dart';

class MyProjects extends StatefulWidget {
  const MyProjects({super.key});

  @override
  State<MyProjects> createState() => _MyProjectsState();
}

class _MyProjectsState extends State<MyProjects> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Projects'),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 220,
                width: MediaQuery.of(context).size.width *0.9,
                child: Card(
                  color: Color(0xff262628),
                  child: Container(
                    child: Column(),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
//https://youtube.com/watch?v=L03pPyJRo8M&list=PLkRwd9j2i_qkYweNXkRyAFevi4hEhZ0S7&index=3