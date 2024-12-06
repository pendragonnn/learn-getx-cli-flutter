import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ProductItem extends GetView {
  const ProductItem({
    Key? key,
    required this.data,
  }) : super(key: key);

  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        data["name"],
      ),
      subtitle: Text(
        "Rp ${data['price']}",
      ),
    );
  }
}
