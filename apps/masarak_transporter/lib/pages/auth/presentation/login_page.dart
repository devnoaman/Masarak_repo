import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:masarak_transporter/extentions.dart' hide NumDurationExtensions;
import 'package:masarak_transporter/pages/auth/providers/login_provider.dart';
import 'package:masarak_transporter/responsive.dart';

class LoginPage extends HookConsumerWidget {
  const LoginPage({super.key});
  static const String route = '/login';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(loginProvider);
    final notifier = ref.read(loginProvider.notifier);
    final userName = useTextEditingController();
    final password = useTextEditingController();
    final securePassword = useState(true);
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [const Color(0xffF5EFFF), const Color(0xff6691e7)],
                ),
              ),
            ),
          ),
          Center(
            child: SizedBox(
              width: Responsive.mobileThreshold,
              child: Padding(
                padding: 16.8.allPadding,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(
                        'assets/svg/masark.svg',
                      ).animate(delay: 500.milliseconds).fade().slideY(),
                      Text(
                        'اهلا بك في مسارك',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ).animate(delay: 500.milliseconds).fade().slideY(),
                      24.hGap,
                      Card(
                        color: Colors.white,
                        child: Padding(
                          padding: 16.8.allPadding,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                " قم بتسجيل الدخول إلى حسابك على مسارك ",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              24.hGap,
                              Row(
                                    children: [
                                      Text(
                                        'البريد الالكتروني',
                                        textAlign: TextAlign.start,
                                      ),
                                    ],
                                  )
                                  .animate(delay: 500.milliseconds)
                                  .fade()
                                  .slideY(),
                              8.hGap,
                              TextFormField(
                                controller: userName,
                                decoration: InputDecoration(
                                  hintText:
                                      'ادخل اسم المستخدم او البريد الالكتروني',
                                  // suffixIcon: Icon(
                                  //   Iconsax.message,
                                  // ),
                                  prefixIcon: Icon(Iconsax.message),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                              ).animate(delay: 500.milliseconds).fade(),
                              8.hGap,
                              Row(
                                    children: [
                                      Text(
                                        'كلمة المرور',
                                        textAlign: TextAlign.start,
                                      ),
                                    ],
                                  )
                                  .animate(delay: 500.milliseconds)
                                  .fade()
                                  .slideY(),
                              8.hGap,
                              TextFormField(
                                controller: password,
                                obscureText: securePassword.value,
                                decoration: InputDecoration(
                                  hintText: 'ادخل كلمة المرور',
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      securePassword.value =
                                          !securePassword.value;
                                    },
                                    icon: Icon(
                                      securePassword.value
                                          ? Iconsax.eye_slash
                                          : Iconsax.eye,
                                    ),
                                  ),
                                  prefixIcon: Icon(Iconsax.lock),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                              ).animate(delay: 500.milliseconds).fade(),
                              16.hGap,
                              RawMaterialButton(
                                fillColor: const Color(0xff13c56b),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                onPressed: state
                                    ? null
                                    : () => notifier.login(
                                        userName.text,
                                        password.text,
                                        context,
                                      ),
                                child: SizedBox(
                                  width: context.width,
                                  height: 45,
                                  child: Center(
                                    child: state
                                        ? Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CircularProgressIndicator.adaptive(),
                                              8.wGap,
                                              Text('جاري تسجيل الدخول'),
                                            ],
                                          )
                                        : Text('تسجيل الدخول'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ).animate(delay: 500.milliseconds).scaleY().fade(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
