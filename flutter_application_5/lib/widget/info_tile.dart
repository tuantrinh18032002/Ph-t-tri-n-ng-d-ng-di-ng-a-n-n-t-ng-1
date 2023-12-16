import 'package:flutter/material.dart';

class InfoTile extends StatelessWidget {
  const InfoTile({Key? key, required this.title, required this.content}) : super(key: key);

  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(content),
    );
  }
}
