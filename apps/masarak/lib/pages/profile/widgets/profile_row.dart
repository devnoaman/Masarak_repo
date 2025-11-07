// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:masarak/extentions.dart';

class ProfileRow extends StatelessWidget {
  const ProfileRow({
    super.key,
    required this.title,
    required this.value,
  });
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
          ),
          8.hGap,
          Container(
            decoration: BoxDecoration(
              borderRadius: 12.cRadius,
              color: context.theme.primaryColor.withOpacity(
                .1,
              ),
            ),
            constraints: BoxConstraints(
              minHeight: 55,
            ),
            // width: context.width,
            child: Center(
              child: Text(
                value,
              ),
            ),
          )
        ],
      ),
    );
  }
}
