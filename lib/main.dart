import 'package:flutter/material.dart';
import 'package:digitize_management_app/views/home_page.dart';
import 'package:digitize_management_app/utils/to_color.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Members",
      home: const HomePage(),
      theme: ThemeData(
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          showUnselectedLabels: false,
          showSelectedLabels: false,
          selectedIconTheme: IconThemeData(
            color: "#023e8a".toColor(),
          ),
          unselectedIconTheme: IconThemeData(
            color: "#023e8a".toColor(),
          ),
        ),
      ),
    ),
  );
}
