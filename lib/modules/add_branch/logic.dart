import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'state.dart';

class AddBranchLogic extends GetxController {
  final AddBranchState state = AddBranchState();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  get formKey => _formKey;
  void addBranch() {
    if (!formKey.currentState!.validate()) {
      return;
    }
  }
}
