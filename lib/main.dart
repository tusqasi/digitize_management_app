import 'package:flutter/material.dart';
import 'package:digitize_management_app/views/home_page.dart';
import 'package:digitize_management_app/utils/digitize_theme.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Members",
      home: const HomePage(),
      theme: digitizeTheme(),
    ),
  );
}
