import 'package:api_client/src/models/response_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared/shared.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:transporter/providers/app_context_provider.dart';
import 'package:transporter/src/features/returns/controllers/send_return_trip.dart';

final sendReturnTripProvider =
    StateNotifierProvider<SendReturnTripNotifier, GlobalState<String, void>>(
      (ref) {
        return SendReturnTripNotifier(ref);
      },
    );

class SendReturnTripNotifier extends StateNotifier<GlobalState<String, void>> {
  final Ref ref;
  SendReturnTripNotifier(this.ref)
    : super(
        GlobalState.initial(),
      ) {
    // get();
  }

  Future<bool> setInformation({
    required int? id,
  }) async {
    state = GlobalState.loading();
    SendReturnTripController controller = SendReturnTripController(id: id!);
    try {
      var res = await controller.callWithResult();
      switch (res) {
        case Success():
          if (res.data == true) {
            var apCtx = ref.read(appCtxProvider);
            if (mounted && apCtx.currentState?.context.mounted == true) {
              showTopSnackBar(
                Overlay.of(apCtx.currentState!.context),
                const CustomSnackBar.success(
                  message: 'تمت العملية بنجاح',
                ),
              );
            }
            return true;
          } else {
            var apCtx = ref.read(appCtxProvider);
            if (mounted && apCtx.currentState?.context.mounted == true) {
              showTopSnackBar(
                Overlay.of(apCtx.currentState!.context),
                const CustomSnackBar.info(
                  message: 'لم يتم تنفيذ العملية',
                ),
              );
            }
            state = GlobalState.error(e: "false response");
            return false;
          }

        case Failed():
          throw Error(e: res.error);
      }
    } catch (e) {
      print(e);
      var apCtx = ref.read(appCtxProvider);
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
