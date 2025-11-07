// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

class SectionRow extends StatelessWidget {
  const SectionRow({
    super.key,
    required this.title,
    required this.value,
  });
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: context.textTheme.bodyLarge!.copyWith(
            fontWeight: FontWeight.w900,
            color: context.theme.scaffoldBackgroundColor,
          ),
        ),
        Text(
          value,
          style: context.textTheme.bodyLarge!.copyWith(
            fontWeight: FontWeight.w900,
            color: context.theme.scaffoldBackgroundColor,
          ),
        ),
      ],
    );
  }
}
