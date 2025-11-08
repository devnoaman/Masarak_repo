import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:masarak_driver/pages/auth/providers/forgot_password_provider.dart';
import 'package:masarak_driver/pages/auth/providers/otp_notifier_provider.dart';
import 'package:pinput/pinput.dart';
import 'package:shared/shared.dart';

class EnterOtpStep extends HookConsumerWidget {
  const EnterOtpStep({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final phone = useTextEditingController();
    var notifier = ref.watch(forgotPasswordProvider.notifier);
    // var notifier = ref.watch(forgotPasswordProvider.notifier);
    // 1. Watch the timer provider
    final remainingSeconds = ref.watch(otpTimerProvider);

    // 2. Determine if the button should be enabled
    final bool canResend = remainingSeconds == 0;
    return Column(
      // ishadDivider: false,
      // mainAxisSize: MainAxisSize.min,
      children: [
        Align(
          alignment: Alignment.center,

          child: Text(
            'ادخل رمز التحقق',
            textAlign: TextAlign.center,
            style: context.textTheme.headlineMedium!.copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,

          child: Text('من فضلك ادخل رمز التحقق المرسل الى رقم هاتفك'),
        ),
        16.hGap,

        Directionality(
          textDirection: TextDirection.ltr,
          child: Pinput(
            length: 6,
            autofocus: true,
            onChanged: (value) {
              notifier.setCode(value);
            },
            defaultPinTheme: PinTheme(
              width: 50,
              height: 65,
              textStyle: context.textTheme.headlineLarge!,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.grey.shade300),
              ),
            ),
          ),
        ),

        if (!canResend) 16.hGap,
        if (!canResend)
          Text(
            'يمكنك اعادة ارسال الرمز بعد $remainingSeconds ثانية',
            style: context.textTheme.bodySmall?.copyWith(
              color: context.theme.disabledColor,
            ),
          ),
        Align(
          alignment: Alignment.center,
          child: TextButton(
            style: ButtonStyle(
              foregroundColor: WidgetStateProperty.all(
                canResend
                    ? context.theme.primaryColor
                    : context.theme.disabledColor,
              ),
            ),
            onPressed: !canResend
                ? null
                : () {
                    notifier.resendOtp();
                  },
            child: Text(
              'اعادة ارسال الرمز',
              // style: TextStyle(color: context.theme.primaryColor),
            ),
          ),
        ),
      ],
    );
  }
}
