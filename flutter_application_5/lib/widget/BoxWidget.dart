import 'package:flutter/material.dart';

class BoxWidget extends StatelessWidget {
  const BoxWidget({Key? key, required this.size}) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height,
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage('asset/pngtree-flutter-logo-icon-png-image_6108134.png'), // Thay đổi thành đường dẫn hình ảnh của bạn
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
