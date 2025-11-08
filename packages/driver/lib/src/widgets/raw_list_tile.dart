// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared/shared.dart';

class RawListTile extends HookConsumerWidget {
  const RawListTile({
    super.key,
    this.padding = EdgeInsets.zero,
    required this.title,
    this.subTitle,
    this.action,
  });

  final EdgeInsetsGeometry padding;
  final String title;
  final String? subTitle;
  final Widget? action;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: context.textTheme.labelLarge,
          ),
          Row(
            children: [
              if (subTitle != null)
                Expanded(
                  child: Text(
                    subTitle!,
                    style: context.textTheme.headlineLarge,
                  ),
                ),
              SizedBox(
                child: action,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
