// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shared/shared.dart';
import 'package:transporter/providers/app_context_provider.dart';
import 'package:transporter/src/features/home/home_view.route.dart';
import 'package:transporter/src/features/notifications/presentation/notifications_view.route.dart';
import 'package:transporter/src/features/returns/presentation/return_view.route.dart';
import 'package:transporter/src/features/wallet/presentation/wallet_view.route.dart';
import 'package:transporter/src/features/works/presentation/works_view.route.dart';
import 'package:transporter/src/widgets/menu.dart';

class TransporterScaffoldingApp extends HookConsumerWidget {
  final Widget child;

  const TransporterScaffoldingApp({super.key, required this.child});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var appKey = ref.read(appCtxProvider);
    var currentIndex = useState(0);
    var items = {
      HomeViewRoute.instance.path: NavigationBarItem(
        icon: Icon(Iconsax.home),
        label: 'الرئيسية',
      ),
      WalletViewRoute.instance.path: NavigationBarItem(
        icon: Icon(Iconsax.money),
        label: 'المحفظة',
      ),
      ReturnViewRoute.instance.path: NavigationBarItem(
        icon: Icon(Iconsax.money),
        label: 'رحلات العودة',
      ),
      WorksViewRoute.instance.path: NavigationBarItem(
        icon: Icon(Iconsax.car),
        label: 'اعمالي',
      ),
    };
    return Theme(
      data: Theme.of(context),
      child: Scaffold(
        key: appKey,
        body: Column(
          children: [
            Padding(
              padding: 0.16.symetric,
              child: Container(
                width: context.width,
                color: context.theme.primaryColor.withAlpha(20),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'لوحة ادارة الناقل ',
                      style: context.textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.w900,
                        color: context.theme.primaryColor,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(child: child),
          ],
        ),
        drawer: Menu(),
        appBar: AppBar(
          backgroundColor: context.theme.primaryColor,
          centerTitle: true,
          title: SvgPicture.asset(
            'assets/svg/mobile-logo.svg',
            // width: 120,
            height: 55,
          ),
          // backgroundColor: context.theme.primaryColor,
          // leading: IconButton(
          //   onPressed: () {
          //     // context.pop();
          //   },
          //   icon: Icon(Iconsax.menu),
          // ),
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
        ),
        bottomNavigationBar: Theme(
          data: context.theme.copyWith(
            navigationBarTheme: NavigationBarThemeData(
              indicatorColor: context.theme.primaryColor.withAlpha(
                30,
              ),

              iconTheme: WidgetStateProperty.resolveWith((states) {
                if (states.contains(WidgetState.selected)) {
                  return IconThemeData(color: context.theme.primaryColor);
                }
                return const IconThemeData(color: Colors.grey);
              }),
            ),
          ),
          child: NavigationBar(
            selectedIndex: currentIndex.value,
            // unselectedItemColor: Colors.grey,
            // selectedItemColor: context.theme.primaryColor,
            // labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
            // Use labelTextStyle to style the selected label
            labelTextStyle: WidgetStateProperty.resolveWith<TextStyle>(
              (Set<WidgetState> states) => states.contains(WidgetState.selected)
                  ? TextStyle(
                      color: context.theme.primaryColor,
                      fontWeight: FontWeight.bold,
                    )
                  : const TextStyle(color: Colors.white),
            ),

            // indicatorColor: context.theme.primaryColor.withAlpha(
            //   30,
            // ),
            backgroundColor: context.theme.scaffoldBackgroundColor,
            // backgroundColor: const Color(0xFF25245b),
            onDestinationSelected: (value) {
              context.pushReplacement(items.entries.toList()[value].key);
              currentIndex.value = value;
            },
            destinations: items.entries.map((e) => e.value).toList(),
          ),
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

  /// The icon of the item.
  ///
  /// Typically the icon is an [Icon] or an [ImageIcon] widget. If another type
  /// of widget is provided then it should configure itself to match the current
  /// [IconTheme] size and color.
  ///
  /// If [activeIcon] is provided, this will only be displayed when the item is
  /// not selected.
  ///
  /// To make the bottom navigation bar more accessible, consider choosing an
  /// icon with a stroked and filled version, such as [Icons.cloud] and
  /// [Icons.cloud_queue]. [icon] should be set to the stroked version and
  /// [activeIcon] to the filled version.
  ///
  /// If a particular icon doesn't have a stroked or filled version, then don't
  /// pair unrelated icons. Instead, make sure to use a
  /// [BottomNavigationBarType.shifting].
  final Widget icon;

  /// An alternative icon displayed when this bottom navigation item is
  /// selected.
  ///
  /// If this icon is not provided, the bottom navigation bar will display
  /// [icon] in either state.
  ///
  /// See also:
  ///
  ///  * [BottomNavigationBarItem.icon], for a description of how to pair icons.
  final Widget? activeIcon;

  /// The text label for this [BottomNavigationBarItem].
  ///
  /// This will be used to create a [Text] widget to put in the bottom navigation bar.
  final String? label;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return NavigationDestination(icon: icon, label: label ?? '');

    //  Column(
    //   children: [icon, if (label != null) Text(label!)],
    // );
  }
}
