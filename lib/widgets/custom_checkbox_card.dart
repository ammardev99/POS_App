import 'package:flutter/material.dart';
import 'package:pos/utils/colors.dart';
import 'package:pos/widgets/custom_formatting.dart';

Widget customCheckBoxCard(String label, String price) {
  return InkWell(
    borderRadius: BorderRadius.circular(20),
    onTap: () {},
    child: Card(
      margin: const EdgeInsets.all(0),
      surfaceTintColor: AppColors.customWhiteColor,
      color: AppColors.customWhiteColor,
      shadowColor: AppColors.customItemContainerShadowColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      elevation: 15,
      child: ListTile(
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.check_box_outline_blank_outlined)),
        title: customSamiBoldFont(label),
        trailing: customSamiBoldFont(price),
      ),
    ),
  );
}
