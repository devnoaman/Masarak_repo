import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared/shared.dart';
import 'package:transporter/src/features/works/controllers/update_unique_identifier.dart';

final updateUniqueIdentifierProvider =
    StateNotifierProvider<UniqueIdentifierNotifier, GlobalState<String, void>>(
      (ref) {
        return UniqueIdentifierNotifier();
      },
    );

class UniqueIdentifierNotifier
    extends StateNotifier<GlobalState<String, void>> {
  UniqueIdentifierNotifier()
    : super(
        GlobalState.initial(),
      ) {
    // get();
  }

  WorkModel? model;
  Future<bool> setIdentifier({
    required String tripUid,
    required String uniqueIdentifierNumber,
  }) async {
    state = GlobalState.loading();
    UpdateUniqueIdentifier controller = UpdateUniqueIdentifier(
      tripUid: tripUid,
      uniqueIdentifierNumber: uniqueIdentifierNumber,
    );
    try {
      var res = await controller.call() as bool?;
      // state =
      return res == true;
      // if (res==) {
      //   state = GlobalState.loaded(
      //     data: [
      //       ...?res.jobRequestsRaw,
      //     ],
      //   );
      // }
    } catch (e) {
      print(e);
      return false;
    }
  }
}
