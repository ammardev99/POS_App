import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/modules/add_branch/view.dart';
import 'package:pos/modules/add_kitchen/view.dart';
import 'package:pos/modules/edit_branch.dart';
import 'package:pos/modules/edit_customer.dart';
import 'package:pos/modules/edit_kitchen.dart';
import 'package:pos/modules/edit_staff.dart';
import 'package:pos/modules/edit_table.dart';
import 'package:pos/modules/product_variations.dart';
import 'package:pos/widgets/custom_formatting.dart';
import 'package:pos/widgets/custom_orange_theme_color_button.dart';

class POSApp extends StatefulWidget {
  const POSApp({super.key});

  @override
  State<POSApp> createState() => _POSAppState();
}

class _POSAppState extends State<POSApp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                sizeBox(10),
                CustomOrangeThemeColorButton(
                  title: "Open Branch Page",
                  onTap: () => Get.to(AddBranchPage()),
                ),
                sizeBox(10),
                CustomOrangeThemeColorButton(
                  title: "Open Kitchen Page",
                  onTap: () => Get.to(AddKitchenPage()),
                ),
                sizeBox(10),
                TextButton(
                    onPressed: () => editCustomerDialog(),
                    child: const Text('Edit Customer')),
                sizeBox(10),
                TextButton(
                    onPressed: () => editTableDialog(),
                    child: const Text('Edit Table')),
                sizeBox(10),
                TextButton(
                    onPressed: () => editBranchDialog(),
                    child: const Text('Edit Branch')),
                sizeBox(10),
                TextButton(
                    onPressed: () => editStaffDialog(),
                    child: const Text('Edit Staff')),
                sizeBox(10),
                TextButton(
                    onPressed: () => editKitchenDialog(),
                    child: const Text('Edit Kitchen')),
                sizeBox(10),
                TextButton(
                    onPressed: () => productVariationDialog(),
                    child: const Text('Product Variations')),
                sizeBox(10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
