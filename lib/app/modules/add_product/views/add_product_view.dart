import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:test_cli/app/modules/products/controllers/products_controller.dart';

import '../controllers/add_product_controller.dart';

class AddProductView extends GetView<AddProductController> {
  AddProductView({super.key});
  final productC = Get.find<ProductsController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('AddProductView'),
          centerTitle: true,
        ),
        body: ListView(
          padding: EdgeInsets.all(20),
          children: [
            TextField(
              controller: controller.nameC,
              decoration: InputDecoration(
                labelText: "Product Name",
              ),
            ),
            TextField(
              controller: controller.priceC,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Price",
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () => productC.addProduct(
                controller.nameC.text,
                controller.priceC.text,
              ),
              child: Text("Add Product"),
            ),
          ],
        ));
  }
}
