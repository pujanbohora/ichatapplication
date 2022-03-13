import 'package:flutter/material.dart';
import 'package:ichatapplication/constants/custom_colors.dart';
import 'package:ichatapplication/constants/custom_fonts.dart';

class CustomTheme {
  static ThemeData get lightTheme {
    return ThemeData(
        scaffoldBackgroundColor: CustomColors.black,
        bottomAppBarColor: CustomColors.white,
        shadowColor: CustomColors.whiteShade,
        textTheme: const TextTheme(
            headline1: TextStyle(
                fontFamily: CustomFonts.MarkProBlack,
                color: CustomColors.white,
                fontSize: 32),
            headline2: TextStyle(
                fontSize: 28,
                color: CustomColors.white,
                fontFamily: CustomFonts.MarkProBlack),
            headline3: TextStyle(
                fontSize: 20,
                fontFamily: CustomFonts.MarkProBlack,
                color: CustomColors.white),
            headline4: TextStyle(
                fontSize: 18,
                fontFamily: CustomFonts.GilroyMedium,
                color: CustomColors.white),
            bodyText1: TextStyle(
                fontFamily: CustomFonts.MarkProRegular,
                fontSize: 15,
                color: CustomColors.white),
            bodyText2: TextStyle(
                fontFamily: CustomFonts.MarkProRegular,
                fontSize: 14,
                color: CustomColors.greyShade),
            button: TextStyle(
                fontFamily: CustomFonts.MarkProBold,
                fontSize: 15,
                color: CustomColors.white)));
  }
}
