import 'dart:developer';

import 'package:driver/src/features/home_view/model/driver_info/driver_info.dart';
import 'package:driver/src/features/home_view/provider/driver_info_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared/shared.dart';

final chicksPointProvider =
    StateNotifierProvider<
      ChicksPointNotifier,
      GlobalState<List<TripCheckPoint>, String>
    >((ref) {
      final checkPoinsState = ref.watch(driverInfoProvider);
      return ChicksPointNotifier(ref, checkPoinsState);
    });

class ChicksPointNotifier
    extends StateNotifier<GlobalState<List<TripCheckPoint>, String>> {
  final Ref ref;
  GlobalState<DriverInfo, String> checkPoinsState;
  List<TripCheckPoint> pendingChecks = [];
  List<TripCheckPoint> passedChecks = [];
  ChicksPointNotifier(this.ref, this.checkPoinsState)
    : super(GlobalState.initial()) {
    log('calling init of checks');
    get();
  }
  Future<void> get() async {
    switch (checkPoinsState) {
      case Loaded<DriverInfo, String>():
        pendingChecks =
            (checkPoinsState as Loaded<DriverInfo, String>).data.tripCheckPoints
                ?.where((t) => t.exitTime == null)
                .toList() ??
            [];
        passedChecks =
            (checkPoinsState as Loaded<DriverInfo, String>).data.tripCheckPoints
                ?.where((t) => t.exitTime != null)
                .toList() ??
            [];
        state = GlobalState.loaded(
          data:
              (checkPoinsState as Loaded<DriverInfo, String>)
                  .data
                  .tripCheckPoints ??
              [],
        );

      default:
        print('State not ready');
    }
  }
}
