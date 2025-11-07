import 'package:flutter/material.dart';

class HomeWidgetFrame extends StatelessWidget {
  factory HomeWidgetFrame.shrink({required List<Widget> children}) =>
      HomeWidgetFrame(
        padding: const EdgeInsets.symmetric(
          horizontal: 0,
          vertical: 12,
        ),
        ishadDivider: true,
        children: children,
      );

  const HomeWidgetFrame({
    super.key,

    this.spacing = 12.0,
    this.padding = const EdgeInsets.symmetric(
      horizontal: 16,
      vertical: 24,
    ),
    required this.children,
    this.ishadDivider = false,
  });

  final double spacing;
  final List<Widget> children;
  final EdgeInsetsGeometry padding;
  final bool ishadDivider;

  @override
  Widget build(BuildContext context) {
    final List<Widget> content = <Widget>[...children];

    if (ishadDivider) {
      content.insert(0, const Divider(height: 1));
    }

    return Padding(
      padding: padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: spacing,
        children: content,
      ),
    );
  }
}
