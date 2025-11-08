import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared/src/models/transaction_filter_data/transaction_filter_data.dart';

final transactionFilterDataProvider =
    StateNotifierProvider<TransactionFilterDataNotifier, TransactionFilterData>(
      (ref) {
        return TransactionFilterDataNotifier();
      },
    );

class TransactionFilterDataNotifier
    extends StateNotifier<TransactionFilterData> {
  TransactionFilterDataNotifier()
    : super(
        TransactionFilterData(
          startDate: DateTime.now().subtract(
            const Duration(days: 5),
          ),
          endDate: DateTime.now(),
        ),
      );
  update({
    DateTime? startDate,
    DateTime? endDate,
    int? reportType,
    int? page,
    int? perPage,
  }) {
    state = state.copyWith(
      startDate: startDate ?? state.startDate,
      endDate: endDate ?? state.endDate,
      reportType: reportType ?? state.reportType,
      page: page,
      perPage: perPage,
    );
  }

  clear() {
    state = TransactionFilterData();
  }
}
