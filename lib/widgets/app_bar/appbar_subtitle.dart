import 'package:flutter/material.dart';
import 'package:Roptia_Mobile/core/app_export.dart';

// ignore: must_be_immutable
class AppbarSubtitle extends StatelessWidget {
  AppbarSubtitle({
    Key? key,
    required this.text,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String text;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Opacity(
          opacity: 0.8,
          child: Text(
            text,
            style: CustomTextStyles.titleMediumBlack900.copyWith(
              color: appTheme.black900.withOpacity(0.64),
            ),
          ),
        ),
      ),
    );
  }
}
