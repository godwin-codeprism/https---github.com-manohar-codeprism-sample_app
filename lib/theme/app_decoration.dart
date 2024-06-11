import 'package:Roptia_Mobile/core/app_export.dart';
import 'package:Roptia_Mobile/theme/theme_helper.dart';
import 'package:flutter/material.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray5001,
      );
  static BoxDecoration get fillOnPrimary => BoxDecoration(
        color: theme.colorScheme.onPrimary,
      );
  static BoxDecoration get fillBlack900 => BoxDecoration(
        color: appTheme.black900.withOpacity(0.56),
      );
  static BoxDecoration get fillBlack9001 => BoxDecoration(
        color: appTheme.black900,
      );
  static BoxDecoration get fillGray20003 => BoxDecoration(
        color: appTheme.gray20003,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get outlinePrimaryContainer => BoxDecoration(
        border: Border(
          top: BorderSide(
            color: theme.colorScheme.primaryContainer,
            width: 1.h,
          ),
          bottom: BorderSide(
            color: theme.colorScheme.primaryContainer,
            width: 1.h,
          ),
        ),
      );
}

class BorderRadiusStyle {
  static BorderRadius get circleBorder18 => BorderRadius.circular(
        18.h,
      );

  // Custom borders
  static BorderRadius get customBorderTL24 => BorderRadius.vertical(
        top: Radius.circular(24.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder12 => BorderRadius.circular(
        12.h,
      );
  static BorderRadius get roundedBorder24 => BorderRadius.circular(
        24.h,
      );
  static BorderRadius get roundedBorder8 => BorderRadius.circular(
        8.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
