import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:lottie/lottie.dart';
import 'package:masarak/extentions.dart';

class MyAlertDialog extends StatelessWidget {
  const MyAlertDialog({
    super.key,
    required this.title,
    this.subTitle,
    this.icon,
  });
  factory MyAlertDialog.success() => MyAlertDialog(
        title: 'تم تأكيد مرور الشاحنة',
        icon: Lottie.asset(
          'assets/lottie/success.json',
          width: 85,
        ),
      );
  factory MyAlertDialog.loading() => MyAlertDialog(
        title: 'يتم تأكيد مرور الشاحنة',
        subTitle: 'يرجى الانتظار',
      );
  static showSuccess(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (ctx) => MyAlertDialog.success().animate().scale(),
    );
  }

  static showLoading(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (ctx) => MyAlertDialog.loading().animate().scale(),
    );
  }

  final Widget? icon;
  final String title;
  final String? subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(
                    24.0,
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        icon ??
                            SpinKitWave(
                              itemBuilder: (BuildContext context, int index) {
                                return DecoratedBox(
                                  decoration: BoxDecoration(
                                    color: index.isEven
                                        ? context.theme.primaryColor
                                        : context.theme.colorScheme.secondary,
                                  ),
                                );
                              },
                            ),
                        16.hGap,
                        Text(
                          title,
                          style: context.textTheme.bodyLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        if (subTitle != null)
                          Text(
                            subTitle!,
                          ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
