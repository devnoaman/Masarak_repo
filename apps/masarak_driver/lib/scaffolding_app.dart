// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:masarak_driver/Responsive.dart';
import 'package:masarak_driver/extentions.dart';
import 'package:masarak_driver/pages/notifications/presentation/notifications_view.dart';
import 'package:masarak_driver/providers/driver_app_context_provider.dart';
import 'package:masarak_driver/widgets/menu.dart';

import 'providers/beams_provider.dart';

class ScaffoldingApp extends HookConsumerWidget {
  ScaffoldingApp({super.key, required this.child, required this.routePaths});
  static const String route = '/';
  List<String> routePaths;
  final Widget child;

  // final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var routerState = GoRouterState.of(context);

    var scaffoldKey = ref.read(driverAppCtxProvider);

    var selectedIndex = useState(0);
    return Scaffold(
      key: scaffoldKey,
      appBar: (Responsive.isDesktop(context))
          ? null
          : AppBar(
              centerTitle: true,
              // backgroundColor: Color(0xff4EC2C1),
              backgroundColor: context.theme.primaryColor,
              iconTheme: IconThemeData(color: Colors.white),
              actions: [
                // Padding(
                //   padding: const EdgeInsets.all(16.0),
                //   child: Icon(Iconsax.notification),
                //   // child: SizedBox(width: 45),
                // ),
                IconButton(
                  onPressed: () {
                    context.push(NotificationsView.route);
                  },
                  icon: Icon(Iconsax.notification),
                ),
              ],
              leading: InkWell(
                onTap: () =>
                    // ScaffoldMessenger.of(context).
                    scaffoldKey.currentState?.openDrawer(),
                child: const Padding(
                  padding: EdgeInsets.all(3.0),
                  child: Icon(
                    Iconsax.menu,
                    // color: Colors.grey,
                    size: 25,
                  ),
                ),
              ),
              title: SvgPicture.asset(
                'assets/svg/mobile-logo.svg',
                // width: 160,
                height: 55,
                fit: BoxFit.fitWidth,
                // color: context.theme.primaryColor,
              ),
            ),
      drawer: !Responsive.isDesktop(context)
          ? SizedBox(width: context.width * .7, child: Menu())
          : null,

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        onTap: (value) {
          selectedIndex.value = value;
          switch (value) {
            case 0:
              if (routerState.uri.path == '/') return;
              context.push('/');
              break;
            case 1:
              if (routerState.uri.path == '/checks') return;
              context.push('/checks');
              break;
            default:
              break;
          }
        },
        elevation: 0,
        selectedItemColor: context.theme.primaryColor,
        currentIndex: selectedIndex.value,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Iconsax.home), label: 'الرئيسية'),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.location_tick),
            label: 'الحركات',
          ),
        ],
      ),

      body: ScaffoldingBody(child: child),
    );
  }
}

class ScaffoldingBody extends HookConsumerWidget {
  const ScaffoldingBody({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(busherProvider);

    return SizedBox(child: child);
  }
}
