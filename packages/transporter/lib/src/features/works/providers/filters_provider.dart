import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared/shared.dart';

final filterDataProvider =
    StateNotifierProvider<FilterDataNotifier, FilterData>((ref) {
      return FilterDataNotifier();
    });

class FilterDataNotifier extends StateNotifier<FilterData> {
  FilterDataNotifier() : super(FilterData());
  update({String? orderNumber, String? containerNumber}) {
    state = state.copyWith(
      orderNumber: orderNumber,
      containerNumber: containerNumber,
    );
  }

  clear() {
    state = FilterData();
  }
}
