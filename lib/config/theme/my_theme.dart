import 'package:flutter/material.dart';
import 'package:todo_app_c12_offline/core/colors_manager.dart';
import 'package:todo_app_c12_offline/core/my_text_styles.dart';

class MyTheme {
  static ThemeData lightTheme = ThemeData(
      useMaterial3: false,
      primaryColor: ColorsManager.blueColor,
      appBarTheme: AppBarTheme(
          backgroundColor: ColorsManager.blueColor,
          elevation: 4,
          centerTitle: true,
          titleTextStyle: MyTextStyles.appBarTextStyle),
      scaffoldBackgroundColor: ColorsManager.scaffoldBgColor,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.transparent,
          selectedItemColor: ColorsManager.blueColor,
          unselectedItemColor: ColorsManager.greyColor,
          elevation: 0,
          selectedIconTheme: IconThemeData(size: 32)),
      bottomAppBarTheme: const BottomAppBarTheme(
        color: ColorsManager.whiteColor,
        shape: CircularNotchedRectangle(),
        elevation: 14,
      ),
      cardTheme: CardTheme(
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.circular(15)
          // ),
          color: Colors.transparent,
          elevation: 0),
      dividerColor: ColorsManager.blueColor,
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        shape: StadiumBorder(side: BorderSide(color: Colors.white, width: 4)),
        backgroundColor: ColorsManager.blueColor,
        elevation: 12,
        iconSize: 26,
      ),
      textTheme: TextTheme(
          titleMedium: MyTextStyles.cardTitleTextStyle,
          labelSmall: MyTextStyles.settingsItemLabelTextStyle));
}
