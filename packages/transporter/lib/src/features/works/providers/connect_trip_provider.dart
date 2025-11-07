import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared/shared.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:transporter/providers/app_context_provider.dart';
import 'package:transporter/src/features/works/controllers/connect_trip_controller.dart';
import 'package:transporter/src/features/works/providers/works_provider.dart';

final connectTripProvider =
    StateNotifierProvider<ConnectTripNotifier, GlobalState<String, void>>(
      (ref) {
        return ConnectTripNotifier(ref);
      },
    );

class ConnectTripNotifier extends StateNotifier<GlobalState<String, void>> {
  final Ref ref;
  ConnectTripNotifier(this.ref)
    : super(
        GlobalState.initial(),
      ) {
    // get();
  }

  Future<bool> setInformation({
    required JobRequest? jobRequest,
    required String uniqueIdentifier,
    required CanceledTrip? trip,
    required Map<String, dynamic>? driver,
    required Map<String, dynamic>? truck,
    required int? printingAgent,
    //   {

    // }
  }) async {
    // print(jobRequest?.toJson());
    // print(trip?.toJson());
    // return false;
    state = GlobalState.loading();
    ConnectTripController controller = ConnectTripController(
      jobRequest: jobRequest!,
      uniqueIdentifier: uniqueIdentifier,
      trip: trip!,
      driver: driver!,
      truck: truck!,
      printingAgent: printingAgent!,
    );
    try {
      var res = await controller.callWithResult();
      var apCtx = ref.read(appCtxProvider);
      // state = GlobalState.error(e: e)
      if (mounted &&
          apCtx.currentState != null &&
          apCtx.currentState!.context.mounted) {
        showTopSnackBar(
          Overlay.of(apCtx.currentState!.context),
          CustomSnackBar.success(
            message: 'تم ارسال طلب ربط الرحلة\nسيتم تحديث الحالة لاحقا ',
          ),
        );
      }
      ref.invalidate(worksProvider);
      return true;
      // state =
      // return res == true;
      // switch (res) {
      //   case Success():
      //     return res.data == true;
      //   case Failed():
      //     throw Error(e: res.error);
      // }
    } catch (e) {
      print(e);
      var apCtx = ref.read(appCtxProvider);
      // state = GlobalState.error(e: e)
      if (mounted &&
          apCtx.currentState != null &&
          apCtx.currentState!.context.mounted) {
        showTopSnackBar(
          Overlay.of(apCtx.currentState!.context),
          CustomSnackBar.error(message: 'حدث خطأ ، حاول مرة اخرى'),
        );
      }
      state = GlobalState.error(e: e.toString());
      return false;
    }
  }
}
