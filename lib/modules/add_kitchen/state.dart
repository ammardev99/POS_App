import 'package:flutter/material.dart';

class AddKitchenState {
  TextEditingController? kitchenNameController;
  TextEditingController? printerNameController;
  TextEditingController? branchController;

  AddKitchenState() {
    kitchenNameController = TextEditingController();
    printerNameController = TextEditingController();
    branchController = TextEditingController();
  }
}
