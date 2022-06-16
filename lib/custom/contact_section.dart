import "package:flutter/material.dart";
import 'package:portfolio/widgets/contact_card.dart';
import 'package:portfolio/widgets/service_section_title.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 500,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xFFE8F0F9),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/bg_img_2.png"),
        ),
      ),
      child: Column(
        children: const [
          ServiceSectionTitle(
            subtitle: "For Project inquiry and information",
            title: "Contact Me",
            color: Color(0xFF07E24A),
          ),
          ContactCard()
        ],
      ),
    );
  }
}
