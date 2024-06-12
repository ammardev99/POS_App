import 'package:flutter/material.dart';

class AddBranchState {
  TextEditingController? branchNameController;
  TextEditingController? branchNumberController;
  TextEditingController? branchEmailController;
  TextEditingController? branchCodeontroller;
  TextEditingController? branchManagerController;
  TextEditingController? branchAddressController;
  AddBranchState() {
    branchNameController = TextEditingController();
    branchNumberController = TextEditingController();
    branchEmailController = TextEditingController();
    branchCodeontroller = TextEditingController();
    branchManagerController = TextEditingController();
    branchAddressController = TextEditingController();
  }
}
