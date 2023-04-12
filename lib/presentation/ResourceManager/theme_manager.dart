import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'color_manager.dart';
import 'fonts_manager.dart';
import 'styles_manager.dart';
import 'values_manager.dart';

SystemUiOverlayStyle getAppTheme (){
  return SystemUiOverlayStyle();
}
ThemeData getApplicationTheme() {
  return ThemeData(
    // main colors
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.lightPrimary,
    primaryColorDark: ColorManager.darkPrimary,
    disabledColor: ColorManager.grey1,
    splashColor: ColorManager.lightPrimary,
    // ripple effect color
    // cardview theme
    cardTheme: CardTheme(
        color: ColorManager.white,
        shadowColor: ColorManager.grey,
        elevation: AppSizeManger.s4),
    // app bar theme
    appBarTheme: AppBarTheme(
        centerTitle: true,
        color: ColorManager.primary,
        elevation: AppSizeManger.s4,
        shadowColor: ColorManager.lightPrimary,
        titleTextStyle:
            getRegulerStyle(fontSize: FontSizeManger.s16, color: ColorManager.white)),
    // button theme
    buttonTheme: ButtonThemeData(
        shape: const StadiumBorder(),
        disabledColor: ColorManager.grey1,
        buttonColor: ColorManager.primary,
        splashColor: ColorManager.lightPrimary),

    // elevated button them
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            textStyle: getRegulerStyle(
                color: ColorManager.white, fontSize: FontSizeManger.s17),
            primary: ColorManager.primary,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSizeManger.s12)))),

    textTheme: TextTheme(
        displayLarge: getSemiBoldStyle(
            color: ColorManager.darkGrey, fontSize: FontSizeManger.s16),
        headlineLarge: getSemiBoldStyle(
            color: ColorManager.darkGrey, fontSize: FontSizeManger.s16),
        headlineMedium: getRegulerStyle(
            color: ColorManager.darkGrey, fontSize: FontSizeManger.s14),
        titleMedium:
            getMediumrStyle(color: ColorManager.primary, fontSize: FontSizeManger.s16),
        titleSmall:
            getRegulerStyle(color: ColorManager.white, fontSize: FontSizeManger.s16),
        bodyLarge: getRegulerStyle(color: ColorManager.grey1),
        bodySmall: getRegulerStyle(color: ColorManager.grey),
        bodyMedium: getRegulerStyle(color: ColorManager.grey2, fontSize: FontSizeManger.s12),
        labelSmall:
            getBoldStyle(color: ColorManager.primary, fontSize: FontSizeManger.s12)),

    // input decoration theme (text form field)
    inputDecorationTheme: InputDecorationTheme(
        // content padding
        contentPadding: const EdgeInsets.all(PaddingManger.p8),
        // hint style
        hintStyle:
            getRegulerStyle(color: ColorManager.grey, fontSize: FontSizeManger.s14),
        labelStyle:
            getMediumrStyle(color: ColorManager.grey, fontSize: FontSizeManger.s14),
        errorStyle: getRegulerStyle(color: ColorManager.error),

        // enabled border style
        enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManager.grey, width: AppSizeManger.s1_5),
            borderRadius: const BorderRadius.all(Radius.circular(AppSizeManger.s8))),

        // focused border style
        focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManager.primary, width: AppSizeManger.s1_5),
            borderRadius: const BorderRadius.all(Radius.circular(AppSizeManger.s8))),

        // error border style
        errorBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManager.error, width: AppSizeManger.s1_5),
            borderRadius: const BorderRadius.all(Radius.circular(AppSizeManger.s8))),
        // focused border style
        focusedErrorBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManager.primary, width: AppSizeManger.s1_5),
            borderRadius: const BorderRadius.all(Radius.circular(AppSizeManger.s8)))),
    // label style
  );
}