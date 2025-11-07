import 'package:api_client/api_client.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared/shared.dart';

// final userProvider = FutureProvider((ref) async {
//   // return ;
//   return await AuthManager.instance.me().then((mngr) {
//     if (mngr != null) {
//       var user = UserModel.fromJson(mngr["user"]);
//       return user;
//     } else {
//       return null;
//     }
//   });

//   // return mngr;
// });

final userProvider =
    StateNotifierProvider<UserNotifier, GlobalState<UserModel, void>>((ref) {
      return UserNotifier();
    });

class UserNotifier extends StateNotifier<GlobalState<UserModel, void>> {
  UserNotifier() : super(GlobalState.initial()) {
    getUser();
  }
  var mngr = AuthManager.instance;
  getUser() async {
    state = GlobalState.loading();
    var u = await mngr.me(
      // responseDecoder: (data) {
      //   return UserModel.fromJson(data["user"]);
      // },
    );
    if (u != null) {
      var user = UserModel.fromJson(u["user"]);
      state = GlobalState.loaded(data: user);
      // return user;
    } else {
      state = GlobalState.error(e: 'e');
      // return null;
    }
  }
}
