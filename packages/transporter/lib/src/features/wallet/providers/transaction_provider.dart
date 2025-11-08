import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared/shared.dart';
import 'package:transporter/src/features/wallet/controllers/report_controller.dart';
import 'package:transporter/src/features/wallet/providers/transaction_filter_provider.dart';
import 'package:shared/src/models/transaction_filter_data/transaction_filter_data.dart';

final transactionProvider =
    StateNotifierProvider<
      TransactionNotifier,
      GlobalState<List<TransactionData>, void>
    >((ref) {
      var filter = ref.watch(transactionFilterDataProvider);
      return TransactionNotifier(ref, filter);
    });

class TransactionNotifier
    extends StateNotifier<GlobalState<List<TransactionData>, String>> {
  final Ref ref;
  TransactionFilterData filter;
  bool _isDisposed = false;

  TransactionNotifier(this.ref, this.filter) : super(GlobalState.initial()) {
    ref.onDispose(() {
      _isDisposed = true;
    });
    print('TransactionNotifier rebuilding with new filter: $filter');

    paginationData = TransactionFilterData.fromJson(
      {
        "page": 1,
        "per_page": 10,
      }..addAll({
        "startDate": filter.startDate?.toIso8601String(),
        "endDate": filter.endDate?.toIso8601String(),
        "reportType": filter.reportType,
      }),
    );
    getWalletData();
  }
  late TransactionFilterData paginationData;
  PaginatedRes<TransactionData>? res;

  // List<TransactionData> allTransactions = [];
  // List<TransactionData> depositTransactions = [];
  // List<TransactionData> withdrawTransactions = [];

  getWalletData() async {
    WlletRepotController controller = WlletRepotController(
      data: paginationData.toJson(),
    );
    state = GlobalState.loading();
    try {
      res = await controller.call() as PaginatedRes<TransactionData>?;
      if (_isDisposed) return;
      if (res != null && res!.data.isNotEmpty) {
        state = GlobalState.loaded(
          data: [...?res?.data],
        );
      } else {
        state = GlobalState.empty();
      }
    } catch (e) {
      if (_isDisposed) return;
      print(e);
      state = GlobalState.error(e: e.toString());
    }
  }

  void refresh() {
    getWalletData();
  }

  fetchNext() async {
    if (res == null || res!.nextPageUrl == null) return;
    try {
      paginationData = paginationData.copyWith(
        page: (paginationData.page ?? 0) + 1,
      );
      WlletRepotController controller = WlletRepotController(
        data: paginationData.toJson(),
      );
      res =
          await controller.call(paginationData.toJson())
              as PaginatedRes<TransactionData>?;
      if (_isDisposed) return;
      if (res != null && res!.data.isNotEmpty) {
        state = GlobalState.loaded(
          data: [
            ...(state as Loaded<List<TransactionData>, void>).data,
            ...?res?.data,
          ],
        );
      }
    } catch (e) {
      state = GlobalState.error(
        e: "حدث خطأ ، يرجى اعادة المحاولة",
      );
    }
  }
}
