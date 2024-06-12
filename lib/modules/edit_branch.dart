import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/utils/colors.dart';
import 'package:pos/widgets/custom_formatting.dart';
import 'package:pos/widgets/custom_orange_theme_color_button.dart';
import 'package:pos/widgets/custom_profile_formfield.dart';

Future editBranchDialog(){
  return           Get.dialog(
            AlertDialog(
              backgroundColor: AppColors.customWhiteColor,
              title: dialogTitle('Edit Branch'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  sizeBox(10),
                  CustomProfileFormfield(
                      helperText: "Branch ID#",
                      textInputType: TextInputType.number,
                      textEditingController: TextEditingController()),
                  CustomProfileFormfield(
                    helperText: "Branch Name",
                    textInputType: TextInputType.name,
                    textEditingController: TextEditingController(),
                    validator: (value) {
                      if ((value ?? "").isEmpty) {
                        return 'name is required';
                      }
                      return null;
                    },
                  ),
                  sizeBox(10),
                  CustomProfileFormfield(
                      helperText: "Branch Phone",
                      textInputType: TextInputType.phone,
                      textEditingController: TextEditingController()),
                  sizeBox(10),
                  CustomProfileFormfield(
                      helperText: "Branch Email",
                      textInputType: TextInputType.emailAddress,
                      textEditingController: TextEditingController()),
                  sizeBox(10),
                  CustomProfileFormfield(
                      helperText: "Branch Manager",
                      textInputType: TextInputType.name,
                      textEditingController: TextEditingController(),
                    validator: (value) {
                      if ((value ?? "").isEmpty) {
                        return 'name is required';
                      }
                      return null;
                    },),
                  sizeBox(10),
                  CustomProfileFormfield(
                      helperText: "Branch Address",
                      textInputType: TextInputType.streetAddress,
                      textEditingController: TextEditingController()),
                ],
              ),
              actions: [
                CustomOrangeThemeColorButton(
                  title: 'Update',
                  onTap: () => Get.back(),
                )
              ],
            ));

}