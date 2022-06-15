import "package:flutter/material.dart";
import 'package:portfolio/constants/constants.dart';

class AboutSectionText extends StatelessWidget {
  final String text;
  const AboutSectionText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Text(
        text,
        style: const TextStyle(
            fontWeight: FontWeight.w200, color: textColor, height: 2),
      ),
    );
  }
}
