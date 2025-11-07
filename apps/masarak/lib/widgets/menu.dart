// ignore_for_file: library_private_types_in_public_api, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:masarak/Responsive.dart';
import 'package:masarak/extentions.dart';
import 'package:flutter_svg/svg.dart';
import 'package:masarak/models/menu_modal.dart';
import 'package:masarak/pages/checks/presentation/check_pages.dart';
import 'package:masarak/pages/home/home_page.dart';
import 'package:masarak/pages/trip/presentation/search_trip.dart';
import 'package:masarak/providers/theme_provider.dart';
import 'package:masarak/services/storage/theme_storage.dart';
import 'package:masarak/widgets/dialogs/logout_dialog.dart';

// class Menu extends StatefulHookConsumerWidget {
//   // final GlobalKey<ScaffoldState> scaffoldKey;

//   const Menu({
//     super.key,
//     this.isExpanded,
//     this.onToggle,
//   });
//   final bool? isExpanded;
//   final ValueChanged<bool>? onToggle;
//   @override
//   ConsumerState<Menu> createState() => _MenuState();
// }

//menu page widgets..
class Menu extends HookConsumerWidget {
  // List<MenuModel> menu = [
  //   MenuModel(icon: 'assets/svg/home.svg', title: "الرئيسية"),
  // ];
  const Menu({
    super.key,
    this.isExpanded,
    this.onToggle,
  });
  // int selected = 0;
  final bool? isExpanded;
  final ValueChanged<bool>? onToggle;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var th = ref.watch(themeProvider);
    var isDark = useState(false);

    var routeState = GoRouterState.of(context).fullPath;

    // var selectedMenuItem = useState(
    //   routeState ?? HomePage.route,
    // );
    final Brightness brightness = MediaQuery.platformBrightnessOf(context);
    var isDarkMode = useState(false);
    useEffect(() {
      isDarkMode.value = brightness == Brightness.dark;
      return null;
    }, []);
    var deskTopItems = [
      {
        HomePage.route: MenuModel(
          icon: Iconsax.home,
          title: 'الرئيسية',
        )
      },
      if (Responsive.isDesktop(context))
        {
          SearchTrip.route: MenuModel(
            icon: Iconsax.search_normal,
            title: 'استعلام عن رحلة',
          ),
        },
      if (Responsive.isDesktop(context))
        {
          CheckPages.route: MenuModel(
            icon: Iconsax.truck_tick,
            title: 'حركات الشاحنات',
          )
        },
    ];
    // brightness

    return LayoutBuilder(builder: (context, cnt) {
      // var bri
      // log(cnt.maxWidth.toString());
      return Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            border: Border(
              right: BorderSide(
                color: Colors.grey[800]!,
                width: 1,
              ),
            ),
            color: context.theme.primaryColor

            //  const Color(
            //   0xFFD9EAFD,
            // ),
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
                    if (!Responsive.isMobile(context))
                      GestureDetector(
                        onTap: () {
                          if (onToggle != null) {
                            onToggle!(cnt.maxWidth > 100);
                          }
                        },
                        child: Center(
                          child: Padding(
                            padding: (cnt.maxWidth > 100)
                                ? const EdgeInsets.symmetric(
                                    horizontal: 13, vertical: 7)
                                : EdgeInsets.all(8),
                            child: Icon(
                              Icons.menu,
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
                        if (cnt.maxWidth < 100)
                          SizedBox(
                            height: 100,
                          ),
                        if (cnt.maxWidth > 100)
                          SizedBox(
                            height: Responsive.isMobile(context) ? 40 : 80,
                          ),
                        if (cnt.maxWidth > 100)
                          SvgPicture.asset(
                            'assets/svg/masark.svg',
                          ),

                        ...deskTopItems.map(
                          (item) => Container(
                            width: MediaQuery.of(context).size.width,
                            margin: const EdgeInsets.symmetric(vertical: 5),
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(6.0),
                              ),
                              color: routeState == item.keys.first
                                  ? Theme.of(context).canvasColor
                                  : Colors.transparent,
                            ),
                            child: InkWell(
                              onTap: () {
                                // setState(() {
                                // log('selected item:  ' +
                                //     selectedMenuItem.value);
                                // log('menu item:  ' + item.keys.first);

                                context.go(
                                  item.keys.first,
                                );
                                routeState = item.keys.first;
                                // log('selected item:  ' +
                                //     selectedMenuItem.value);
                              },
                              child: Tooltip(
                                message: item.values.first.title,
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
                                                horizontal: 13, vertical: 7)
                                            : EdgeInsets.all(8),
                                        child: Center(
                                          child: item.values.first.icon != null
                                              ? Icon(
                                                  item.values.first.icon,
                                                  color: routeState ==
                                                          item.keys.first
                                                      ? context
                                                          .theme.primaryColor
                                                      : Colors.black,
                                                )
                                              : item.values.first.svgIcon !=
                                                      null
                                                  ? SvgPicture.asset(
                                                      item.values.first
                                                              .svgIcon ??
                                                          '',
                                                      color: routeState ==
                                                              item.keys.first
                                                          ? Colors.black
                                                          : Colors.black,
                                                    )
                                                  : SizedBox(),
                                        ),
                                      ),
                                    ),
                                    if (cnt.maxWidth > 100)
                                      Text(
                                        item.values.first.title,
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: routeState == item.keys.first
                                              ? context.theme.primaryColor
                                              : Colors.black,
                                          fontWeight:
                                              routeState == item.keys.first
                                                  ? FontWeight.w600
                                                  : FontWeight.normal,
                                        ),
                                      )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),

                        // Spacer()
                        if (Responsive.isMobile(context))
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
                              onTap: () => LogoutDialog.show(context),

                              // () {
                              //   AuthInfo.clearAll();
                              //   ref.invalidate(checkPoinstProvider);
                              //   context.push(LoginPage.route);
                              // },
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
                                                horizontal: 13, vertical: 7)
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
                                            fontWeight: FontWeight.normal),
                                      )
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
                                  horizontal: 13, vertical: 7)
                              : EdgeInsets.all(8),
                          child: Icon(switch (th) {
                            ThemeMode.system =>
                              Icons.system_security_update_warning,
                            ThemeMode.light => Iconsax.sun,
                            ThemeMode.dark => Iconsax.moon,
                          }
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
    });
  }
}
//components should works well in different platforms.
//add connection to firebase.
//Merry Christmas
