import 'package:flutter/material.dart';

class Recentwork {
  late final String? image, category, title;
  late final int? id;

  Recentwork({this.id, this.image, this.category, this.title});
}

List<Recentwork> recentworks = [
  Recentwork(
    id: 1,
    title: "New & Fresh Looking Portfolio indeed at the end",
    category: "Graphic Design",
    image: "assets/images/work_1.png",
  ),
  Recentwork(
    id: 1,
    title: "New & Fresh Looking Portfolio indeed at the end",
    category: "Graphic Design",
    image: "assets/images/work_2.png",
  ),
  Recentwork(
    id: 1,
    title: "New & Fresh Looking Portfolio indeed at the end",
    category: "Graphic Design",
    image: "assets/images/work_3.png",
  ),
  Recentwork(
    id: 1,
    title: "New & Fresh Looking Portfolio indeed at the end",
    category: "Graphic Design",
    image: "assets/images/work_4.png",
  ),
];
