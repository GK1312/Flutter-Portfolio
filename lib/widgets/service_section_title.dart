import "package:flutter/material.dart";
import 'package:portfolio/constants/constants.dart';

class ServiceSectionTitle extends StatelessWidget {
  final String subtitle, title;
  final Color color;
  const ServiceSectionTitle({
    Key? key,
    required this.subtitle,
    required this.title,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: defaultPadding),
      constraints: const BoxConstraints(maxWidth: 1110),
      height: 100,
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: defaultPadding),
            padding: const EdgeInsets.only(bottom: 72),
            width: 8,
            height: 100,
            color: Colors.black,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: color,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                subtitle,
                style: const TextStyle(
                    fontWeight: FontWeight.w200, color: textColor),
              ),
              Text(
                title,
                style: Theme.of(context).textTheme.headline2?.copyWith(
                    fontWeight: FontWeight.bold, color: Colors.black),
              )
            ],
          )
        ],
      ),
    );
  }
}
