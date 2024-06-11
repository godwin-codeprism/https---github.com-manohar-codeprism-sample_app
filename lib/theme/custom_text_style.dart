import 'package:Roptia_Mobile/core/utils/size_utils.dart';
import 'package:Roptia_Mobile/theme/theme_helper.dart';
import 'package:flutter/material.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyMediumGray600 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray600,
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodySmallGray600 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray600,
      );
  static get bodySmallGray600_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray600,
      );
  static get bodySmallOnPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 10.fSize,
      );
  // Headline text style
  static get headlineSmallOnPrimary => theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w600,
      );
  // Label text style
  static get labelLargeErrorContainer => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get labelLargeOnPrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get labelLargePlusJakartaSansErrorContainer =>
      theme.textTheme.labelLarge!.plusJakartaSans.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get headlineSmallPrimary => theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyLargeGray9000416 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray90004,
        fontSize: 16.fSize,
      );
  static get bodyLargeUbuntuOnPrimary =>
      theme.textTheme.bodyLarge!.ubuntu.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 16.fSize,
      );

  static get headlineSmallPoppinsOnPrimary =>
      theme.textTheme.headlineSmall!.poppins.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallPoppinsOnPrimarySemiBold =>
      theme.textTheme.headlineSmall!.poppins.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get helveticaGray90004 => TextStyle(
        color: appTheme.gray90004,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w400,
      ).helvetica;
  static get titleMediumEuclidCircularAPrimary =>
      theme.textTheme.titleMedium!.euclidCircularA.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallGray90004 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.gray90004,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get bodyLargeGray90004 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray90004,
        fontSize: 16.fSize,
      );
  static get titleMediumGray90004 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90004,
      );

  static get bodyMediumGray90005 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray90005,
      );

  static get labelMediumPrimary => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.64),
      );

  static get bodyMediumGray50001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray50001,
      );
}

extension on TextStyle {
  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get euclidCircularA {
    return copyWith(
      fontFamily: 'Euclid Circular A',
    );
  }

  TextStyle get plusJakartaSans {
    return copyWith(
      fontFamily: 'Plus Jakarta Sans',
    );
  }

  TextStyle get ubuntu {
    return copyWith(
      fontFamily: 'Ubuntu',
    );
  }

  TextStyle get helvetica {
    return copyWith(
      fontFamily: 'Helvetica',
    );
  }
}
