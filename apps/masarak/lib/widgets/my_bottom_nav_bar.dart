import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:masarak/pages/checks/presentation/check_pages.dart';
import 'package:masarak/pages/home/home_page.dart';
import 'package:masarak/pages/trip/presentation/search_trip.dart';

class MyBottomNavigationBar extends HookConsumerWidget {
  const MyBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var state = GoRouterState.of(context).fullPath;
    var path = useState(state);
    var items = [
      {
        HomePage.route: BottomNavigationBarItem(
          icon: Icon(Iconsax.home),
          label: 'الرئيسية',
        )
      },
      {
        SearchTrip.route: BottomNavigationBarItem(
          icon: Icon(
            Iconsax.search_normal,
          ),
          label: 'استعلام عن رحلة',
        ),
      },
      {
        CheckPages.route: BottomNavigationBarItem(
          icon: Icon(
            Iconsax.truck_tick,
          ),
          label: 'حركات الشاحنات',
        )
      },
    ];
    return BottomNavigationBar(
      // currentIndex: items.indexWhere((e) => e.entries.first.key == path.value),
      currentIndex: items.indexWhere((e) => e.entries.first.key == state),
      onTap: (value) {
        if (context.mounted) {
          context.go(
            items[value].entries.first.key,
          );
        }
      },
      items: items.map((e) => e.values.first).toList(),
    );
  }
}
