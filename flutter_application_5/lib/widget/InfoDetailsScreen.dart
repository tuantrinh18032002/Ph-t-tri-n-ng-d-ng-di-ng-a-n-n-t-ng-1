import 'package:flutter/material.dart';
import 'package:flutter_application_5/widget/BoxWidget.dart';
import 'package:flutter_application_5/widget/checkscreen.dart';

class InfoDetailsScreen extends StatelessWidget {
  final String productDetails;

  const InfoDetailsScreen({Key? key, required this.productDetails}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Trang 2')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Hero(
              tag: 'hero-rectangle',
              child: BoxWidget(size: Size(200.0, 200.0)),
            ),
          ),
          const SizedBox(height: 20.0),
          Text(
            productDetails,
            style: TextStyle(fontSize: 16.0),
          ),
          const SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
               // Chuyển đến trang thanh toán khi nút "Mua ngay" được nhấn
    Navigator.of(context).push(MaterialPageRoute<void>(
      builder: (BuildContext context) => const CheckoutScreen(),
    ));
            },
            child: Text('Mua ngay'),
          ),
          const SizedBox(height: 10.0),
          TextButton(
            onPressed: () {
        
            },
            child: Text('Them vao gio hang'),
          ),
        ],
      ),
    );
  }
}
