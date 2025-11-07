import 'package:flutter/material.dart';
import 'package:masarak_driver/extentions.dart';

class ExpnsionTileChildren extends StatelessWidget {
  const ExpnsionTileChildren({
    super.key,
    required this.title,
    required this.trailing,
    this.leadingIcon,
    this.trailingIcon,
    this.onTrailingTab,
  });
  final String title;
  final String? trailing;
  final IconData? leadingIcon;
  final IconData? trailingIcon;
  final VoidCallback? onTrailingTab;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: 16.0.symetric,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (leadingIcon != null)
            CircleAvatar(
              child: Icon(
                leadingIcon,
                color: context.theme.primaryColor,

                // Colors.white
              ),
              backgroundColor: context.theme.primaryColor.withAlpha(20),
            ),
          if (leadingIcon != null) 8.wGap,
          Text(
            title, //'الدور في الساحة الاستباقية',
            textAlign: TextAlign.start,
            style: context.textTheme.bodyMedium!.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              // color: Colors.white,
            ),
          ),
          Spacer(),
          // driverInfo?.preGateQueueIndex != null
          // ?
          if (trailingIcon != null && trailing!.isNotEmpty)
            IconButton.filledTonal(
              icon: Icon(trailingIcon),
              onPressed: onTrailingTab,
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
                  context.theme.primaryColor.withAlpha(20),
                ),

                foregroundColor: WidgetStatePropertyAll(
                  onTrailingTab == null
                      ? Colors.grey
                      : context.theme.primaryColor,
                ),
              ),
            ),
          Text(
            trailing ?? 'لم يتم تعينه بعد',
            style: Theme.of(
              context,
            ).textTheme.bodyLarge!.copyWith(color: Colors.white),
          ),

          // : SizedBox(),
        ],
      ),
    );
  }
}
