import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared/shared.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:transporter/providers/app_context_provider.dart';
import 'package:transporter/src/features/returns/controllers/edit_return_trip_controller.dart';

final editReturnTripProvider =
    StateNotifierProvider<EditReturnTripNotifier, GlobalState<String, void>>(
      (ref) {
        return EditReturnTripNotifier(ref);
      },
    );

class EditReturnTripNotifier extends StateNotifier<GlobalState<String, void>> {
  final Ref ref;
  EditReturnTripNotifier(this.ref)
    : super(
        GlobalState.initial(),
      ) {}

  Future<bool> setInformation({
    required String berthid,
    required String containernumber,
    required String containersize,
    required String driver,
    required int printingagent,
    String? secondcontainernumber,
    String? secondcontainersize,
    required String truck,
    required int id,
  }) async {
    state = GlobalState.loading();
    EditReturnTripController controller = EditReturnTripController(
      berthid: berthid,
      containernumber: containernumber,
      containersize: containersize,
      driver: driver,
      printingagent: printingagent,
      secondcontainernumber: secondcontainernumber,
      secondcontainersize: secondcontainersize,
      truck: truck,
      id: id,
    );
    try {
      var res = await controller.call() as bool?;
      if (res == true) {
        var apCtx = ref.read(appCtxProvider);
        if (mounted &&
            apCtx.currentState != null &&
            apCtx.currentState!.context.mounted) {
          showTopSnackBar(
            Overlay.of(apCtx.currentState!.context),
            CustomSnackBar.success(
              message: 'تم تحديث مخول الطباعة',
            ),
          );
        }
        return true;
      } else {
        final apCtx = ref.read(appCtxProvider);
        if (mounted &&
            apCtx.currentState != null &&
            apCtx.currentState!.context.mounted) {
          showTopSnackBar(
            Overlay.of(apCtx.currentState!.context),
            const CustomSnackBar.error(
              message: 'فشل في تحديث مخول الطباعة',
            ),
          );
        }

        state = GlobalState.error(e: 'فشل تحديث مخول الطباعة');
        return false;
      }
    } catch (e) {
      print(e);
      var apCtx = ref.read(appCtxProvider);
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
