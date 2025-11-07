import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:iconsax/iconsax.dart';
import 'package:masarak/extentions.dart';

class OverlayScreen {
  /// Create an Overlay on the screen
  /// Declared [overlayEntrys] as List<OverlayEntry> because we might have
  /// more than one Overlay on the screen, so we keep it on a list and remove all at once
  BuildContext _context;
  OverlayState? overlayState;
  List<OverlayEntry>? overlayEntrys;
  final player = AudioPlayer();

  void closeAll() {
    for (final overlay in overlayEntrys ?? <OverlayEntry>[]) {
      overlay.remove();
    }
    overlayEntrys?.clear();
  }

  play() async {
    await player.play(
      AssetSource(
        'sounds/alert.mp3',
      ),
    );
  }

  void show() {
    play();
    overlayEntrys?.add(
      OverlayEntry(
        builder: (context) {
          return _buildOverlayWidget(context, overlayEntrys?.length);
        },
      ),
    );

    overlayState?.insert(overlayEntrys!.last);
  }

  void showDone() {
    play();

    overlayEntrys?.add(
      OverlayEntry(
        builder: (context) {
          return _buildDoneWidget(context);
        },
      ),
    );

    overlayState?.insert(overlayEntrys!.last);
    Future.delayed(Duration(seconds: 3)).then((_) {
      closeAll();
    });
  }

  void showError([String? error]) {
    play();

    overlayEntrys?.add(
      OverlayEntry(
        builder: (context) {
          return _buildErrorWidget(context, error);
        },
      ),
    );

    overlayState?.insert(overlayEntrys!.last);
    Future.delayed(Duration(seconds: 3)).then((_) {
      closeAll();
    });
    // Future.delayed(Durations.extralong1).then((_) {
    //   closeAll();
    // });
  }

  OverlayScreen._create(this._context) {
    overlayState = Overlay.of(_context);
    overlayEntrys = [];
  }

  factory OverlayScreen.of(BuildContext context) {
    return OverlayScreen._create(context);
  }

  Widget _buildOverlayWidget([BuildContext? context, int? length]) {
    return PositionedDirectional(
      bottom: 20,
      // left: 20,
      start: 55,
      child: Material(
        // color: Colors.transparent,
        color: context?.theme.canvasColor,
        shape: RoundedRectangleBorder(
          borderRadius: 12.cRadius,
        ),
        shadowColor: Colors.grey,
        elevation: 3,

        child: SizedBox(
          width: 300,
          // color: Colors.black,
          // height: 300,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('يتم تأكيد مرور الشاحنة'),
                8.hGap,
                LinearProgressIndicator(),
              ],
            ),
          ),
        ),
      ).animate().scale().fade(),
    );
  }

  Widget _buildDoneWidget([BuildContext? context]) {
    return PositionedDirectional(
      bottom: 20,
      // left: 20,
      start: 55,
      child: Material(
        // color: Colors.transparent,
        color: context?.theme.canvasColor,
        shape: RoundedRectangleBorder(
          borderRadius: 12.cRadius,
        ),
        shadowColor: Colors.grey,
        elevation: 3,

        child: SizedBox(
          width: 300,
          // color: Colors.black,
          // height: 300,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text('تم تأكيد مرور الشاحنة'),
                    8.wGap,
                    Icon(
                      Iconsax.tick_circle,
                    )
                  ],
                ),
                8.hGap,
                LinearProgressIndicator(
                  value: 100,
                ),
              ],
            ),
          ),
        ),
      ).animate().scale().fade(),
    );
  }

  Widget _buildErrorWidget([BuildContext? context, String? error]) {
    return PositionedDirectional(
      bottom: 20,
      // left: 20,
      start: 55,
      child: Material(
        // color: Colors.transparent,

        color: context?.theme.canvasColor,
        shape: RoundedRectangleBorder(
          borderRadius: 12.cRadius,
        ),
        clipBehavior: Clip.hardEdge,
        shadowColor: Colors.grey,
        elevation: 3,

        child: Material(
          color: Colors.red.withOpacity(
            .1,
          ),
          elevation: 0,
          child: SizedBox(
            width: 300,
            // color: Colors.black,
            // height: 300,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'لم يتم تأكيد مرور الشاحنة ، حاول مجددا',
                          style: context?.textTheme.bodyMedium!.copyWith(
                            color: Colors.red,
                          ),
                          maxLines: 2,
                        ),
                      ),
                      8.wGap,
                      Icon(
                        Iconsax.close_circle,
                        color: Colors.red,
                      )
                    ],
                  ),
                  8.hGap,
                  LinearProgressIndicator(
                    value: 100,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
          ),
        ),
      ).animate().scale().fade(),
    );
  }
}
