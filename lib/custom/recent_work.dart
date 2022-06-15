import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/models/recentwork.dart';
import 'package:portfolio/widgets/hire_me_card.dart';
import 'package:portfolio/widgets/recent_work_card.dart';
import 'package:portfolio/widgets/service_section_title.dart';

class RecentWorkSection extends StatelessWidget {
  const RecentWorkSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: defaultPadding * 6),
      width: double.infinity,
      // height: 600,
      decoration: BoxDecoration(
        color: const Color(0xFFF7E8FF).withOpacity(0.3),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/recent_work_bg.png"),
        ),
      ),
      child: Column(
        children: [
          Transform.translate(
            offset: const Offset(0, -80),
            child: const HireMeCard(),
          ),
          const ServiceSectionTitle(
            subtitle: "My Strong Arenas",
            title: "Recent Works",
            color: Color(0xFFFFB100),
          ),
          const SizedBox(height: defaultPadding * 1.5),
          SizedBox(
            width: 1110,
            child: Wrap(
              spacing: defaultPadding,
              runSpacing: defaultPadding * 2,
              children: List.generate(
                recentworks.length,
                (index) => RecentWorkCard(index: index, press: () {}),
              ),
            ),
          ),
          const SizedBox(height: defaultPadding * 5),
        ],
      ),
    );
  }
}
