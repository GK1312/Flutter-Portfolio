import 'package:flutter/material.dart';

class PersonImg extends StatelessWidget {
  const PersonImg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 639, maxHeight: 860),
      child: Image.asset("assets/images/person.png"),
    );
  }
}
