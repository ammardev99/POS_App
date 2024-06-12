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


  // var selectedBranch;
  // List<String> branches = [
  //   'Branch 1',
  //   'Branch 2',
  //   'Branch 3'
  // ]; // Your branch list


          // Container(
          //   decoration: const BoxDecoration(
          //     boxShadow: [
          //       BoxShadow(
          //         color: Color.fromARGB(5, 0, 0, 0),
          //         spreadRadius: 1,
          //         blurRadius: 3,
          //         offset: Offset(0, 2),
          //       ),
          //     ],
          //   ),
          //   child: DropdownButtonFormField<String>(
          //     icon: const Icon(Icons.keyboard_arrow_down),
          //     decoration: const InputDecoration(
          //       contentPadding: EdgeInsets.all(10),
          //       fillColor: AppColors.customWhiteColor,
          //       filled: true,
          //       enabledBorder: OutlineInputBorder(
          //         borderSide: BorderSide(color: Colors.transparent),
          //         borderRadius: BorderRadius.all(Radius.circular(20)),
          //       ),
          //       focusedBorder: OutlineInputBorder(
          //         borderSide: BorderSide(color: Colors.transparent),
          //         borderRadius: BorderRadius.all(Radius.circular(20)),
          //       ),
          //       border: OutlineInputBorder(
          //         borderSide: BorderSide(color: Colors.transparent),
          //         borderRadius: BorderRadius.all(Radius.circular(20)),
          //       ),
          //     ),
          //     value: selectedBranch,
          //     items: branches.map((String branch) {
          //       return DropdownMenuItem<String>(
          //         value: branch,
          //         child: Text(branch),
          //       );
          //     }).toList(),
          //     onChanged: (newValue) {},
          //     validator: (value) {
          //       if (value == null || value.isEmpty) {
          //         return 'Branch name is required';
          //       }
          //       return null;
          //     },
          //   ),
          // ),
