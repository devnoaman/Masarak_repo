import 'package:flutter/material.dart';

class MenuModel {
  String? svgIcon;
  IconData? icon;
  String title;
  MenuModel({
    this.icon,
    this.svgIcon,
    required this.title,
  }) : assert((icon != null || svgIcon != null),
            'you must parse either [icon] or [svgIcon]');
}
