import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/models/recentwork.dart';

class RecentWorkCard extends StatefulWidget {
  final int index;
  final Function press;
  const RecentWorkCard({Key? key, required this.index, required this.press()})
      : super(key: key);

  @override
  State<RecentWorkCard> createState() => _RecentWorkCardState();
}

class _RecentWorkCardState extends State<RecentWorkCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        height: 320,
        width: 540,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if (isHover) defaultCardShadow],
        ),
        child: Row(
          children: [
            Image.asset(
              recentworks[widget.index].image.toString(),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      recentworks[widget.index].title.toString().toUpperCase(),
                      style: const TextStyle(fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: defaultPadding / 2,
                    ),
                    Text(
                      recentworks[widget.index].title.toString(),
                      style: Theme.of(context)
                          .textTheme
                          .headline5
                          ?.copyWith(height: 1.5, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: defaultPadding,
                    ),
                    const Text(
                      "View Details",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
