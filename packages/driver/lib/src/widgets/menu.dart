// ignore_for_file: library_private_types_in_public_api, deprecated_member_use

import 'dart:developer';
import 'package:api_client/api_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared/shared.dart';
import '../features/home_view/presentation/home_view.route.dart';
import 'package:driver/src/models/menu_modal.dart';

class Menu extends StatefulHookConsumerWidget {
  const Menu({super.key, this.isExpanded, this.onToggle});
  final bool? isExpanded;
  final ValueChanged<bool>? onToggle;
  @override
  ConsumerState<Menu> createState() => _MenuState();
}

//menu page widgets..
class _MenuState extends ConsumerState<Menu> {
  List<MenuModel> menu = [
    MenuModel(icon: 'assets/svg/home.svg', title: "الرئيسية"),
    // MenuModel(icon: 'assets/svg/remote.svg', title: "Controller"),
    // //I just remove some stuff in this code that I think it will not needed soon.
    // //MenuModel(icon: 'assets/svg/share-2.svg', title: "Connect"),
    // MenuModel(icon: 'assets/svg/bell.svg', title: "Notification"),
    // MenuModel(icon: 'assets/svg/history.svg', title: "History"),
    // MenuModel(icon: 'assets/svg/setting.svg', title: "Settings"),
    // MenuModel(icon: 'assets/svg/profile.svg', title: "About Us"),
    // MenuModel(icon: 'assets/svg/slack.svg', title: "Cultivate"),
    // MenuModel(icon: 'assets/svg/signout.svg', title: "Exit"),
  ];

  int selected = 0;
  @override
  Widget build(BuildContext context) {
    // var theme = useState(ThemeMode.system);
    // ThemeStorage.listen((value) {
    //   print('theme is :$value');
    //   theme.value = value!;
    //   // ref.invalidateSelf();
    // });
    var isDark = useState(false);
    final Brightness brightness = MediaQuery.platformBrightnessOf(context);
    var isDarkMode = useState(false);
    useEffect(() {
      isDarkMode.value = brightness == Brightness.dark;
      return null;
    }, []);
    // brightness
    return LayoutBuilder(
      builder: (context, cnt) {
        // var bri
        log(cnt.maxWidth.toString());
        return Drawer(
          child: Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              border: Border(
                right: BorderSide(color: Colors.grey[800]!, width: 1),
              ),
              color: context.theme.primaryColor,
              // isDarkMode.value
              //     ? context.theme.primaryColor
              // //     :
              // const Color(0xFFD9EAFD),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: SafeArea(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: SvgPicture.asset('assets/svg/logo-masarak.svg'),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(6.0),
                        ),
                        color: Colors.transparent,
                      ),
                      child: InkWell(
                        onTap: () async {
                          final confirm = await showDialog<bool>(
                            context: context,
                            barrierDismissible: false,
                            builder: (ctx) {
                              return AlertDialog(
                                backgroundColor: context.theme.primaryColor
                                    .lighter(5),
                                title: Text(
                                  'تأكيد تسجيل الخروج',
                                  style: context.textTheme.labelLarge!.copyWith(
                                    color: context.theme.scaffoldBackgroundColor
                                        .darker(5),
                                  ),
                                ),
                                content: Text(
                                  'هل أنت متأكد أنك تريد تسجيل الخروج؟',
                                  style: context.textTheme.labelLarge!.copyWith(
                                    color: context.theme.scaffoldBackgroundColor
                                        .darker(5),
                                  ),
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.of(ctx).pop(false),
                                    child: Text(
                                      'إلغاء',
                                      style: context.textTheme.bodyMedium!
                                          .copyWith(
                                            color: context
                                                .theme
                                                .scaffoldBackgroundColor
                                                .darker(5),
                                          ),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.of(ctx).pop(true),
                                    child: Text(
                                      'تأكيد',
                                      style: context.textTheme.bodyMedium!
                                          .copyWith(
                                            color: context
                                                .theme
                                                .scaffoldBackgroundColor
                                                .darker(5),
                                          ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          );

                          if (confirm == true) {
                            await AuthManager.instance.logout(
                              path: "/logout",
                              decoder: (r) {},
                            );
                            context.push('/login');
                          }
                        },
                        child: Tooltip(
                          message: 'تسجيل الخروج',
                          child: Row(
                            mainAxisAlignment: (cnt.maxWidth < 100)
                                ? MainAxisAlignment.center
                                : MainAxisAlignment.start,
                            children: [
                              AnimatedAlign(
                                alignment: Alignment.center,
                                duration: 500.ms,
                                child: Padding(
                                  padding: (cnt.maxWidth > 100)
                                      ? const EdgeInsets.symmetric(
                                          horizontal: 13,
                                          vertical: 7,
                                        )
                                      : EdgeInsets.all(8),
                                  child: Center(
                                    child: SvgPicture.asset(
                                      'assets/svg/signout.svg',
                                      // color: Colors.grey,
                                      color:
                                          context.theme.scaffoldBackgroundColor,
                                    ),
                                  ),
                                ),
                              ),
                              if (cnt.maxWidth > 100)
                                Text(
                                  'تسجيل الخروج',
                                  style: TextStyle(
                                    fontSize: 16,
                                    // color: Colors.grey,
                                    color:
                                        context.theme.scaffoldBackgroundColor,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
