import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeGray700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumGray700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray700,
      );
  static get bodyMediumRed400 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.red400,
      );
  static get bodyMediumRed400Regular => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.red400,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumRed400_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.red400,
      );
  static get bodySmallGray700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray700,
      );
  // Headline text style
  static get headlineLargeExtraBold => theme.textTheme.headlineLarge!.copyWith(
        fontWeight: FontWeight.w800,
      );
  // Label text style
  static get labelLargeGray700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray700,
      );
  static get labelLargeGray70001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray70001,
      );
  static get labelLargeGray70001Medium => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray70001,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeGray700Medium => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeIndigoA400 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.indigoA400,
      );
  static get labelLargeIndigoA400Medium => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.indigoA400,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeRed400 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.red400,
      );
  // Title text style
  static get titleSmallGray100 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray100,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallWhiteA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w600,
      );
}

extension on TextStyle {
  TextStyle get plusJakartaSans {
    return copyWith(
      fontFamily: 'Plus Jakarta Sans',
    );
  }
}
