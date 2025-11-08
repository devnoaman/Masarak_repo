import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared/shared.dart';
import 'package:transporter/src/features/returns/controllers/returns_controller.dart';
import 'package:transporter/src/features/returns/providers/returns_filter_provider.dart';

final returnsProvider =
    StateNotifierProvider<
      ReturnsNotifier,
      GlobalState<List<ReturnTripModel>, void>
    >(
      (ref) {
        var filter = ref.watch(returnsFilterDataProvider);

        return ReturnsNotifier(ref, filter);
      },
    );

class ReturnsNotifier
    extends StateNotifier<GlobalState<List<ReturnTripModel>, void>> {
  final Ref ref;
  ReturnsFilterData filter;
  ReturnsNotifier(this.ref, this.filter)
    : super(
        GlobalState.initial(),
      ) {
    paginationData = ReturnQueryDto.fromJson(
      {
        "page": 1,
        "per_page": 10,
      }..addAll({
        "trip_name": filter.tripName,
        "containerNumber": filter.containerNumber,
        "driver": filter.driver?["id"],
        "truck": filter.truck?["id"],
        "berth": filter.berth?["id"],
      }),
    );

    get();
  }
  late ReturnQueryDto paginationData;

  PaginatedRes<ReturnTripModel>? res;
  get() async {
    ReturnsController controller = ReturnsController(
      data: paginationData.toJson(),
    );
    state = GlobalState.loading();
    try {
      res = await controller.call() as PaginatedRes<ReturnTripModel>?;
      if (res != null && res!.data.isNotEmpty) {
        state = GlobalState.loaded(
          data: [...?res?.data],
        );
      } else {
        state = GlobalState.empty();
      }
    } catch (e) {
      print(e);
    }
  }

  void refresh() {
    // paginationData = ReturnQueryDto.fromJson({
    //   "page": 1,
    //   "per_page": 10,
    // });
    get();
  }

  fetchNext() async {
    // state = GlobalState.loading();

    if (res == null || res!.nextPageUrl == null) return;
    try {
      paginationData = paginationData.copyWith(
        page: (paginationData.page ?? 0) + 1,
      );
      ReturnsController controller = ReturnsController(
        data: paginationData.toJson(),
      );
      res =
          await controller.call(paginationData.toJson())
              as PaginatedRes<ReturnTripModel>?;
      if (res != null && res!.data.isNotEmpty) {
        state = GlobalState.loaded(
          data: [
            ...(state as Loaded<List<ReturnTripModel>, void>).data,
            ...?res?.data,
          ],
        );
      }
    } catch (e) {
      print(e);
    }
  }
}
