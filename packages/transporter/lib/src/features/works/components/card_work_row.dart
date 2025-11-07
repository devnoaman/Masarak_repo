// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

class CardWorkRow extends StatelessWidget {
  const CardWorkRow({super.key, required this.title, required this.value});
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: 16.8.symetric,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text(title), Text(value)],
      ),
    );
  }
}
