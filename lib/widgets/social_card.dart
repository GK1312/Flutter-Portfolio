import "package:flutter/material.dart";
import 'package:portfolio/constants/constants.dart';

class SocialCard extends StatefulWidget {
  final String imageSrc, name;
  final Color color;
  final Function press;
  const SocialCard({
    Key? key,
    required this.imageSrc,
    required this.name,
    required this.color,
    required this.press,
  }) : super(key: key);

  @override
  State<SocialCard> createState() => _SocialCardState();
}

class _SocialCardState extends State<SocialCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: InkWell(
        onTap: () {
          widget.press();
        },
        onHover: (value) {
          setState(() {
            isHover = value;
          });
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: const EdgeInsets.symmetric(
              vertical: defaultPadding / 2, horizontal: defaultPadding * 1.5),
          decoration: BoxDecoration(
            color: widget.color,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [if (isHover) defaultCardShadow],
          ),
          child: Row(
            children: [
              Image.asset(
                widget.imageSrc,
                height: 80,
                width: 80,
              ),
              const SizedBox(width: defaultPadding),
              Text(widget.name)
            ],
          ),
        ),
      ),
    );
  }
}
