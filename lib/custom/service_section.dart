import "package:flutter/material.dart";
import 'package:portfolio/constants/constants.dart';

class ServiceSection extends StatelessWidget {
  const ServiceSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: defaultPadding * 2),
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: defaultPadding),
            constraints: const BoxConstraints(maxWidth: 1110),
            height: 100,
            child: Row(
              children: [
                Container(
                  width: 8,
                  height: 100,
                  color: Colors.black,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
