import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared/shared.dart';
import 'package:transporter/src/features/works/controllers/works_controller.dart';

final worksProvider =
    StateNotifierProvider<WalletNotifier, GlobalState<List<JobRequest>, void>>(
      (ref) {
        return WalletNotifier();
      },
    );

class WalletNotifier
    extends StateNotifier<GlobalState<List<JobRequest>, void>> {
  WalletNotifier()
    : super(
        GlobalState.initial(),
      ) {
    get();
  }
  WorksController controller = WorksController(
    data: {
      "page": 1,
      "page_size": 10,
    },
  );
  WorkModel? model;
  get() async {
    state = GlobalState.loading();
    try {
      var res = await controller.call() as WorkModel?;
      if (res != null &&
          res.jobRequestsRaw != null &&
          res.jobRequestsRaw!.isNotEmpty) {
        state = GlobalState.loaded(
          data: [
            ...?res.jobRequestsRaw,
          ],
        );
      }
    } catch (e) {
      print(e);
    }
  }
}
