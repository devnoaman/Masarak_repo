import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:masarak/extentions.dart' hide NumDurationExtensions;
import 'package:masarak/pages/home/home_page.dart';
import 'package:masarak/pages/home/providers/check_token_provider.dart';
import 'package:masarak/pages/static_settings/presentation/static_settings_view.dart';
import 'package:masarak/responsive.dart';
import 'package:masarak/services/storage/storage.dart';

class LoginPage extends HookConsumerWidget {
  const LoginPage({super.key});
  static const String route = '/login';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final state = ref.watch(loginProvider);
    final state = ref.watch(checkTokenProvider);
    final notifier = ref.read(checkTokenProvider.notifier);
    // final notifier = ref.read(loginProvider.notifier);
    final userName = useTextEditingController();
    final password = useTextEditingController();
    // final api = useTextEditingController();
    // final secret = useTextEditingController();
    final securePassword = useState(true);
    final showErrorButton = useState(false);
    final errorMessage = useState<String?>('');
    storage.registerListener(
      key: 'error',
      listener: (value) {
        showErrorButton.value = value?.isNotEmpty ?? false;
        errorMessage.value = value;
      },
    );
    // final showApi = useState(true);
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    const Color(0xffF5EFFF),
                    const Color(0xff6691e7),
                  ],
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
                      GestureDetector(
                        onLongPress: () {
                          print('long press handle');
                          showDialog(
                              context: context,
                              builder: (context) => EnterAdminSettings());
                        },
                        child: SvgPicture.asset('assets/svg/masark.svg')
                            .animate(delay: 500.milliseconds)
                            .fade()
                            .slideY(),
                      ),
                      Text(
                        'اهلا بك في مسارك',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ).animate(delay: 500.milliseconds).fade().slideY(),
                      24.hGap,
                      Card(
                        color: Colors.white,
                        child: Padding(
                          padding: 16.8.allPadding,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Text(
                                      " قم بتسجيل الدخول إلى حسابك على مسارك ",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  // IconButton(
                                  //   onPressed: () {
                                  //     showApi.value = !showApi.value;
                                  //   },
                                  //   icon: Icon(
                                  //     Iconsax.setting_2,
                                  //   ),
                                  // )
                                ],
                              ),
                              24.hGap,
                              Row(
                                children: [
                                  Text(
                                    'اسم المستخدم',
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
                                  hintText: 'ادخل معرف API',
                                  // suffixIcon: Icon(
                                  //   Iconsax.message,
                                  // ),
                                  prefixIcon: Icon(
                                    Iconsax.message,
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                      12,
                                    ),
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
                                  prefixIcon: Icon(
                                    Iconsax.lock,
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                      12,
                                    ),
                                  ),
                                ),
                              ).animate(delay: 500.milliseconds).fade(),
                              // if (showApi.value) 16.hGap,
                              // if (showApi.value)
                              //   Row(
                              //     children: [
                              //       Text(
                              //         'مفتاح API',
                              //         textAlign: TextAlign.start,
                              //       ),
                              //     ],
                              //   )
                              //       .animate(delay: 500.milliseconds)
                              //       .fade()
                              //       .slideY(),
                              // if (showApi.value) 8.hGap,
                              // if (showApi.value)
                              //   TextFormField(
                              //     controller: api,
                              //     obscureText: securePassword.value,
                              //     decoration: InputDecoration(
                              //       hintText: 'ادخل مفتاح API',
                              //       suffixIcon: IconButton(
                              //         onPressed: () {
                              //           securePassword.value =
                              //               !securePassword.value;
                              //         },
                              //         icon: Icon(
                              //           securePassword.value
                              //               ? Iconsax.eye_slash
                              //               : Iconsax.eye,
                              //         ),
                              //       ),
                              //       prefixIcon: Icon(
                              //         Iconsax.lock,
                              //       ),
                              //       border: OutlineInputBorder(
                              //         borderRadius: BorderRadius.circular(
                              //           12,
                              //         ),
                              //       ),
                              //     ),
                              //   ).animate(delay: 500.milliseconds).fade(),
                              // if (showApi.value) 16.hGap,
                              // if (showApi.value)
                              //   Row(
                              //     children: [
                              //       Text(
                              //         'كلمة سر API',
                              //         textAlign: TextAlign.start,
                              //       ),
                              //     ],
                              //   )
                              //       .animate(delay: 500.milliseconds)
                              //       .fade()
                              //       .slideY(),
                              // if (showApi.value) 8.hGap,
                              // if (showApi.value)
                              //   TextFormField(
                              //     controller: secret,
                              //     obscureText: securePassword.value,
                              //     decoration: InputDecoration(
                              //       hintText: 'ادخل كلمة سر API',
                              //       suffixIcon: IconButton(
                              //         onPressed: () {
                              //           securePassword.value =
                              //               !securePassword.value;
                              //         },
                              //         icon: Icon(
                              //           securePassword.value
                              //               ? Iconsax.eye_slash
                              //               : Iconsax.eye,
                              //         ),
                              //       ),
                              //       prefixIcon: Icon(
                              //         Iconsax.lock,
                              //       ),
                              //       border: OutlineInputBorder(
                              //         borderRadius: BorderRadius.circular(
                              //           12,
                              //         ),
                              //       ),
                              //     ),
                              //   ).animate(delay: 500.milliseconds).fade(),

                              16.hGap,
                              RawMaterialButton(
                                fillColor: const Color(
                                  0xff13c56b,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                    12,
                                  ),
                                ),
                                onPressed: state.isLoading
                                    ? null
                                    : () async {
                                        var valid = await notifier.validate(
                                          apiKey: userName.text,
                                          passKey: password.text,
                                          ctx: context,
                                        );
                                        if (valid) {
                                          if (context.mounted) {
                                            context.go(HomePage.route);
                                          }
                                        }
                                      },
                                child: SizedBox(
                                  width: context.width,
                                  height: 45,
                                  child: Center(
                                    child: state.isLoading
                                        ? Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CircularProgressIndicator
                                                  .adaptive(),
                                              8.wGap,
                                              Text(
                                                'جاري تسجيل الدخول',
                                              )
                                            ],
                                          )
                                        : Text(
                                            'تسجيل الدخول',
                                          ),
                                  ),
                                ),
                              ),
                              16.hGap,
                              if (showErrorButton.value == true)
                                ElevatedButton(
                                  onPressed: () {
                                    showDialog(
                                      context: context,
                                      builder: (ctx) {
                                        return ErrorScreen();
                                      },
                                    );
                                  },
                                  child: Text(
                                    'مراجعة الخطأ',
                                  ),
                                )
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

