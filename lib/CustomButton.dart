
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomButton extends StatelessWidget {
  final String path;
  final Function() onPressed;

  const CustomButton({super.key, required this.path, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          InkWell(
            onTap: onPressed,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: SvgPicture.asset(
                path,
                height: 40,
              ),
            ),
          ),
        ],
      ),
    );
  }
}