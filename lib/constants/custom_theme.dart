import 'package:flutter/material.dart';
import 'package:new_app/constants/colors.dart';

class CustomTheme {
  static ThemeData lightThemeData(BuildContext context) {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primaryColor,
        surface: AppColors.backgroundColor,
        secondary: AppColors.secondaryColor,
        error: AppColors.errorColor,
      ),
      appBarTheme: const AppBarTheme(backgroundColor: AppColors.primaryColor),
      scaffoldBackgroundColor: AppColors.backgroundColor,
      hoverColor: AppColors.secondaryColor.withOpacity(0.5),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          elevation: WidgetStateProperty.resolveWith((Set<WidgetState> states) {
            if (states.contains(WidgetState.hovered)) {
              return 5.0;
            } else {
              return 3.0;
            }
          }),
          backgroundColor:
              WidgetStateProperty.resolveWith((Set<WidgetState> states) {
            if (states.contains(WidgetState.hovered)) {
              return Colors.white;
            } else {
              return AppColors.secondaryColor;
            }
          }),
        ),
      ),
    );
  }

  static ThemeData darkThemeData() {
    return ThemeData(
      useMaterial3: true,
    );
  }
}
