import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/utils/colors.dart';
import 'package:pos/widgets/appbar.dart';
import 'package:pos/widgets/custom_formatting.dart';
import 'package:pos/widgets/custom_orange_theme_color_button.dart';
import 'package:pos/widgets/custom_profile_formfield.dart';

import 'logic.dart';

class AddBranchPage extends StatelessWidget {
  AddBranchPage({super.key});

  final logic = Get.put(AddBranchLogic());
  final state = Get.find<AddBranchLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.customWhiteColor,
      appBar: CustomAppBar(
          onLeadingPressed: () {
            Get.back();
          },
          title: 'Add Branch'),
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
                customInputFieldLabel("Branch Name"),
                CustomProfileFormfield(
                  helperText: "Full Name Here",
                  textInputType: TextInputType.name,
                  textEditingController: state.branchNameController!,
                  validator: (value) {
                    if ((value ?? "").isEmpty) {
                      return 'name is required';
                    }
                    return null;
                  },
                ),
                sizeBox(10),
// Number
                customInputFieldLabel("Branch Number"),
                CustomProfileFormfield(
                  helperText: "03001234567",
                  textInputType: TextInputType.phone,
                  textEditingController: state.branchNumberController!,
                  validator: (value) {
                    if ((value ?? "").isEmpty) {
                      return 'number is required';
                    }
                    if (!RegExp(r'^03\d{9}$').hasMatch(value!)) {
                      return 'number invalid';
                    }
                    return null;
                  },
                ),
                sizeBox(10),
// Email
                customInputFieldLabel("Branch Email"),
                CustomProfileFormfield(
                    helperText: "email@gmail.com",
                    textInputType: TextInputType.emailAddress,
                    textEditingController: state.branchEmailController!,
                    validator: (value) {
                      if ((value ?? "").isEmpty) {
                        return 'email is required';
                      } else if (!GetUtils.isEmail(value!)) {
                        return 'email invalid';
                      }
                      return null;
                    }),
                sizeBox(10),
// Branch Code
                customInputFieldLabel("Branch Code"),
                CustomProfileFormfield(
                    helperText: "Code Here",
                    textInputType: TextInputType.text,
                    textEditingController: state.branchCodeontroller!,
                    validator: (value) {
                      if ((value ?? "").isEmpty) {
                        return 'code is required';
                      }
                      if (!RegExp(r'^[a-zA-Z0-9]+$').hasMatch(value!)) {
                        return 'code invalid';
                      }
                      return null;
                    }),
                sizeBox(10),
// Manager Name
                customInputFieldLabel("Branch Manager"),
                CustomProfileFormfield(
                  helperText: "Manager Name Here",
                  textInputType: TextInputType.name,
                  textEditingController: state.branchManagerController!,
                  validator: (value) {
                    if ((value ?? "").isEmpty) {
                      return 'name is required';
                    }
                    return null;
                  },
                ),
                sizeBox(10),
// Address
                customInputFieldLabel("Branch Address"),
                CustomProfileFormfield(
                    helperText: "Address Here",
                    textInputType: TextInputType.streetAddress,
                    textEditingController: state.branchAddressController!,
                    validator: (value) {
                      if ((value ?? "").isEmpty) {
                        return 'address is required';
                      }
                      return null;
                    }),
                sizeBox(20),
                CustomOrangeThemeColorButton(
                  title: "Add",
                  onTap: () {
                    logic.addBranch();
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
