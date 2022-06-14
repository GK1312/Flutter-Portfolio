import 'package:flutter/material.dart';
import 'package:portfolio/custom/top_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopSection(),
          ],
        ),
      ),
    );
  }
}
