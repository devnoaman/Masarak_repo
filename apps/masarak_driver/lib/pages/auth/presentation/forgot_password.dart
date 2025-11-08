import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:masarak_driver/pages/auth/components/forgot_password_steps/enter_otp.dart';
import 'package:masarak_driver/pages/auth/components/forgot_password_steps/new_password_step.dart';
import 'package:masarak_driver/pages/auth/components/forgot_password_steps/phone_type_step.dart';
import 'package:masarak_driver/pages/auth/providers/forgot_password_provider.dart';
import 'package:shared/shared.dart';

class ForgotPassword extends HookConsumerWidget {
  const ForgotPassword({super.key});
  static const String route = '/forgot-password';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var isLoading = ref.watch(isLoadingProvider);
    var state = ref.watch(forgotPasswordProvider);
    var notifier = ref.watch(forgotPasswordProvider.notifier);
    return PopScope(
      onPopInvokedWithResult: (didPop, result) {
        notifier.reset();
      },
      child: Scaffold(
        key: notifier.scaffoldKey,
        appBar: AppBar(),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
              ),
              child: AnimatedSize(
                duration: Duration(milliseconds: 300),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: switch (state) {
                          ForgotPasswordState.phone => PhoneTypeStep(),
                          ForgotPasswordState.code => EnterOtpStep(),
                          ForgotPasswordState.password => NewPasswordStep(),
                        },
                      ),
                      // PhoneTypeStep(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          elevation: 0,

                          color: context.theme.primaryColor,
                          onPressed: () {
                            switch (state) {
                              case ForgotPasswordState.phone:
                                notifier.goToCodeStep();
                                break;
                              case ForgotPasswordState.code:
                                notifier.goToPasswordStep();
                                break;
                              case ForgotPasswordState.password:
                                notifier.resetPassword();
                                // submit
                                break;
                            }
                          },
                          child: SizedBox(
                            width: context.width,
                            height: 50,
                            child: Center(
                              child: Text(
                                switch (state) {
                                  ForgotPasswordState.phone => 'ارسال الرمز',
                                  ForgotPasswordState.code => 'التالي',
                                  ForgotPasswordState.password =>
                                    'تغيير كلمة المرور',
                                },
                                style: context.textTheme.labelLarge!.copyWith(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
