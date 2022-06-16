import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/widgets/default_button.dart';
import 'package:portfolio/widgets/social_card.dart';

class ContactCard extends StatefulWidget {
  const ContactCard({Key? key}) : super(key: key);

  @override
  State<ContactCard> createState() => _ContactCardState();
}

class _ContactCardState extends State<ContactCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding * 3),
      margin: const EdgeInsets.only(top: defaultPadding * 2),
      constraints: const BoxConstraints(
        maxWidth: 1110,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SocialCard(
                imageSrc: "assets/images/skype.png",
                name: 'FlutterPortfolio',
                color: const Color(0xFFD9FFFC),
                press: () {},
              ),
              SocialCard(
                imageSrc: "assets/images/whatsapp.png",
                name: 'FlutterPortfolio',
                color: const Color(0xFFE4FFC7),
                press: () {},
              ),
              SocialCard(
                imageSrc: "assets/images/messanger.png",
                name: 'FlutterPortfolio',
                color: const Color(0xFFE8F0F9),
                press: () {},
              ),
            ],
          ),
          const SizedBox(height: defaultPadding * 2),
          ContactForm(),
        ],
      ),
    );
  }
}

class ContactForm extends StatefulWidget {
  const ContactForm({
    Key? key,
  }) : super(key: key);

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Wrap(
        spacing: defaultPadding * 2.5,
        runSpacing: defaultPadding * 1.5,
        children: [
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {
                print(value);
              },
              decoration: const InputDecoration(
                  labelText: "Your Name", hintText: "Enter Your Name"),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {
                print(value);
              },
              decoration: const InputDecoration(
                  labelText: "Email Address",
                  hintText: "Enter Your email address"),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {
                print(value);
              },
              decoration: const InputDecoration(
                  labelText: "Project Type", hintText: "Select Project Type"),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {
                print(value);
              },
              decoration: const InputDecoration(
                  labelText: "Project Budget",
                  hintText: "Select Project Budget"),
            ),
          ),
          SizedBox(
            child: TextFormField(
              onChanged: (value) {
                print(value);
              },
              decoration: const InputDecoration(
                  labelText: "Description", hintText: "Write Your Description"),
            ),
          ),
          const SizedBox(
            height: defaultPadding * 2,
          ),
          Center(
            child: FittedBox(
              child: DefaultButton(
                  imageSrc: "assets/images/contact_icon.png",
                  text: "Contact Me!",
                  press: () {}),
            ),
          ),
        ],
      ),
    );
  }
}
