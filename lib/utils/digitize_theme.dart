import 'package:digitize_management_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:digitize_management_app/utils/to_color.dart';
// import 'package:google_fonts/google_fonts.dart';

ThemeData digitizeTheme() {
  return ThemeData(
    appBarTheme: AppBarTheme(
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
      color: Colors.grey[50],
      shadowColor: Colors.transparent,
      titleTextStyle: const TextTheme().headline6?.copyWith(
            color: AppColors().primary,
          ),
      iconTheme: IconThemeData(
        color: AppColors().primary,
      ),
      centerTitle: true,
    ),
    primaryColor: AppColors().primary,
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: AppColors().primary,
      selectionColor: AppColors().primary,
    ),
    // textTheme: TextTheme(
    //   caption: GoogleFonts.poppins(),
    // ),
    listTileTheme: const ListTileThemeData(),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      showUnselectedLabels: false,
      showSelectedLabels: false,
      selectedIconTheme: IconThemeData(
        color: AppColors().primary,
      ),
      unselectedIconTheme: IconThemeData(
        color: AppColors().primary,
      ),
    ),
  );
}
