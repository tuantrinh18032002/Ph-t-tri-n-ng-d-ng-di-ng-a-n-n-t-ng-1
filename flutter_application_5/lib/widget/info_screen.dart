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
      appBar: AppBar(title: const Text('Product Information')),
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
              'Nhấn vào biểu tượng để xem chuyển tiếp .',
            ),
          ),
          InfoTile(title: 'San Pham', content: 'Flutter Product'),
          InfoTile(title: 'Mieu ta', content: 'A sample Flutter product.'),
          InfoTile(title: 'Gia', content: '\$19.99'),
        ],
      ),
    );
  }

  void _gotoDetailsPage(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute<void>(
      builder: (BuildContext context) => const InfoDetailsScreen(productDetails: 'chon dich vu ban muon',),
    ));
  }
}
