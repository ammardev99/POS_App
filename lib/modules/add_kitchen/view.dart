import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/utils/colors.dart';
import 'package:pos/widgets/appbar.dart';
import 'package:pos/widgets/custom_formatting.dart';
import 'package:pos/widgets/custom_orange_theme_color_button.dart';
import 'package:pos/widgets/custom_profile_formfield.dart';

import 'logic.dart';

class AddKitchenPage extends StatelessWidget {
  AddKitchenPage({super.key});

  final logic = Get.put(AddKitchenLogic());
  final state = Get.find<AddKitchenLogic>().state;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.customWhiteColor,
      appBar: CustomAppBar(
          onLeadingPressed: () {
            Get.back();
          },
          title: 'Add Kitchen'),
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
// Name
                customInputFieldLabel("Kitchen"),
                CustomProfileFormfield(
                  helperText: "Kitchen Name Here",
                  textInputType: TextInputType.name,
                  textEditingController: state.kitchenNameController!,
                  validator: (value) {
                    if ((value ?? "").isEmpty) {
                      return 'kitchen name is required';
                    }
                    return null;
                  },
                ),
                sizeBox(10),
// Name
                customInputFieldLabel("Printer Name"),
                CustomProfileFormfield(
                  helperText: "Printer Name Here",
                  textInputType: TextInputType.name,
                  textEditingController: state.printerNameController!,
                  validator: (value) {
                    if ((value ?? "").isEmpty) {
                      return 'printer name is required';
                    }
                    return null;
                  },
                ),
                sizeBox(10),
// Name
                customInputFieldLabel("Branch"),
                CustomProfileFormfield(
                  helperText: "Branch Name Here",
                  textInputType: TextInputType.name,
                  textEditingController: state.branchController!,
                  validator: (value) {
                    if ((value ?? "").isEmpty) {
                      return 'branch name is required';
                    }
                    return null;
                  },
                ),
                sizeBox(10),
                sizeBox(20),
                CustomOrangeThemeColorButton(
                  title: "Add",
                  onTap: () {
                    logic.addKitchen();
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