class EnterAdminSettings extends HookWidget {
  const EnterAdminSettings({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var cnt = useTextEditingController();
    return AlertDialog(
      title: Text('Enter Static Settings'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextFormField(
            controller: cnt,
          ),
          TextButton(
              onPressed: () {
                if (cnt.text != 'wluzghuiqeui') return;
                Navigator.of(context)
                  ..pop()
                  ..push(
                    MaterialPageRoute(
                      builder: (context) => StaticSettingsView(),
                    ),
                  );
              },
              child: Text('Process'))
        ],
      ),
    );
  }
}

final errorProvider = StateProvider<String?>((ref) {
  return;
});

class ErrorScreen extends HookConsumerWidget {
  const ErrorScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final errorMessage = ref.watch(errorProvider);

    // useState<String?>('');
    // storage.registerListener(
    //   key: 'error',
    //   listener: (value) {
    //     errorMessage.value = value;
    //   },
    // );
    useEffect(() {
      readError(ref);
      return null;
    }, []);
    // storage.registerListener(
    //   key: 'error',
    //   listener: (value) {
    //     errorMessage.value = value;
    //   },
    // );
    return AlertDialog(
      title: Text(
        'مراجعة الخطأ',
      ),
      content: Text(
        textDirection: TextDirection.ltr,
        errorMessage.toString(),
      ),
    );
  }

  Future<void> readError(WidgetRef ref) async {
    var err = await storage.read(key: 'error');
    ref.read(errorProvider.notifier).state = err;
  }
}
