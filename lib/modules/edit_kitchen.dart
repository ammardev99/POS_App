import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/utils/colors.dart';
import 'package:pos/widgets/custom_dropdown.dart';
import 'package:pos/widgets/custom_formatting.dart';
import 'package:pos/widgets/custom_orange_theme_color_button.dart';
import 'package:pos/widgets/custom_profile_formfield.dart';

Future editKitchenDialog() {
  return Get.dialog(
    AlertDialog(
      backgroundColor: AppColors.customWhiteColor,
      title: dialogTitle('Edit Kitchen'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomProfileFormfield(
              helperText: "Fast Food",
              textInputType: TextInputType.name,
              textEditingController: TextEditingController()),
          sizeBox(10),
          CustomProfileFormfield(
              helperText: "Kitchen",
              textInputType: TextInputType.name,
              textEditingController: TextEditingController()),
          sizeBox(10),
          customDropDown('Select Branch', TextEditingController()),
        ],
      ),
      actions: [
        CustomOrangeThemeColorButton(
          title: 'Update',
          onTap: () => Get.back(),
        )
      ],
    ),
  );
}
