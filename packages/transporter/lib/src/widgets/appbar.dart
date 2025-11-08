// widgets/custom_app_bar.dart

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_font/iconsfont_icons.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shared/shared.dart';
import 'package:shared/src/svgmanag.dart';
import 'package:transporter/src/features/notifications/presentation/notifications_view.route.dart';
import 'package:transporter/src/features/returns/presentation/return_view.route.dart';
import 'package:transporter/src/features/wallet/presentation/wallet_view.route.dart';
import 'package:transporter/src/features/wallet/widget/statistic_view.dart';
import 'package:transporter/src/features/works/presentation/works_view.route.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final BuildContext context;

  const CustomAppBar({required this.context});

  Map<String, Map<String, dynamic>> get screenConfigs {
    return {
      WalletViewRoute.instance.path: {
        'title': Text(
          'المحفظة',
          style: context.textTheme.bodyLarge!.copyWith(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
        'actions': [
          IconButton(
            icon: Icon(IconsFont.statics),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => StatisticScreen(),
                ),
              );
            },
          ),
        ],
      },
      ReturnViewRoute.instance.path: {
        'title': Text(
          'رحلات العودة',
          style: context.textTheme.bodyLarge!.copyWith(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
        'actions': [
          IconButton(
            onPressed: () {
              context.push(NotificationsViewRoute.instance.path);
            },
            icon: Icon(
              Iconsax.notification,
            ),
          ),
        ],
      },
      WorksViewRoute.instance.path: {
        'title': Text(
          'اعمالي',
          style: context.textTheme.bodyLarge!.copyWith(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
        'actions': [
          IconButton(
            onPressed: () {
              context.push(NotificationsViewRoute.instance.path);
            },
            icon: Icon(
              Iconsax.notification,
            ),
          ),
        ],
      },
    };
  }

  @override
  Widget build(BuildContext context) {
    final String location = GoRouterState.of(context).uri.toString();

    final config =
        screenConfigs[location] ??
        {
          'title': SvgPicture.string(SvgManag.whitelogo, height: 100),
          'actions': [
            IconButton(
              onPressed: () {
                context.push(NotificationsViewRoute.instance.path);
              },
              icon: Icon(
                Iconsax.notification,
              ),
            ),
          ],
        };

    return AppBar(
      title: config['titleWidget'] ?? config['title'],
      centerTitle: true,
      actions: List<Widget>.from(config['actions']),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
