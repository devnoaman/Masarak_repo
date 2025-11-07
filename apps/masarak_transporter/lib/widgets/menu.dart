// ignore_for_file: library_private_types_in_public_api, deprecated_member_use

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:masarak_transporter/Responsive.dart';
import 'package:masarak_transporter/extentions.dart';
import 'package:masarak_transporter/model/menu_modal.dart';
import 'package:flutter_svg/svg.dart';
import 'package:masarak_transporter/pages/auth/presentation/login_page.dart';
import 'package:masarak_transporter/pages/empty.dart';
import 'package:masarak_transporter/pages/home/home_page.dart';
import 'package:masarak_transporter/providers/theme_provider.dart';
import 'package:masarak_transporter/services/storage/email_password_storage.dart';
import 'package:masarak_transporter/services/storage/theme_storage.dart';
import 'package:masarak_transporter/widgets/history.dart';
import 'package:masarak_transporter/widgets/notifications.dart';
import 'package:masarak_transporter/widgets/settings_page.dart';

import 'aboutUs.dart';
import 'cultivate_page.dart';

class Menu extends StatefulHookConsumerWidget {
  // final GlobalKey<ScaffoldState> scaffoldKey;

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
    var th = ref.watch(themeProvider);
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
        return Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            border: Border(
              right: BorderSide(color: Colors.grey[800]!, width: 1),
            ),
            color:
                // isDarkMode.value
                //     ? context.theme.primaryColor
                //     :
                const Color(0xFFD9EAFD),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SafeArea(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: (cnt.maxWidth < 100)
                        ? MainAxisAlignment.center
                        : MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          if (widget.onToggle != null) {
                            widget.onToggle!(cnt.maxWidth > 100);
                          }
                        },
                        child: Center(
                          child: Padding(
                            padding: (cnt.maxWidth > 100)
                                ? const EdgeInsets.symmetric(
                                    horizontal: 13,
                                    vertical: 7,
                                  )
                                : EdgeInsets.all(8),
                            child: Icon(
                              (cnt.maxWidth > 100)
                                  ? Icons.arrow_back_ios
                                  : Icons.arrow_forward_ios,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          if (cnt.maxWidth < 100) SizedBox(height: 100),
                          if (cnt.maxWidth > 100)
                            SizedBox(
                              height: Responsive.isMobile(context) ? 40 : 80,
                            ),
                          if (cnt.maxWidth > 100)
                            SvgPicture.asset('assets/svg/masark.svg'),
                          for (var i = 0; i < menu.length; i++)
                            Container(
                              width: MediaQuery.of(context).size.width,
                              margin: const EdgeInsets.symmetric(vertical: 5),
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(6.0),
                                ),
                                color: selected == i
                                    ? Theme.of(context).primaryColor
                                    : Colors.transparent,
                              ),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    selected = i;
                                  });
                                  // widget.scaffoldKey.currentState!.closeDrawer();

                                  // Navigate to the corresponding page
                                  switch (i) {
                                    case 0: // Dashboard
                                      context.go(HomePage.route);
                                      // Navigator.of(context).push(
                                      //   MaterialPageRoute(
                                      //       builder: (context) => const MyApp()),
                                      // );
                                      break;
                                    case 1: // Controller
                                      // Navigator.of(context).push(
                                      //   MaterialPageRoute(
                                      //       builder: (context) => const ControllerPage()),
                                      // );
                                      context.push(EmptyPage.route);
                                      break;
                                    // Add similar cases for other menu items
                                    case 2: //Notification
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const NotificationPage(),
                                        ),
                                      );
                                      break;
                                    case 3: //History
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const HistoryPage(),
                                        ),
                                      );
                                      break;
                                    case 4: //Settings
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const SettingsPage2(),
                                        ),
                                      );
                                      break;
                                    case 5: //About Us
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const AboutUsPage(),
                                        ),
                                      );
                                      break;
                                    case 6: //Cultivate Crops
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const CultivatePage(),
                                        ),
                                      );
                                      break;
                                    case 7: //Exit
                                      SystemNavigator.pop();
                                    //close the application
                                  }
                                },
                                child: Tooltip(
                                  message: menu[i].title,
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
                                              menu[i].icon,
                                              color: selected == i
                                                  ? Colors.black
                                                  : Colors.grey,
                                            ),
                                          ),
                                        ),
                                      ),
                                      if (cnt.maxWidth > 100)
                                        Text(
                                          menu[i].title,
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: selected == i
                                                ? Colors.black
                                                : Colors.grey,
                                            fontWeight: selected == i
                                                ? FontWeight.w600
                                                : FontWeight.normal,
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          // Spacer()
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
                              onTap: () {
                                AuthInfo.clearAll();
                                context.push(LoginPage.route);
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
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ),
                                    ),
                                    if (cnt.maxWidth > 100)
                                      Text(
                                        'تسجيل الخروج',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.grey,
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
                  Row(
                    mainAxisAlignment: (cnt.maxWidth < 100)
                        ? MainAxisAlignment.center
                        : MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          // if (widget.onToggle != null) {
                          //   widget.onToggle!(cnt.maxWidth > 100);
                          // }
                          ThemeStorage.toggleTheme(context);
                        },
                        child: Center(
                          child: Padding(
                            padding: (cnt.maxWidth > 100)
                                ? const EdgeInsets.symmetric(
                                    horizontal: 13,
                                    vertical: 7,
                                  )
                                : EdgeInsets.all(8),
                            child: Icon(
                              switch (th) {
                                // TODO: Handle this case.
                                ThemeMode.system =>
                                  Icons.system_security_update_warning,
                                // TODO: Handle this case.
                                ThemeMode.light => Iconsax.sun,
                                // TODO: Handle this case.
                                ThemeMode.dark => Iconsax.moon,
                              },
                              // (cnt.maxWidth > 100) ? Iconsax.moon : Iconsax.sun,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

//components should works well in different platforms.
//add connection to firebase.
//Merry Christmas
