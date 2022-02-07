import 'package:deposit_app/themes/color_themes.dart';
import 'package:deposit_app/themes/text_themes.dart';
import 'package:flutter/material.dart';

class MaterialThemes {
  static ThemeData primary(BuildContext context) => ThemeData(
      scaffoldBackgroundColor: ColorThemes.light,
      appBarTheme: const AppBarTheme(
          elevation: 4,
          color: Colors.white,
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.black)),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          primary: ColorThemes.purple,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          minimumSize: const Size(
            double.infinity,
            50,
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
          contentPadding: const EdgeInsets.all(8),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorThemes.grey.lighten(.2),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorThemes.grey.lighten(.2),
            ),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorThemes.grey.lighten(.2),
            ),
          ),
          hintStyle: TextThemes.base.body1));
}
