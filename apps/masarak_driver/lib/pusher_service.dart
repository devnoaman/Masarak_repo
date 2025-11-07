// import 'dart:developer';

// import 'package:api_client/api_client.dart';
// import 'package:audioplayers/audioplayers.dart';
// import 'package:flutter/foundation.dart';
// import 'package:pusher_beams/pusher_beams.dart';
// import 'package:shared/shared.dart';
// import 'package:shared/shared.dart';








// class PusherService {
//   const PusherService._();

//   //
//   static init(String instanceId) async {
    
//     var manager = AuthManager.instance;
//     var me = await manager.me();
//     var meRes = me?.toResModel;
//     var userId = meRes?.user?.id;
//     await PusherBeams.instance.start(instanceId);
//     await PusherBeams.instance.setDeviceInterests([
//       'hello',
//       'all-users',
//       '$userId',
//     ]);
//     _checkForInitialMessage();
//     // if (!kIsWeb) {
//     //   await PusherBeams.instance.onInterestChanges(
//     //     (interests) => {print('Interests: $interests')},
//     //   );

//     await PusherBeams.instance.onMessageReceivedInTheForeground(
//       _onMessageReceivedInTheForeground,
//     );

//     //   //  await PusherBeams.instance.on(
//     //   //   _onMessageReceivedInTheForeground,
//     //   // );
//     // }
//     print(await PusherBeams.instance.getDeviceInterests());
//   }

//   static Future<void> _checkForInitialMessage() async {
//     final initialMessage = await PusherBeams.instance.getInitialMessage();
//     if (initialMessage != null) {
//       log('Initial Message Is: ${initialMessage.toString()}');
//     }
//   }

//   static _onMessageReceivedInTheForeground(Map<Object?, Object?> data) {
//     log(data["title"].toString());
//     log(data["body"].toString());


//     final audioPlayer = AudioPlayer();



//     var ctx  = 
//   }
// }
