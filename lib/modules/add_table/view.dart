import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/utils/colors.dart';
import 'package:pos/widgets/appbar.dart';
import 'package:pos/widgets/custom_dropdown.dart';
import 'package:pos/widgets/custom_formatting.dart';
import 'package:pos/widgets/custom_orange_theme_color_button.dart';
import 'package:pos/widgets/custom_profile_formfield.dart';

import 'logic.dart';

class AddTablePage extends StatelessWidget {
  AddTablePage({super.key});

  final logic = Get.put(AddTableLogic());
  final state = Get.find<AddTableLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.customWhiteColor,
      appBar: CustomAppBar(
          onLeadingPressed: () {
            Get.back();
          },
          title: 'Add Table'),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Form(
            key: logic.formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                sizeBox(10),
// Number
                customInputFieldLabel("Table No"),
                CustomProfileFormfield(
                  helperText: "00",
                  textInputType: TextInputType.number,
                  textEditingController: state.tableNoController!,
                  validator: (value) {
                    if ((value ?? "").isEmpty) {
                      return 'no is required';
                    }
                    return null;
                  },
                ),
                sizeBox(10),
// Number
                customInputFieldLabel("Capacity"),
                CustomProfileFormfield(
                  helperText: "00",
                  textInputType: TextInputType.number,
                  textEditingController: state.tableCapacityController!,
                  validator: (value) {
                    if ((value ?? "").isEmpty) {
                      return 'capacity is required';
                    }
                    return null;
                  },
                ),
                sizeBox(10),

// Name
                customInputFieldLabel("Table Floor"),
                CustomProfileFormfield(
                  helperText: "Floor Name Here",
                  textInputType: TextInputType.name,
                  textEditingController: state.tableFloorController!,
                  validator: (value) {
                    if ((value ?? "").isEmpty) {
                      return 'floor name is required';
                    }
                    return null;
                  },
                ),
                sizeBox(10),
// Name
                customInputFieldLabel("Branch"),
                customDropDown('Select Branch',state.tableFloorController!),
                sizeBox(10),
                sizeBox(20),
                CustomOrangeThemeColorButton(
                  title: "Add",
                  onTap: () {
                    logic.addTable();
                  },
                ),
                sizeBox(20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
