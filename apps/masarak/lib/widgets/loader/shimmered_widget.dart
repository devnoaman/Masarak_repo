import 'package:flutter/material.dart';
import 'package:masarak/extentions.dart';

class ShimmeredSpace extends StatelessWidget {
  const ShimmeredSpace({
    super.key,
    required this.width,
    required this.height,
    this.child,
  });
  final double width;
  final double height;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: 4.allPadding,
      decoration: BoxDecoration(
        color: child != null ? Colors.grey.withOpacity(.1) : Colors.white,
        borderRadius: BorderRadius.circular(
          12,
        ),
      ),
      width: child != null ? null : width,
      height: child != null ? null : height,
      child: child,
    );
  }
}
