// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:api_client/api_client.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:driver/src/features/notifications/providers/notifications_table.dart';
import 'package:flutter/material.dart' hide Notification;
import 'package:flutter_animate/flutter_animate.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:masarak_driver/extentions.dart' hide NumDurationExtensions;

import 'package:pusher_beams/pusher_beams.dart';
import 'package:shared/shared.dart' hide NumDurationExtensions;
// import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
// import 'package:transporter/providers/app_context_provider.dart';

final busherProvider = Provider.family<NotificationsNotifier, BuildContext>((
  ref,
  ctx,
) {
  return NotificationsNotifier(ref: ref, ctx: ctx);
});

class NotificationsNotifier {
  final Ref ref;
  final BuildContext? ctx;
  NotificationsNotifier({required this.ref, this.ctx}) {
    init();
    startListen();
  }

  void startListen() async {
    // var ctx = appContext.currentState?.context;
    if (ctx != null) {
      await PusherBeams.instance.onMessageReceivedInTheForeground(
        _onMessageReceivedInTheForeground,
      );
    }
  }

  Future<void> _onMessageReceivedInTheForeground(
    Map<Object?, Object?> data,
  ) async {
    // var appContext = ref.read(appCtxProvider);
    final audioPlayer = AudioPlayer();
    log(
      data["title"].toString(),
    );
    log(data["body"].toString());
    if (ctx != null) {
      await audioPlayer.play(AssetSource('sounds/masarak-alert.mp3'));
      ref
          .read(notificationsProvider.notifier)
          .add(
            Notification.fromJson({
              "title": data["title"].toString(),
              "body": data["body"].toString(),
            }),
          );

      showTopSnackBar(
        Overlay.of(ctx!),
        NotificationBody(
          title: data["title"]?.toString() ?? '',
          body: data["body"]?.toString() ?? '',
        ),
      );
    }
  }

  Future<void> init() async {
    var manager = AuthManager.instance;
    var me = await manager.me();
    var meRes = me?.toResModel;
    var userId = meRes?.user?.id;
    await PusherBeams.instance.start('fd990511-0ba8-4220-96cf-88b58791298a');
    await PusherBeams.instance.setDeviceInterests(['all-users', '${userId}']);
    // print(await PusherBeams.instance.getDeviceInterests());
    // -------------
    // await PusherBeams.instance.start('5e06a5dc-6cf7-4bc1-9db5-026ebb36d468');
    // await PusherBeams.instance.setDeviceInterests(['hello']);
    print(await PusherBeams.instance.getDeviceInterests());
  }
}

class NotificationBody extends StatelessWidget {
  const NotificationBody({super.key, required this.title, required this.body});
  final String title;
  final String body;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Material(
        color: Colors.transparent,
        child: ConstrainedBox(
          constraints: BoxConstraints(minHeight: 75, minWidth: context.width),
          child: Center(
            child: ListTile(
              title: Text(title),
              subtitle: Text(body),
              leading: CircleAvatar(child: Icon(Icons.notifications)),
            ),
          ),
        ),
      ),
    ).animate(delay: 100.ms).shake();
  }
}
