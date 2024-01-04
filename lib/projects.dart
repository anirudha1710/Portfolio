import 'package:flutter/material.dart';
import 'package:my_portfolio/CustomButton.dart';

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
              Container(
                height: 220,
                width: MediaQuery.of(context).size.width * 0.9,
                child: Card(
                  color: const Color(0xff262628),
                  child: Container(
                    margin: const EdgeInsets.only(left: 20, right: 20, top: 30),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Flutter',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Click to code',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          'A Chat Gpt App',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.white70,
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              '1',
                              style: TextStyle(color: Colors.white),
                            ),
                            CustomButton(path: 'assets/github.svg'),
                          ],
                        )
                      ],
                    ),
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