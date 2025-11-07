import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared/shared.dart';
import 'package:transporter/src/features/works/controllers/update_truk_driver_controller.dart';
import 'package:transporter/src/features/works/controllers/update_unique_identifier.dart';

final updateDriverTruckProvider =
    StateNotifierProvider<UniqueIdentifierNotifier, GlobalState<String, void>>(
      (ref) {
        return UniqueIdentifierNotifier();
      },
    );

class UniqueIdentifierNotifier
    extends StateNotifier<GlobalState<String, void>> {
  UniqueIdentifierNotifier()
    : super(
        GlobalState.initial(),
      ) {
    // get();
  }

  Future<bool> setInformation({
    required String tripid,
    required String tripName,
    required String truckid,
    required String driverId,
    required bool isReturn,
  }) async {
    // print(tripid)
    // print(tripid.toString());
    // print(tripName.toString());
    // print(truckid.toString());
    // print(driverId.toString());
    // print(isReturn.toString());
    // return false;

    state = GlobalState.loading();
    UpdateTruckDriverController controller = UpdateTruckDriverController(
      tripid: tripid,
      tripName: tripName,
      truckid: truckid,
      driverId: driverId,
      isReturn: isReturn,
    );
    try {
      var res = await controller.call() as bool?;
      // state =
      return res == true;
      // if (res==) {
      //   state = GlobalState.loaded(
      //     data: [
      //       ...?res.jobRequestsRaw,
      //     ],
      //   );
      // }
    } catch (e) {
      print(e);
      // state = GlobalState.error(e: e)
      state = GlobalState.error(e: e.toString());
      return false;
    }
  }
}
