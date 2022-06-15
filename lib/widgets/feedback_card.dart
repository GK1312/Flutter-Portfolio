import "package:flutter/material.dart";
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/models/feedback.dart';

class FeedbackCard extends StatefulWidget {
  final int index;
  const FeedbackCard({Key? key, required this.index}) : super(key: key);

  @override
  State<FeedbackCard> createState() => _FeedbackCardState();
}

class _FeedbackCardState extends State<FeedbackCard> {
  bool isHover = false;
  Duration duration = Duration(milliseconds: 200);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      hoverColor: Colors.transparent,
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: duration,
        margin: const EdgeInsets.only(top: defaultPadding * 3),
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        height: 350,
        width: 350,
        decoration: BoxDecoration(
            color: feedbacks[widget.index].color,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [if (isHover) defaultCardShadow]),
        child: Column(
          children: [
            Transform.translate(
              offset: const Offset(0, -55),
              child: AnimatedContainer(
                duration: duration,
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 10),
                  boxShadow: [if (!isHover) defaultCardShadow],
                  image: DecorationImage(
                    image: AssetImage(
                      feedbacks[widget.index].userPic.toString(),
                    ),
                  ),
                ),
              ),
            ),
            Text(
              feedbacks[widget.index].review.toString(),
              style: const TextStyle(
                  color: textColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                  fontStyle: FontStyle.italic,
                  height: 1.5),
            ),
            const SizedBox(
              height: defaultPadding * 2,
            ),
            Text(
              feedbacks[0].name.toString(),
              style: const TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
