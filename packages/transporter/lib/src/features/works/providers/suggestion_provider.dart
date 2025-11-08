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
  Future get(LinkProb prob, Map<String, dynamic>? requestBody) async {
    state = GlobalState.loading();

    Map<String, dynamic> q = {
      'search': prob.fieldName,
    };

    var data = q;
    if (requestBody != null) data.addEntries(requestBody.entries);
    SuggestionsController controller = SuggestionsController(
      path: prob.modelName,
      queryParameters: data,

      // data: data,
    );
    try {
      var res = await controller.call();
      if (res == null) state = GlobalState.empty();
      state = GlobalState.loaded(data: res);
      return res;
    } catch (e, s) {
      state = GlobalState.error(e: '$e $s');
      print(e);
    }
  }
}
