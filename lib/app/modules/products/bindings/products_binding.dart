import 'package:get/get.dart';

import 'package:test_cli/app/modules/products/controllers/getclitest_controller.dart';

import '../controllers/products_controller.dart';

class ProductsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GetclitestController>(
      () => GetclitestController(),
    );
    Get.lazyPut<ProductsController>(
      () => ProductsController(),
    );
  }
}
