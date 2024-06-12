import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'state.dart';

class AddKitchenLogic extends GetxController {
  final AddKitchenState state = AddKitchenState();
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  get formKey => _formKey;
  void addKitchen() {
    if (!formKey.currentState!.validate()) {
      return;
    }
  }

}
