import 'package:flutter/material.dart';

const textColor = Color(0xFF707070);
const textLightColor = Color(0xFF555555);

const defaultPadding = 20.0;

final defaultShadow = BoxShadow(
  offset: const Offset(0, 50),
  blurRadius: 50,
  color: const Color(0xFF0700B1).withOpacity(0.15),
);

final defaultCardShadow = BoxShadow(
  offset: const Offset(0, 20),
  blurRadius: 50,
  color: Colors.black.withOpacity(0.1),
);

const defaultOutlineInputBorder =
    OutlineInputBorder(borderSide: BorderSide(color: Color(0xFFCEE4FD)));

const defaultInputDecorationTheme = InputDecorationTheme(
  border: defaultOutlineInputBorder,
  enabledBorder: defaultOutlineInputBorder,
  focusedBorder: defaultOutlineInputBorder,
);
