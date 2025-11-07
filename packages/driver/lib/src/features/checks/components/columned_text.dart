import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

class ColumnedText extends StatelessWidget {
  const ColumnedText({super.key, required this.title, required this.value});
  final String title;
  final String value;
  

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: context.textTheme.labelMedium!.copyWith(
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
        Text(
          value,
          style: context.textTheme.headlineSmall!.copyWith(
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
