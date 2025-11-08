// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

class OperationTile extends StatelessWidget {
  const OperationTile({
    super.key,
    required this.title,
    required this.onTilePress,
    required this.icon,
    this.color,
  });

  final String title;
  final VoidCallback onTilePress;
  final IconData icon;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTilePress,
      // tileColor:
      //     color?.withAlpha(20) ?? context.theme.primaryColor.withAlpha(20),
      // shape: RoundedRectangleBorder(
      //   borderRadius: BorderRadiusGeometry.circular(
      //     12,
      //   ),
      //   side: BorderSide(
      //     color: color ?? context.theme.primaryColor,
      //   ),
      // ),
      // contentPadding: EdgeInsets.all(8),
      // leading: Container(
      //   width: 45,
      //   height: 45,
      //   decoration: BoxDecoration(
      //     // shape: BoxShape.circle,
      //     borderRadius: BorderRadius.circular(12),
      //     color: Colors.white.withAlpha(20),
      //   ),
      //   child: Center(
      //     child: Icon(
      //       icon,
      //       color: color ?? context.theme.primaryColor,
      //     ),
      //   ),
      // ),
      title: Center(
        child: Text(
          title,
          style: context.textTheme.bodyLarge!.copyWith(
            fontWeight: FontWeight.w900,
            color: color ?? Colors.white,
          ),
        ),
      ),

      // trailing: Icon(
      //   Icons.arrow_forward_ios,
      //   color: Colors.white,
      // ),
    );
  }
}
