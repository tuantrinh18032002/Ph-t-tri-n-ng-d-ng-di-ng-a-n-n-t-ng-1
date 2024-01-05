import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_application_5/main.dart';
import 'package:flutter_application_5/widget/BoxWidget.dart';
import 'package:flutter_application_5/widget/InfoDetailsScreen.dart';
import 'info_tile.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ứng dụng Flutter')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: 20.0),
          ListTile(
            leading: const Hero(
              tag: 'hero-rectangle',
              child: BoxWidget(size: Size(50.0, 50.0)),
            ),
            onTap: () => _gotoDetailsPage(context),
            title: const Text(
              'Chuyển đến trang thanh toán .',
            ),
          ),
          InfoTile(title: 'San Pham', content: 'Flutter Product'),
          InfoTile(title: 'Mieu ta', content: 'Flutter là một SDK phát triển ứng dụng di động nguồn mở được tạo ra bởi Google. Nó được sử dụng để phát triển ứng dụng cho Android và iOS, cũng là phương thức chính để tạo ứng dụng cho Google Fuchsia. Flutter được phát triển nhằm giải quyết bài toán thường gặp trong mobile là Fast Development và Native Performance.'),
          InfoTile(title: 'Gia', content: '\$19.99'),
        ],
      ),
    );
  }

  void _gotoDetailsPage(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute<void>(
      builder: (BuildContext context) => const InfoDetailsScreen(productDetails: 'Flutter',),
    ));
  }
}
