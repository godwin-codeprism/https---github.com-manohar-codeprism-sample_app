import 'package:flutter/material.dart';
import 'package:Roptia_Mobile/core/app_export.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({
    Key? key,
    this.height,
    this.styleType,
    this.leadingWidth,
    this.leading,
    this.title,
    this.centerTitle,
    this.actions,
  }) : super(
          key: key,
        );

  final double? height;

  final Style? styleType;

  final double? leadingWidth;

  final Widget? leading;

  final Widget? title;

  final bool? centerTitle;

  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: height ?? 37.v,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      flexibleSpace: _getStyle(),
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(
        mediaQueryData.size.width,
        height ?? 37.v,
      );
  _getStyle() {
    switch (styleType) {
      case Style.bgOutline_1:
        return Container(
          height: 37.v,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: theme.colorScheme.onPrimary.withOpacity(1),
            border: Border(
              bottom: BorderSide(
                color: theme.colorScheme.primaryContainer,
                width: 1.h,
              ),
            ),
          ),
        );
      case Style.bgOutline:
        return Container(
          height: 37.v,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: appTheme.pink800,
            border: Border(
              bottom: BorderSide(
                color: theme.colorScheme.primaryContainer,
                width: 1.h,
              ),
            ),
          ),
        );
      case Style.bgFill:
        return Container(
          height: 37.v,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: theme.colorScheme.onPrimary.withOpacity(1),
          ),
        );
      default:
        return null;
    }
  }
}

enum Style {
  bgOutline_1,
  bgOutline,
  bgFill,
}
