import "package:flutter/material.dart";
import 'package:portfolio/constants/constants.dart';

class NumberOfExp extends StatelessWidget {
  final String noOfExp;
  const NumberOfExp({Key? key, required this.noOfExp}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: defaultPadding),
      padding: const EdgeInsets.all(defaultPadding),
      height: 240,
      width: 255,
      decoration: BoxDecoration(
        color: const Color(0xFFF7E8FF),
        borderRadius: BorderRadius.circular(10),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: const Color(0xFFEDD2FC),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 3),
              blurRadius: 6,
              color: const Color(0xFFA600FF).withOpacity(0.25),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Text(
                  noOfExp,
                  style: TextStyle(
                    fontSize: 100,
                    fontWeight: FontWeight.bold,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 6
                      ..color = const Color(0xFFDFA3FF).withOpacity(0.5),
                    shadows: [
                      BoxShadow(
                        offset: const Offset(0, 5),
                        blurRadius: 10,
                        color: const Color(0xFFA600FF).withOpacity(0.5),
                      )
                    ],
                  ),
                ),
                Text(
                  noOfExp,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 100,
                      color: Colors.white),
                )
              ],
            ),
            const SizedBox(
              height: defaultPadding / 2,
            ),
            const Text(
              "Years of Experience",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xFFA600FF),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
