import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared/shared.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:transporter/providers/app_context_provider.dart';
import 'package:transporter/src/features/returns/controllers/merge_containers_controller.dart';

final mergeContainersProvider =
    StateNotifierProvider<MergeContainersNotifier, GlobalState<String, void>>(
      (ref) {
        return MergeContainersNotifier(ref);
      },
    );

class MergeContainersNotifier extends StateNotifier<GlobalState<String, void>> {
  final Ref ref;
  MergeContainersNotifier(this.ref)
    : super(
        GlobalState.initial(),
      ) {}

  Future<bool> setInformation({
    required String jobRequest,
    required String containerNumber,
    required dynamic secondContainerNumber,
    //   {

    // }
  }) async {
    state = GlobalState.loading();
    MergeContainersController controller = MergeContainersController(
      jobRequest: jobRequest,
      containerNumber: containerNumber,
      secondContainerNumber: secondContainerNumber,
    );
    try {
      var res = await controller.callWithResult();
      if (res == true) {
        var apCtx = ref.read(appCtxProvider);
        if (mounted &&
            apCtx.currentState != null &&
            apCtx.currentState!.context.mounted) {
          showTopSnackBar(
            Overlay.of(apCtx.currentState!.context),
            CustomSnackBar.success(
              message: 'تم ربط الحاويات بنجاح',
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
