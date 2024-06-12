import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pos/utils/colors.dart';

class CustomProfileFormfield extends StatefulWidget {
  final String helperText;
  // final String hint;
  final Function(String?)? validator;
  final TextInputType textInputType;
  final Widget? prefixIcon;
  final TextEditingController textEditingController;
  final VoidCallback? onTap;
  const CustomProfileFormfield(
      {super.key,
      required this.helperText,
      this.validator,
      required this.textInputType,
      this.prefixIcon,
      required this.textEditingController,
      this.onTap});

  @override
  State<CustomProfileFormfield> createState() => _CustomProfileFormfieldState();
}

class _CustomProfileFormfieldState extends State<CustomProfileFormfield> {
  bool? obscureText;

  bool hidePassword = true;

  @override
  Widget build(BuildContext context) {
    return Card(
      surfaceTintColor: AppColors.customWhiteColor,
      color: AppColors.customWhiteColor,
      shadowColor: AppColors.customItemContainerShadowColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      elevation: 15,
      child: TextFormField(
          style:
              const TextStyle(fontSize: 14, color: AppColors.customBlackColor),
          obscureText: obscureText ?? false,
          controller: widget.textEditingController,
          keyboardType: widget.textInputType,
          validator: (value) => widget.validator!(value),
          cursorColor: AppColors.customThemeColor,
          decoration: InputDecoration(
              suffixIcon: obscureText != null
                  ? GestureDetector(
                      onTap: () {
                        setState(() {
                          // hidePassword = !hidePassword;
                          obscureText = obscureText!;
                        });
                      },
                      child: Icon(
                        obscureText!
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined,
                        color: AppColors.customlabeltextColor,
                      ),
                    )
                  : const SizedBox(),
              prefixIcon: widget.prefixIcon,
              fillColor: AppColors.customWhiteColor,
              prefixIconColor: AppColors.customlabeltextColor,
              filled: true,
              hintText: widget.helperText,
              hintStyle: GoogleFonts.roboto(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: AppColors.customBlackColor),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 18.0, horizontal: 15.0),
              focusColor: AppColors.customWhiteColor,
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide:
                      const BorderSide(color: AppColors.customWhiteColor)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide:
                      const BorderSide(color: AppColors.customWhiteColor)),
              errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: const BorderSide(color: Colors.red)),
              focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: const BorderSide(color: Colors.red)))),
    );
  }
}
