import 'package:api_client/src/models/response_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared/shared.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:transporter/providers/app_context_provider.dart';
import 'package:transporter/src/features/works/controllers/cancel_return_trip_controller.dart';
import 'package:transporter/src/features/works/controllers/cancel_trip_controller.dart';

final cancelReturnTripProvider =
    StateNotifierProvider<CancelReturnTripNotifier, GlobalState<String, void>>(
      (ref) {
        return CancelReturnTripNotifier(ref);
      },
    );

class CancelReturnTripNotifier
    extends StateNotifier<GlobalState<String, void>> {
  final Ref ref;
  CancelReturnTripNotifier(this.ref)
    : super(
        GlobalState.initial(),
      ) {
    // get();
  }

  Future<bool> setInformation({
    required String? tripUuid,
  }) async {
    state = GlobalState.loading();
    CancelReturnTripController controller = CancelReturnTripController(
      tripUuid: tripUuid,
    );
    try {
      var res = await controller.callWithResult();
      // state =
      // return res == true;
      switch (res) {
        case Success():
          return res.data == true;
        case Failed():
          throw Error(e: res.error);
      }
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
