import 'package:flutter/material.dart';

class AddKitchenState {
  TextEditingController? kitchenNameController;
  TextEditingController? printerNameController;
  TextEditingController? branchController;
  List<String> branches = ['Branch 1', 'Branch 2', 'Branch 3'];
  String? selectedBranch;

  AddKitchenState() {
    kitchenNameController = TextEditingController();
    printerNameController = TextEditingController();
    branchController = TextEditingController();
  }
}
