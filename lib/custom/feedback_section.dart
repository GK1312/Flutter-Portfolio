import "package:flutter/material.dart";
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/models/feedback.dart';
import 'package:portfolio/widgets/feedback_card.dart';
import 'package:portfolio/widgets/service_section_title.dart';

class FeedbackSection extends StatelessWidget {
  const FeedbackSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding * 2.5),
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          const ServiceSectionTitle(
            subtitle: "Client's testimonials that inspired me a lot",
            title: "Feedback Received",
            color: Color(0xFF00B1FF),
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              feedbacks.length,
              (index) => FeedbackCard(index: index),
            ),
          ),
        ],
      ),
    );
  }
}
