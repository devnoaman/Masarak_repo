import 'package:api_client/api_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:masarak_driver/pages/auth/controllers/forgot_password_controller.dart';
import 'package:masarak_driver/pages/auth/providers/login_provider.dart';
import 'package:masarak_driver/pages/auth/providers/otp_notifier_provider.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

enum ForgotPasswordState { phone, code, password }

// 3 minutes timer provider:

// loading provider
final isLoadingProvider = StateProvider<bool>((ref) {
  ref.watch(forgotPasswordProvider);
  return false;
});

final forgotPasswordProvider =
    StateNotifierProvider<ForgotPasswordNotifier, ForgotPasswordState>((ref) {
      return ForgotPasswordNotifier(ref);
    });

class ForgotPasswordNotifier extends StateNotifier<ForgotPasswordState> {
  final Ref ref;
  ForgotPasswordNotifier(this.ref) : super(ForgotPasswordState.phone);
  String phoneNumber = '';
  String code = '';
  String password = '';
  String confirmPassword = '';
  ValueNotifier<bool> remainLoggedIn = ValueNotifier(false);
  void setRemainLoggedIn(bool value) {
    remainLoggedIn.value = value;
  }

  void setPhoneNumber(String phone) {
    phoneNumber = phone;
  }

  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  ForgotPasswordController controller = ForgotPasswordController.instance;

  void setCode(String code) {
    this.code = code;
  }

  void setPassword(String password) {
    this.password = password;
  }

  void setConfirmPassword(String confirmPassword) {
    this.confirmPassword = confirmPassword;
  }

  void goToCodeStep() {
    ref.read(isLoadingProvider.notifier).state = true;
    sendOtp().then((value) {
      ref.read(isLoadingProvider.notifier).state = false;
      switch (value) {
        case Success():
          state = ForgotPasswordState.code;
          break;

        case Failed():
          showError('حدث خطأ ما، يرجى المحاولة مرة أخرى');
      }
    });
  }

  void resendOtp() {
    ref.read(isLoadingProvider.notifier).state = true;
    sendOtp().then((value) {
      ref.read(isLoadingProvider.notifier).state = false;
      switch (value) {
        case Success():
          break;

        case Failed():
          showError('حدث خطأ ما، يرجى المحاولة مرة أخرى');
      }
    });
  }

  Future<ResponseState> sendOtp() {
    ref.read(otpTimerProvider.notifier).start();
    return ForgotPasswordController.sendOtp(phoneNumber);
  }

  void goToPasswordStep() {
    state = ForgotPasswordState.password;
  }

  Future<void> resetPassword() async {
    ForgotPasswordController.setNewPassword(phoneNumber, code, password).then((
      value,
    ) {
      // var scaffoldKey = ref.read(driverAppCtxProvider);

      switch (value) {
        case Success():
          if (remainLoggedIn.value &&
              phoneNumber.isNotEmpty &&
              password.isNotEmpty &&
              scaffoldKey.currentState != null &&
              scaffoldKey.currentState!.context.mounted) {
            ref
                .read(loginProvider.notifier)
                .login(
                  phoneNumber,
                  password,
                  scaffoldKey.currentState!.context,
                );
          }
          break;

        case Failed():
      }
    });
  }

  // reset to initial state
  void reset() {
    state = ForgotPasswordState.phone;
    phoneNumber = '';
    code = '';
    password = '';
    confirmPassword = '';
    remainLoggedIn.value = false;
    ref.read(otpTimerProvider.notifier).reset();
  }

  // show error top snackbar
  void showError(String message) {
    // var scaffoldKey = ref.read(driverAppCtxProvider);
    if (scaffoldKey.currentState != null &&
        scaffoldKey.currentState!.context.mounted) {
      showTopSnackBar(
        Overlay.of(scaffoldKey.currentState!.context),
        CustomSnackBar.error(message: message),
      );
    }
  }
}
