import 'package:flutter/material.dart';
import 'package:portfolio/widgets/blur_box.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/widgets/menu.dart';
import 'package:portfolio/widgets/person_pic.dart';

class TopSection extends StatelessWidget {
  const TopSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      constraints: const BoxConstraints(maxHeight: 900, minHeight: 700),
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/background.png"),
        ),
      ),
      child: Container(
        margin: const EdgeInsets.only(top: defaultPadding),
        width: 1200,
        child: Stack(
          children: [
            LogoAndBlurBox(size: size),
            const Positioned(
              bottom: 0,
              right: 0,
              child: PersonImg(),
            ),
            const Positioned(
              child: Menu(),
            )
          ],
        ),
      ),
    );
  }
}
