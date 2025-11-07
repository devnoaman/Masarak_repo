import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared/shared.dart';
import 'package:transporter/src/features/works/components/suggestable_text_field.dart';
import 'package:transporter/src/features/works/controllers/suggestions_controller.dart';

final suggestionsProvider =
    StateNotifierProvider<Notifier, GlobalState<List<dynamic>, void>>(
      (ref) {
        ref.onDispose(
          () {
            // call notifier dispose
          },
        );
        return Notifier();
      },
    );

class Notifier extends StateNotifier<GlobalState<List<dynamic>, void>> {
  Notifier()
    : super(
        GlobalState.initial(),
      ) {
    // get();
  }

  void dispose() {
    // implement dispose code to free the state
  }
  // WorkModel? model;
  Future get(LinkProb prob) async {
    state = GlobalState.loading();

    SuggestionsController controller = SuggestionsController(
      path: prob.modelName,
      queryParameters: {
        'search': prob.fieldName,
      },
    );
    try {
      var res = await controller.call();
      state = GlobalState.loaded(data: res);
      return res;
    } catch (e, s) {
      state = GlobalState.error(e: '$e $s');
      print(e);
    }
  }
}
