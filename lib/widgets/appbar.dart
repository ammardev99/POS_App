// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pos/utils/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback onLeadingPressed;
  final String title;

  CustomAppBar({
    super.key,
    required this.onLeadingPressed,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: AppColors.customWhiteColor,
      leading: IconButton(
        icon: Icon(
          Icons.chevron_left,
          size: 36,
          color: AppColors.customThemeColor,
        ),
        onPressed: onLeadingPressed,
      ),
      title: Center(
        child: Text(title,
            style: GoogleFonts.roboto(
              textStyle: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 27,
                  color: AppColors.customThemeColor),
            )),
      ),
      backgroundColor: AppColors.customWhiteColor,
      elevation: 4.0,
      toolbarHeight: 60.0,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60.0);
}
////////////////////////////////Add button Enhaced AppBar/////////////////////////////
///////////////////////////////////////////////////////////////////////////////////
// ignore: duplicate_ignore
// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

class EnhancedAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback onLeadingPressed;
  final VoidCallback onActionPressed;
  final String title;

  EnhancedAppBar({
    super.key,
    required this.onLeadingPressed,
    required this.onActionPressed,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: AppColors.customWhiteColor,
      leading: IconButton(
        icon: Icon(
          Icons.chevron_left,
          size: 36,
          color: AppColors.customThemeColor,
        ),
        onPressed: onLeadingPressed,
      ),
      title: Center(
        child: Text(title,
            style: GoogleFonts.roboto(
              textStyle: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 27,
                  color: AppColors.customThemeColor),
            )),
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.add,
            size: 36,
            color: AppColors.customThemeColor,
          ),
          onPressed: onActionPressed,
        ),
      ],
      backgroundColor: AppColors.customWhiteColor,
      elevation: 4.0,
      toolbarHeight: 60.0,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60.0);
}
