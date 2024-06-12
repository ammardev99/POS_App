import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pos/utils/colors.dart';

class CustomOrangeThemeColorButton extends StatelessWidget {
  final String title;
  final double? width;
  final double? height;
  final VoidCallback onTap;
  final Color? buttonColor;
  final Color? titleColor;
  const CustomOrangeThemeColorButton(
      {super.key,
      required this.title,
      this.width,
      this.height,
      required this.onTap,
      this.buttonColor,
      this.titleColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(8.0),
          height: height,
          width: width,
          decoration: BoxDecoration(
              color: AppColors.customThemeColor,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                    offset: Offset(0, 6),
                    blurRadius: 17,
                    spreadRadius: 0,
                    color: AppColors.customItemContainerShadowColor)
              ]),
          child: Center(
            child: Text(
              title,
              style: GoogleFonts.roboto(
                textStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.customWhiteColor),
              ),
            ),
          ),
        ));
  }
}


