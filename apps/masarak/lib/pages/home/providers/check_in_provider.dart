// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:masarak/models/check_model/check_model.dart';
import 'package:masarak/network/api/client.dart';
import 'package:masarak/network/api/endpoints.dart';
import 'package:masarak/pages/checks/providers/checks_provider.dart';
import 'package:masarak/providers/app_context_provider.dart';
import 'package:masarak/services/storage/email_password_storage.dart';
import 'package:masarak/widgets/overlay_screen.dart';

final checkInProvider = Provider((ref) {
  return CeckInNotifier(
    ref: ref,
  );
});

class CeckInNotifier {
  final Ref ref;
  CeckInNotifier({
    required this.ref,
  });
  checkIn(BuildContext context, String tripId) async {
    final appKey = ref.read(appContextProvider);
    if (appKey.currentState?.context != null) {
      var st = OverlayScreen.of(appKey.currentState!.context);
// st
      st.show();

      var token = await AuthInfo.getToken();

      ref.read(dioProvider).post(Endpoints.processCheckpoint,
          options: Options(
            headers: {
              'Authorization': token,
            },
          ),
          data: {"trip_name": tripId}).then(
        (_) {
          st.showDone();
          ref.read(checksHistoryProvider.notifier).add(
                CheckModel(
                  barcode: tripId,
                  checkedAt: DateTime.now(),
                ),
              );
        },
      ).catchError(
        (
          e,
        ) {
          st.showError();
        },
      );
      // Future.delayed(Durations.extralong2).then((_) {
      //   st.showDone();
      // });

      // Overlay.of(appKey.currentState!.context).insert(
      //   OverlayEntry(
      //       canSizeOverlay: true,
      //       builder: (c) {
      //         final size = MediaQuery.of(context).size;

      //         // return OverlayDialog(size: size);
      //         return PositionedOverlay();
      //       }),
      // );
    }
  }
}

class PositionedOverlay extends StatefulWidget {
  const PositionedOverlay({super.key});

  @override
  State<PositionedOverlay> createState() => _PositionedOverlayState();
}

class _PositionedOverlayState extends State<PositionedOverlay> {
  late Size size;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    size = MediaQuery.of(context).size;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final size = MediaQuery.of(context).size;

        return Stack(
          children: [
            Positioned(
              right: 20,
              bottom: 20,
              child: Material(
                color: Colors.transparent,
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Sticky Overlay\nWindow size: ${size.width} x ${size.height}',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        height: 8,
                        width: constraints.maxWidth,
                        child: LinearProgressIndicator(),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

class OverlayDialog extends StatelessWidget {
  const OverlayDialog({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          width: 56,
          height: 56,
          top: size.height - 72,
          left: size.width - 72,
          child: Material(
            color: Colors.transparent,
            child: GestureDetector(
              onTap: () => print('ON TAP OVERLAY!'),
              child: Container(
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.green),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
