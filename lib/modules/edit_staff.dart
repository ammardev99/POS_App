import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/utils/colors.dart';
import 'package:pos/widgets/custom_formatting.dart';
import 'package:pos/widgets/custom_orange_theme_color_button.dart';
import 'package:pos/widgets/custom_profile_formfield.dart';

Future editStaffDialog() {
  return
          Get.dialog(
            AlertDialog(
              backgroundColor: AppColors.customWhiteColor,
              title: dialogTitle('Edit Staff'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomProfileFormfield(
                      helperText: "Staff Name",
                      textInputType: TextInputType.name,
                      textEditingController: TextEditingController()),
                  sizeBox(10),
                  CustomProfileFormfield(
                      helperText: "Staff Phone Number",
                      textInputType: TextInputType.phone,
                      textEditingController: TextEditingController()),
                  sizeBox(10),
                  CustomProfileFormfield(
                      helperText: "email@gmail.com",
                      textInputType: TextInputType.emailAddress,
                      textEditingController: TextEditingController()),
                  sizeBox(10),
                  CustomProfileFormfield(
                      helperText: "User Rule",
                      textInputType: TextInputType.name,
                      textEditingController: TextEditingController()),
                  sizeBox(10),
                  CustomProfileFormfield(
                      helperText: "Status",
                      textInputType: TextInputType.name,
                      textEditingController: TextEditingController()),
                  sizeBox(10),
                  CustomProfileFormfield(
                      helperText: "Address",
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
            ),
          );
        }
 