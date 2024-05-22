import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension on TextStyle {
  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );

  }


}
extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );

  }
TextStyle get dMSerifDisplay{
    return copyWith(
      fontFamily: 'DM Serif Display',
    );
}

}
extension on TextStyle {
  TextStyle get abel {
    return copyWith(
      fontFamily: 'Abel',
    );
  }
  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.
class CustomTextStyles {
  // Body text style
  static get bodyMediumRobotoBlack900 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.black900,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w100,
      );
  static get titleLargeAbel => theme.textTheme.titleLarge!.abel.copyWith(
    fontSize: 23.fSize,
    fontWeight: FontWeight.w400,
  );
  static get titleLargeSemiBold => theme.textTheme.titleLarge!.copyWith(
    fontSize: 22.fSize,
    fontWeight: FontWeight.w600,
  );
  static get bodyMediumPoppinsBlack900 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.black900,
      );
  static get titleLargeDMSerifDisplayGray900 =>
      theme.textTheme.titleLarge!.dMSerifDisplay.copyWith(
        color: appTheme.gray900,
        fontSize: 22.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleMediumInter => theme.textTheme.titleMedium!.inter.copyWith(
    fontWeight: FontWeight.w500,
  );
  static get titleMediumInterGray50001 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.gray50001,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumInterGray50001Medium =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.gray50001,
        fontWeight: FontWeight.w500,
      );
}
