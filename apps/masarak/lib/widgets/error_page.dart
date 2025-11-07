import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:masarak/extentions.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({
    super.key,
    this.actions,
  });
  final List<Widget>? actions;

  // final TextEditingController cnt;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.width,
      child: Column(
        children: [
          Lottie.network(
              'https://lottie.host/86b73cb4-f0e3-4b7e-8dac-7dab7bd4641e/jYee89s3Hv.json',
              repeat: false,
              alignment: Alignment.center),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'حدث خطأ غير معلوم ، يرجى ااعادة المحاولة',
              textAlign: TextAlign.center,
              style: context.textTheme.bodyLarge!.copyWith(),
            ),
          ),
          ...?actions?.map((e) => e)
        ],
      ),
    );
  }
}
