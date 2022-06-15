import 'package:flutter/material.dart';

class Feedback {
  late final int? id;
  late final String? name, review, userPic;
  late final Color? color;

  Feedback({this.id, this.name, this.review, this.userPic, this.color});
}

List<Feedback> feedbacks = [
  Feedback(
      id: 1,
      name: "John Doe",
      review: review,
      userPic: "assets/images/people.png",
      color: const Color(0xFFFFF3DD)),
  Feedback(
      id: 2,
      name: "John Doe",
      review: review,
      userPic: "assets/images/people.png",
      color: const Color(0xFFD9FFFC)),
  Feedback(
      id: 3,
      name: "John Doe",
      review: review,
      userPic: "assets/images/people.png",
      color: const Color(0xFFFFE0E0))
];

String review =
    "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters";
