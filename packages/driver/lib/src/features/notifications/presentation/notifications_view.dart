import 'package:driver/src/features/notifications/providers/notifications_table.dart';
import 'package:flutter/material.dart' hide Notification;
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shared/shared.dart';
import 'package:sub_app_core/generator/annotations/generate_route.dart';

@GenerateRoute(
  routeName: "Notifications screen",
  routePath: "/notifications-screen",
)
class NotificationsView extends HookConsumerWidget {
  const NotificationsView({super.key});
  static const String route = '/notifications';
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var noti = ref.watch(notificationsProvider);
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent),
      body: RefreshIndicator.adaptive(
        onRefresh: () async {
          ref.invalidate(notificationsProvider);
        },
        child: switch (noti) {
          Loading<List<Notification>, String>() => Center(
            child: CircularProgressIndicator.adaptive(),
          ),

          Loaded<List<Notification>, String>() =>
            noti.data.isEmpty
                ? Center(
                    child: Text(
                      'لا توجد اشعارات بعد',
                      style: context.textTheme.headlineLarge!.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  )
                : ListView.builder(
                    itemCount: noti.data.length,
                    itemBuilder: (context, index) {
                      var n = noti.data[index];
                      return ListTile(
                        titleAlignment: ListTileTitleAlignment.center,
                        title: Text(
                          n.title ?? '',
                          style: context.textTheme.bodyLarge!.copyWith(
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                          ),
                        ),
                        subtitle: Text(
                          n.body ?? '',
                          style: context.textTheme.bodyLarge!.copyWith(
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                        trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              n.createdAt?.toStringDate ?? '',
                              style: context.textTheme.bodyLarge!.copyWith(
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              n.createdAt?.hms ?? '',
                              style: context.textTheme.bodyLarge!.copyWith(
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        leading: Container(
                          width: 45,
                          height: 45,

                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: context.theme.primaryColor,
                          ),
                          child: Icon(Icons.notifications),
                        ),
                      );
                    },
                  ),

          // TODO: Handle this case.
          _ => SizedBox(),
        },
      ),
    );
  }
}
