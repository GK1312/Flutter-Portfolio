import 'package:flutter/material.dart';
import 'package:portfolio/widgets/blur_box.dart';
import '../constants/constants.dart';

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
        child: Stack(
          children: [
            LogoAndBlurBox(size: size),
            Positioned(
              child: Container(
                constraints:
                    const BoxConstraints(maxWidth: 639, maxHeight: 860),
                child: Image.asset("assets/images/person.png"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
