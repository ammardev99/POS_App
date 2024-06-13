import 'package:flutter/material.dart';
import 'package:pos/models/dummay_list.dart';
import 'package:pos/utils/colors.dart';

Widget customDropDown(
    String hint, TextEditingController textEditingController) {
  // ignore: prefer_typing_uninitialized_variables
  var selectedValue;
  return Material(
    elevation: 15,
    shadowColor: AppColors.customtextFieldShadowColor,
    child: DropdownButtonFormField<String>(
      icon: const Icon(Icons.keyboard_arrow_down),
      hint: Text(
        hint,
        style: const TextStyle(
            fontFamily: 'roboto',
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: AppColors.customBlackColor),
      ),
      decoration: const InputDecoration(
        contentPadding: EdgeInsets.all(10),
        fillColor: AppColors.customWhiteColor,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
      ),
      value: selectedValue,
      items: optionList.map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (newValue) {
        selectedValue = newValue!;
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'please select';
        }
        return null;
      },
    ),
  );
}
