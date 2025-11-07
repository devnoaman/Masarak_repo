import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shared/shared.dart';
import 'package:sub_app_core/generator/annotations/generate_route.dart';

@GenerateRoute(
  routeName: "Transporter notification page",
  routePath: "/notifications-transporter",
)
class NotificationsView extends HookConsumerWidget {
  const NotificationsView({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text(
              'عنوان الاشعار',
              style: context.textTheme.bodyLarge!.copyWith(
                fontWeight: FontWeight.w900,
                color: Colors.white,
              ),
            ),
            subtitle: Text(
              DateTime.now().toStringDate,
              style: context.textTheme.bodyLarge!.copyWith(
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            trailing: TextButton.icon(
              onPressed: () {},
              icon: Icon(Iconsax.document_download),
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
                  context.theme.primaryColor.withAlpha(20),
                ),
              ),
              label: Text(
                'تحميل',
              ),
            ),
            leading: Container(
              width: 45,
              height: 45,

              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: context.theme.primaryColor,
              ),
            ),
          ),

          // Card(
          //   child: Column(
          //     children: [Text('data')],
          //   ),
          // ),
        ],
      ),
    );
  }
}
