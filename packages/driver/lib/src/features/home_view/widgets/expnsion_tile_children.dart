import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

class ExpnsionTileChildren extends StatelessWidget {
  const ExpnsionTileChildren({
    super.key,
    required this.title,
    required this.trailing,
    this.trailingIcon,
    this.onTrailingTab,
  });
  final String title;
  final String? trailing;
  final IconData? trailingIcon;
  final VoidCallback? onTrailingTab;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: 16.0.symetric,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            textAlign: TextAlign.start,
            style: context.textTheme.bodyMedium!.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          //Spacer(),
          // driverInfo?.preGateQueueIndex != null
          // ?
          Row(
            children: [
              Expanded(
                child: Text(
                  (trailing != null && trailing!.isNotEmpty)
                      ? trailing!
                      : 'لم يتم تعينه بعد',
                  style: Theme.of(
                    context,
                  ).textTheme.bodyLarge!.copyWith(color: Colors.black),
                ),
              ),
              Spacer(),
              if (trailingIcon != null)
                IconButton.filledTonal(
                  icon: Icon(trailingIcon),
                  onPressed: onTrailingTab,
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                      context.theme.primaryColor.withAlpha(20),
                    ),
                    foregroundColor: WidgetStatePropertyAll(
                      onTrailingTab == null ? Colors.grey : Colors.black,
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
