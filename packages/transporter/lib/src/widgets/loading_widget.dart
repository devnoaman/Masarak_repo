import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared/shared.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingWidget extends HookConsumerWidget {
  const LoadingWidget({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      // height: context.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SpinKitFadingCube(color: context.theme.primaryColor),
          24.hGap,
          Text(
            'جاري تحميل البيانات',
            style: context.textTheme.bodyLarge!.copyWith(
              fontWeight: FontWeight.w900,
              color: context.theme.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
