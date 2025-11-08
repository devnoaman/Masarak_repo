import 'package:api_client/api_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:masarak_driver/network/api/endpoints.dart';
import 'package:masarak_driver/pages/auth/components/validation.dart';
import 'package:masarak_driver/pages/auth/presentation/forgot_password.dart';
import 'package:masarak_driver/pages/auth/providers/login_provider.dart';
import 'package:masarak_driver/extentions.dart' hide NumDurationExtensions;
import 'package:masarak_driver/pages/auth/providers/package_info_provider.dart';
import 'package:masarak_driver/responsive.dart';
import 'package:shared/src/models/global_state/global_state.dart';

class LoginPage extends HookConsumerWidget {
  const LoginPage({super.key});
  static const String route = '/login';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _formkey = useMemoized(() => GlobalKey<FormState>());
    // var kkey = GlobalKey<FormState>();
    final loginState = ref.watch(loginProvider);
    final packageInfo = ref.watch(packageInfoProvider);
    final notifier = ref.read(loginProvider.notifier);
    final userName = useTextEditingController();
    final password = useTextEditingController();
    final securePassword = useState(true);

    return Scaffold(
      backgroundColor: Color(0xff2F2F7F),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: 16.allPadding,
          child: Form(
            key: _formkey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              // mainAxisSize: MainAxisSize.min,
              children: [
                Spacer(),
                SvgPicture.asset(
                  'assets/svg/mobile-logo.svg',
                  width: context.width,
                ).animate(delay: 500.milliseconds).fade().slideY(),
                Text(
                  'اهلا بك في مسارك',
                  style: context.textTheme.headlineSmall!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ).animate(delay: 500.milliseconds).fade().slideY(),
                24.hGap,
                Padding(
                  padding: EdgeInsets.only(
                    bottom: MediaQuery.viewInsetsOf(context).bottom,
                  ),
                  child: Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(20),
                    ),
                    child: Padding(
                      padding: 16.8.allPadding,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            " قم بتسجيل الدخول إلى\n حسابك على مسارك ",
                            textAlign: TextAlign.center,
                            style: context.textTheme.headlineSmall!.copyWith(
                              // fontWeight: FontWeight.bold,
                            ),
                          ),
                          24.hGap,
                          Row(
                            children: [
                              Text(
                                'رقم الهاتف',
                                textAlign: TextAlign.start,
                                style: context.textTheme.headlineSmall!
                                    .copyWith(
                                      // fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ],
                          ).animate(delay: 500.milliseconds).fade().slideY(),
                          16.hGap,
                          TextFormField(
                            keyboardType: TextInputType.numberWithOptions(),
                            controller: userName,

                            validator: (value) =>
                                Validation.validatePhoneNumber(value),

                            decoration: InputDecoration(
                              hintText: 'ادخل رقم الهاتف',
                              constraints: BoxConstraints(
                                minHeight: 55,
                                // maxHeight: 55,
                              ),
                              // suffixIcon: Icon(
                              //   Iconsax.message,
                              // ),
                              prefixIcon: Icon(Iconsax.call),
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ).animate(delay: 500.milliseconds).fade(),
                          16.hGap,
                          Row(
                            children: [
                              Text(
                                'كلمة المرور',
                                textAlign: TextAlign.start,
                                style: context.textTheme.headlineSmall!
                                    .copyWith(
                                      // fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ],
                          ).animate(delay: 500.milliseconds).fade().slideY(),
                          16.hGap,
                          TextFormField(
                            controller: password,
                            obscureText: securePassword.value,
                            decoration: InputDecoration(
                              hintText: 'ادخل كلمة المرور',
                              constraints: BoxConstraints(
                                minHeight: 55,
                                maxHeight: 55,
                              ),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  securePassword.value = !securePassword.value;
                                },
                                icon: Icon(
                                  securePassword.value
                                      ? Iconsax.eye_slash
                                      : Iconsax.eye,
                                ),
                              ),
                              prefixIcon: Icon(Iconsax.lock),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ).animate(delay: 500.milliseconds).fade(),

                          Align(
                            alignment: AlignmentDirectional.centerEnd,
                            child: TextButton(
                              onPressed: () {
                                context.push(ForgotPassword.route);
                              },

                              child: Text('هل نسيت كلمة المرور؟'),
                            ),
                          ),

                          // 36.hGap,
                          RawMaterialButton(
                            fillColor: const Color(0xff4EC2C1),
                            // constraints: BoxConstraints(
                            //   minHeight: 45,
                            //   maxHeight: 45,
                            // ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            onPressed: switch (loginState) {
                              Loading() => null,

                              _ => () {
                                if (_formkey.currentState != null &&
                                    _formkey.currentState!.validate()) {
                                  notifier.login(
                                    userName.text,
                                    password.text,
                                    context,
                                  );
                                }
                              },
                            },
                            child: ConstrainedBox(
                              constraints: BoxConstraints(
                                minHeight: 55,
                                maxHeight: 55,
                              ),
                              // width: context.width,
                              // height: 55,
                              child: Center(
                                child: switch (loginState) {
                                  Loading() => Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CircularProgressIndicator.adaptive(),
                                      8.wGap,
                                      Text(
                                        'جاري تسجيل الدخول',
                                        style: context.textTheme.headlineSmall!
                                            .copyWith(
                                              // fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ],
                                  ),

                                  Error() => Text(
                                    'اعادة تسجيل الدخول',
                                    // style: context.textTheme.bodyLarge!
                                    //     .copyWith(
                                    //       fontWeight: FontWeight.bold,
                                    //     ),
                                    style: context.textTheme.headlineSmall!
                                        .copyWith(
                                          // fontWeight: FontWeight.bold,
                                        ),
                                  ),

                                  _ => Text(
                                    'تسجيل الدخول',
                                    // style: context.textTheme.bodyLarge!
                                    //     .copyWith(
                                    //       fontWeight: FontWeight.bold,
                                    //     ),
                                    style: context.textTheme.headlineSmall!
                                        .copyWith(
                                          // fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ).animate(delay: 500.milliseconds).scaleY().fade(),
                ),
                packageInfo.when(
                  data: (data) {
                    var url = Endpoints.baseUrl.split('://').last[0];
                    return Text(
                      '$url-${data.version}+${data.buildNumber}',
                      style: context.textTheme.bodySmall!.copyWith(
                        color: Colors.white,
                      ),
                    ).animate(delay: 650.milliseconds).fade().slideY();
                  },
                  loading: () => SizedBox.shrink(),
                  error: (error, stackTrace) => SizedBox.shrink(),
                ),
                Spacer(),
                Row(
                  spacing: 16,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/gcpi.png',
                      height: context.width * .15,
                    ),
                    Image.asset(
                      'assets/images/gwy.png',
                      height: context.width * .15,
                    ),
                  ],
                ).animate(delay: 650.milliseconds).scaleY().fade(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
