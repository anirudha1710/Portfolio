
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomButton extends StatelessWidget {
  final String path;

  const CustomButton({super.key, required this.path});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          InkWell(
            onTap: () {},
            child: SvgPicture.asset(
              path,
              height: 40,
            ),
          ),
        ],
      ),
    );
  }
}