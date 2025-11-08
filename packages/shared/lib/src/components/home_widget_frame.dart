import 'package:flutter/material.dart';

class HomeWidgetFrame extends StatelessWidget {
  factory HomeWidgetFrame.shrink({
    required List<Widget> children,
    bool ishasBackground = false,
    bool ishadDivider = true,
  }) => HomeWidgetFrame(
    padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 12),
    ishadDivider: ishadDivider,
    ishasBackground: ishasBackground,
    children: children,
  );

  const HomeWidgetFrame({
    super.key,

    this.spacing = 12.0,
    this.padding = const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
    required this.children,
    this.ishadDivider = false,
    this.ishasBackground = false,
  });

  final double spacing;
  final List<Widget> children;
  final EdgeInsetsGeometry padding;
  final bool ishadDivider;
  final bool? ishasBackground;

  @override
  Widget build(BuildContext context) {
    final List<Widget> content = <Widget>[...children];

    if (ishadDivider) {
      content.insert(0, const Divider(height: 1));
    }

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
      ),
      child: ConstrainedBox(
        constraints: const BoxConstraints(minWidth: double.infinity),
        child: Padding(
          padding: padding,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: spacing,
            children: content,
          ),
        ),
      ),
    );
  }
}
