import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app_c12_offline/core/colors_manager.dart';

class MyTextStyles {
  static TextStyle? appBarTextStyle = TextStyle(
    color: ColorsManager.whiteColor,
    fontSize: 22,
    fontWeight: FontWeight.w700,
  );
  static TextStyle? cardTitleTextStyle = TextStyle(
      fontSize: 18, fontWeight: FontWeight.w700, color: Color(0xFF5D9CEC));
  static TextStyle? settingsItemLabelTextStyle = GoogleFonts.poppins(
      fontSize: 14, fontWeight: FontWeight.w700, color: Color(0xFF303030));

//TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Color(0xFF303030));
}
