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

  copyWith({
    String? tripName,
    String? containerNumber,
    Map<String, dynamic>? driver,
    Map<String, dynamic>? truck,
    Map<String, dynamic>? berth,
  }) {
    state = state.copyWith(
      tripName: tripName ?? state.tripName,
      containerNumber: containerNumber ?? state.containerNumber,
      driver: driver ?? state.driver,
      truck: truck ?? state.truck,
      berth: berth ?? state.berth,
    );
  }

  clear() {
    state = ReturnsFilterData();
  }
}
