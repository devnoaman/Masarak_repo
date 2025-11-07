import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared/shared.dart';

final returnsFilterDataProvider =
    StateNotifierProvider<ReturnsFilterDataNotifier, ReturnsFilterData>((ref) {
      return ReturnsFilterDataNotifier();
    });

class ReturnsFilterDataNotifier extends StateNotifier<ReturnsFilterData> {
  ReturnsFilterDataNotifier() : super(ReturnsFilterData());
  update({
    // String? orderNumber,
    String? containerNumber,
    Map<String, dynamic>? driver,
    Map<String, dynamic>? truck,
    Map<String, dynamic>? berth,
  }) {
    state = state.copyWith(
      containerNumber: containerNumber,
      driver: driver,
      truck: truck,
      berth: berth,
    );
  }

  clear() {
    state = ReturnsFilterData();
  }
}
