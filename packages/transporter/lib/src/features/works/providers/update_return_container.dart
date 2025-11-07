import 'package:api_client/src/models/response_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared/shared.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:transporter/providers/app_context_provider.dart';
import 'package:transporter/src/features/works/controllers/updater_return_trip_controller.dart';

final updateReturnContainerProvider =
    StateNotifierProvider<UniqueIdentifierNotifier, GlobalState<String, void>>(
      (ref) {
        return UniqueIdentifierNotifier(ref);
      },
    );

class UniqueIdentifierNotifier
    extends StateNotifier<GlobalState<String, void>> {
  final Ref ref;
  UniqueIdentifierNotifier(this.ref)
    : super(
        GlobalState.initial(),
      ) {
    // get();
  }

  Future<bool> setInformation({
    required int? berthId,
    required String? containerNumber,
    required String? pathId,
    required String? containerSize,
    required String? driver,
    required int? printingAgent,
    required int? secondContainerNumber,
    required int? secondContainerSize,
    required String? truck,
  }) async {
    state = GlobalState.loading();
    UpdaterReturnTripController controller = UpdaterReturnTripController(
      berthId: berthId,
      pathId: pathId,
      containerNumber: containerNumber,
      containerSize: containerSize,
      driver: driver,
      printingAgent: printingAgent,
      secondContainerNumber: secondContainerNumber,
      secondContainerSize: secondContainerSize,
      truck: truck,
    );
    try {
      var res = await controller.callWithResult();
      // state =
      // return res == true;
      switch (res) {
        case Success():
          return res.data;
        case Failed():
          throw Error(e: res.error);
      }
      // if (res==) {
      //   state = GlobalState.loaded(
      //     data: [
      //       ...?res.jobRequestsRaw,
      //     ],
      //   );
      // }
    } catch (e) {
      print(e);
      var apCtx = ref.read(appCtxProvider);
      // state = GlobalState.error(e: e)
      if (mounted && apCtx.currentState!.context.mounted) {
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
