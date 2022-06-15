import "package:flutter/material.dart";
import 'package:portfolio/constants/constants.dart';

class DefaultButton extends StatelessWidget {
  final String imageSrc, text;
  final Function press;
  const DefaultButton({
    Key? key,
    required this.imageSrc,
    required this.text,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          vertical: defaultPadding,
          horizontal: defaultPadding * 2.5,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        backgroundColor: const Color(0xFFE8F0F9),
      ),
      onPressed: () {
        press();
      },
      child: Row(
        children: [
          Image.asset(imageSrc),
          const SizedBox(width: defaultPadding),
          Text(text),
        ],
      ),
    );
  }
}
