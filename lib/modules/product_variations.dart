import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/utils/colors.dart';
import 'package:pos/widgets/custom_checkbox_card.dart';
import 'package:pos/widgets/custom_formatting.dart';
import 'package:pos/widgets/custom_orange_theme_color_button.dart';

Future productVariationDialog() {
  return Get.dialog(
    AlertDialog(
      backgroundColor: AppColors.customWhiteColor,
      title: dialogTitle('Product Variations'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          customCheckBoxCard('Small', '600'),
          sizeBox(5),
          customCheckBoxCard('Medium', '900'),
          sizeBox(5),
          customCheckBoxCard('Large', '1200'),
          sizeBox(10),
          dialogTitle('Add On'),
          sizeBox(10),
          customCheckBoxCard('Add On 1', '79'),
          sizeBox(5),
          customCheckBoxCard('Add On 2', '89'),
          sizeBox(5),
        ],
      ),
      actions: [
        CustomOrangeThemeColorButton(
          title: 'Add To Cart',
          onTap: () => Get.back(),
        )
      ],
    ),
  );
}


