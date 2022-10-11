import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'color_manager.dart';

ThemeData getApplicationTheme( ) {
  return ThemeData(
    // main colors of the app
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.primaryOpacity70,
    disabledColor: ColorManager.grey,
    scaffoldBackgroundColor: ColorManager.white,
    iconTheme: IconThemeData(color: ColorManager.black, size: 20.h),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    brightness: Brightness.light,
    dividerColor: Colors.transparent,
    unselectedWidgetColor: ColorManager.grey4,
    platform: TargetPlatform.iOS,
    // App bar theme
    appBarTheme: AppBarTheme(
      color: ColorManager.white,
      iconTheme: IconThemeData(color: ColorManager.black),
      elevation: 0.0,
      // toolbarHeight: 50.h,
      centerTitle: true,
    ),
  );
}
ThemeData getDarkTheme() {
  return ThemeData(
    // main colors of the app
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.primaryOpacity70,
    disabledColor: ColorManager.grey,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: ColorManager.scaffoldDarkColor,
    iconTheme: IconThemeData(color: ColorManager.white, size: 20.h),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    hintColor: ColorManager.grey6,

    // App bar theme
    appBarTheme: AppBarTheme(
      color: ColorManager.scaffoldDarkColor,
      iconTheme: IconThemeData(color: ColorManager.white),
      elevation: 0,
      toolbarHeight: 70.h,
      centerTitle: true,
    ),

  );
}

// bool isDarkMoodEnabled() {
//   return Bloc.isDarkMode;
//   return CacheHelper().instance.isDarkMode();
// }
