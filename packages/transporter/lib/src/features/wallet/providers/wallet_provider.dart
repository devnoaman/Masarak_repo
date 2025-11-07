import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared/shared.dart';
import 'package:transporter/src/features/wallet/controllers/wallet_controller.dart';

final walletProvider =
    StateNotifierProvider<WalletNotifier, GlobalState<WalletResponse, void>>(
      (ref) {
        return WalletNotifier();
      },
    );

class WalletNotifier extends StateNotifier<GlobalState<WalletResponse, void>> {
  WalletNotifier()
    : super(
        GlobalState.initial(),
      ) {
    get();
  }
  WalletController controller = WalletController();
  get() async {
    state = GlobalState.loading();
    try {
      var res = await controller.call() as WalletResponse?;
      if (res != null) {
        state = GlobalState.loaded(data: res);
      }
    } catch (e) {
      print(e);
    }
  }
}
