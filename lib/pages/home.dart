import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/custom/about_section.dart';
import 'package:portfolio/custom/service_section.dart';
import 'package:portfolio/custom/top_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            TopSection(),
            SizedBox(height: defaultPadding * 2),
            AboutSection(),
            ServiceSection(),
            SizedBox(height: 500),
          ],
        ),
      ),
    );
  }
}
