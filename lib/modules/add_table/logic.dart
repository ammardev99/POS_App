import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'state.dart';

class AddTableLogic extends GetxController {
  final AddTableState state = AddTableState();
      final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  get formKey => _formKey;
  void addTable() {
    if (!formKey.currentState!.validate()) {
      return;
    }
  }

}
