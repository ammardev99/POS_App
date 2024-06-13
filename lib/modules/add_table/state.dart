import 'package:flutter/material.dart';

class AddTableState {
  TextEditingController? tableNoController;
  TextEditingController? tableCapacityController;
  TextEditingController? tableFloorController;
  TextEditingController? branchController;

  AddTableState() {
    tableNoController = TextEditingController();
    tableCapacityController = TextEditingController();
    tableFloorController = TextEditingController();
    branchController = TextEditingController();
  }
}
