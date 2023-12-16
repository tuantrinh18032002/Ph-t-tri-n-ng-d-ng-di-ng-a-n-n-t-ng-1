// TODO Implement this library.
import 'package:flutter/material.dart';
import 'package:flutter_application_5/widget/cart_data.dart';
// ignore: unused_import
import 'cart_product.dart'; // Thêm dòng này
class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Cart'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: cartProducts.isEmpty
            ? const [Center(child: Text('Giỏ hàng trống'))]
            : [
                ListView.builder(
                  itemCount: cartProducts.length,
                  itemBuilder: (context, index) {
                    final product = cartProducts[index];
                    return ListTile(
                      title: Text(product.productName),
                      subtitle: Text('Price: ${product.price}'),
                      // Thêm các thuộc tính khác của sản phẩm nếu cần
                    );
                  },
                ),
              ],
      ),
    );
  }
}
