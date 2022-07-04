import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:digitize_management_app/views/home_page.dart';
import 'package:digitize_management_app/utils/to_color.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Members",
      home: const HomePage(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
          ),
          color: Colors.transparent,
        ),
        primaryColor: "#023e8a".toColor(),
        textTheme: TextTheme(
          caption: GoogleFonts.roboto(),
        ),
        listTileTheme: ListTileThemeData(),
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
