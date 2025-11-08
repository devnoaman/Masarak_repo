import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

class StatisticCard extends StatelessWidget {
  final String title;
  final String amount;
  final Icon icon;
  final Color color;

  const StatisticCard({
    Key? key,
    required this.title,
    required this.amount,
    required this.icon,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: 16.allPadding,
          width: context.width,
          height: 187,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  icon,
                  8.hGap,
                  Text(
                    title,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              24.hGap,
              Text(
                amount,
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  fontWeight: FontWeight.w400,
                  color: color,
                  fontSize: 40,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
