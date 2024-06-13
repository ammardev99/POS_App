import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/utils/colors.dart';
import 'package:pos/widgets/custom_dropdown.dart';
import 'package:pos/widgets/custom_formatting.dart';
import 'package:pos/widgets/custom_orange_theme_color_button.dart';
import 'package:pos/widgets/custom_profile_formfield.dart';

Future editTableDialog() {
  return Get.dialog(
    AlertDialog(
      backgroundColor: AppColors.customWhiteColor,
      title: dialogTitle('Edit Table'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomProfileFormfield(
              helperText: "Table No",
              textInputType: TextInputType.name,
              textEditingController: TextEditingController()),
          sizeBox(10),
          CustomProfileFormfield(
              helperText: "Capacity",
              textInputType: TextInputType.number,
              textEditingController: TextEditingController()),
          sizeBox(10),
          customDropDown('Table Status', TextEditingController()),
          sizeBox(10),
          customDropDown('Floor', TextEditingController()),
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
