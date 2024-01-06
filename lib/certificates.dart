import 'package:flutter/material.dart';

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

          ),
        ),
      ),
    );
  }
}
