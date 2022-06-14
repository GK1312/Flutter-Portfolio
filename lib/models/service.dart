import 'package:flutter/material.dart';

class Service {
  late final int? id;
  late final String? title, image;
  late final Color? color;

  Service({this.id, this.title, this.image, this.color});
}

List<Service> services = [
  Service(
    id: 1,
    title: "Web Development",
    image: "assets/images/graphic.png",
    color: const Color(0xFFD9FFFC),
  ),
  Service(
    id: 2,
    title: "Web Development",
    image: "assets/images/desktop.png",
    color: const Color(0xFFE4FFC7),
  ),
  Service(
    id: 3,
    title: "Web Development",
    image: "assets/images/ui.png",
    color: const Color(0xFFFFF3DD),
  ),
  Service(
    id: 4,
    title: "Web Development",
    image: "assets/images/Intreaction_design.png",
    color: const Color(0xFFFFE0E0),
  ),
];
