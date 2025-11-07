import 'package:driver/provider/app_context_provider.dart';
import 'package:driver/provider/beams_provider.dart';
import 'package:driver/provider/observer_provider.dart';
import 'package:driver/services/sqflite_service.dart';
import 'package:driver/src/features/notifications/presentation/notifications_view.route.dart'
    show NotificationsViewRoute;
import 'package:driver/src/features/notifications/providers/sqflite_provider.dart';
import 'package:driver/src/widgets/menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shared/shared.dart';
import 'package:shared/src/svgmanag.dart';
import '../features/home_view/presentation/home_view.route.dart';
import '../features/checks/presentation/checks_view.route.dart';
import 'package:driver/src/features/home_view/provider/driver_info_provider.dart';
import 'package:driver/src/features/home_view/model/driver_info/driver_info.dart';

class DriverScaffoldingApp extends HookConsumerWidget {
  final Widget child;

  const DriverScaffoldingApp({super.key, required this.child});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var routstate = GoRouterState.of(context).uri.path;

    var appKey = ref.read(appCtxProvider);
    useMemoized(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        SqfliteService.initDb();
        ref.watch(
          busherProvider(
            context,
          ),
        );
      });
      // if (context.mounted) {}
    });
    var currentIndex = useState(0);
    var driverInfo = ref.watch(driverInfoProvider);
    var items = {
      HomeViewRoute.instance.path: NavigationBarItem(
        icon: Icon(Iconsax.home),
        label: 'الرئيسية',
      ),
      ChecksViewRoute.instance.path: NavigationBarItem(
        icon: Icon(Iconsax.send_2),
        label: 'البوابات',
      ),
    };
    return ProviderScope(
      // internal scope , for initializing
      overrides: [sqliteDBProvider.overrideWith((ref) => SqfliteService())],
      observers: [
        MyObserver(),
      ],
      child: Theme(
        data: Theme.of(context),
        child: Scaffold(
          key: appKey,
          drawer: Menu(),
          appBar: AppBar(
            centerTitle: true,
            actions: [
              IconButton(
                onPressed: () {
                  context.push(NotificationsViewRoute.instance.path);
                },
                icon: Icon(
                  Iconsax.notification,
                ),
              ),
            ],
            title: (routstate == ChecksViewRoute.instance.path)
                ? Text(
                    'البوابـــات',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  )
                : SvgPicture.string(SvgManag.whitelogo, height: 100),
          ),
          bottomNavigationBar: Theme(
            data: context.theme.copyWith(
              navigationBarTheme: NavigationBarThemeData(
                indicatorColor: context.theme.primaryColor.withAlpha(30),

                iconTheme: WidgetStateProperty.resolveWith((states) {
                  if (states.contains(WidgetState.selected)) {
                    return IconThemeData(color: context.theme.primaryColor);
                  }
                  return const IconThemeData(color: Colors.white);
                }),
              ),
            ),
            child: NavigationBar(
              selectedIndex: currentIndex.value,
              labelTextStyle: WidgetStateProperty.resolveWith<TextStyle>(
                (Set<WidgetState> states) =>
                    states.contains(WidgetState.selected)
                    ? TextStyle(
                        color: context.theme.primaryColor,
                        fontWeight: FontWeight.bold,
                      )
                    : const TextStyle(color: Colors.white),
              ),
              backgroundColor: Color.alphaBlend(
                Colors.black.withOpacity(0.3),
                context.theme.scaffoldBackgroundColor,
              ),
              onDestinationSelected: (value) {
                context.pushReplacement(items.entries.toList()[value].key);
                currentIndex.value = value;
              },
              destinations: items.entries.map((e) => e.value).toList(),
            ),
          ),
          body: child,
        ),
      ),
    );
  }
}

class NavigationBarItem extends HookConsumerWidget {
  const NavigationBarItem({
    super.key,
    required this.icon,
    this.activeIcon,
    this.label,
  });

  final Widget icon;
  final Widget? activeIcon;
  final String? label;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return NavigationDestination(icon: icon, label: label ?? '');
  }
}
