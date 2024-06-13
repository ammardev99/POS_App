import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/utils/colors.dart';
import 'package:pos/widgets/appbar.dart';
import 'package:pos/widgets/custom_formatting.dart';

import 'logic.dart';

class BranchInformationPage extends StatelessWidget {
  BranchInformationPage({super.key});

  final logic = Get.put(BranchInformationLogic());
  final state = Get.find<BranchInformationLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.customWhiteColor,
      appBar: CustomAppBar(
          onLeadingPressed: () {
            Get.back();
          },
          title: 'Branch Information'),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Material(
            elevation: 15,
            shadowColor: AppColors.customItemContainerShadowColor,
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: AppColors.customWhiteColor,
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  dialogTitle('Details'),
                  const Divider(),
                  Table(
                    children: [
                      tableRow('Branch ID', '1203451'),
                      tableRow('Branch Name', 'Name'),
                      tableRow('Branch Phone', '+912 454613231'),
                      tableRow('Branch Email', 'john.dive@mail.com'),
                      tableRow('Branch Address', 'Address City, Country'),
                      tableRow('Branch Manager', 'Name'),
                    ],
                  ),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      dialogTitle('Details'),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.edit,
                                color: AppColors.customThemeColor,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.delete,
                                color: AppColors.customThemeColor,
                              )),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

TableRow tableRow(String label, String value) {
  return TableRow(children: [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        label,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(value),
    ),
  ]);
}
