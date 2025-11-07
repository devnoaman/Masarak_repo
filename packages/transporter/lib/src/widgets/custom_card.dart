import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CustomCard extends StatelessWidget {
  final Widget child;
  final Color? color;
  final EdgeInsetsGeometry? padding;

  const CustomCard({super.key, this.color, this.padding, required this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(8.0)),
        image: DecorationImage(
          image: AssetImage('assets/images/pattern.png'),
          fit: BoxFit.cover,
        ),
        color: color,
      ),
      child: Stack(
        children: [
          Positioned(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(child: Icon(Iconsax.flag)),
            ),
          ),
          Positioned.fill(
            child: Padding(
              padding: padding ?? const EdgeInsets.all(12.0),
              child: child,
            ),
          ),
        ],
      ),
    );
  }
}
