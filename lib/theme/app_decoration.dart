import 'package:flutter/material.dart';
import '../core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA70001,
      );
  static BoxDecoration get fillGray100 => BoxDecoration(
    color: appTheme.gray100,
  );
  static BoxDecoration get fillGray => BoxDecoration(
    color: appTheme.gray10001,
  );
// Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        border: Border.all(
          color: appTheme.black900,
          width: 1.h,
        ),
      );
  static BoxDecoration get gradientBlueToBlueGray => BoxDecoration(
    border: Border.all(
      color: appTheme.gray50,
      width: 1.h,
    ),
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.blue50, appTheme.blueGray90000],
    ),
  );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder11 => BorderRadius.circular(
        11.h,
      );
  static BorderRadius get circleBorder28 => BorderRadius.circular(
    28.h,
  );
// Rounded borders
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get roundedBorder50 => BorderRadius.circular(
    50.h,
  );
  static BorderRadius get roundedBorder1 => BorderRadius.circular(
    1.h,
  );
  static BorderRadius get roundedBorder16 => BorderRadius.circular(
    16.h,
  );
}





