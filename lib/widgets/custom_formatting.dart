import 'package:flutter/material.dart';
import 'package:pos/utils/colors.dart';

Widget sizeBox(double w, [double? h]) {
  return SizedBox(
    width: w,
    height: h ?? w,
  );
}

Widget customInputFieldLabel(String label) {
  return Text(
    label,
    style: const TextStyle(
        fontFamily: 'Roboto',
        fontSize: 12,
        color: AppColors.customBlackColor,
        fontWeight: FontWeight.w500),
  );
}

Widget dialogTitle(String title) {
  return Center(
      child: Text(
    title,
    style: const TextStyle(
        fontSize: 18,
        color: AppColors.customBlackColor,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.bold),
  ));
}

Widget customSamiBoldFont(String text) {
  return  Text(
    text,
    style: const TextStyle(
        fontFamily: 'Roboto',
        fontSize: 12,
        color: AppColors.customBlackColor,
        fontWeight: FontWeight.w800),
  );
}
