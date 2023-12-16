import 'package:flutter/material.dart';
import 'package:flutter_application_5/widget/info_screen.dart';
void main() => runApp(const InfoApp());

class InfoApp extends StatelessWidget {
  const InfoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: InfoScreen(),
    );
  }
}
