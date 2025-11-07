import 'package:api_client/api_client.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:driver/src/app/error_handling/error_handling.dart';
import '../model/driver_info/driver_info.dart';
import 'package:shared/shared.dart';
import '../controller/driver_info_controller.dart';
//import 'package:masarak_driver/services/storage/email_password_storage.dart';

final driverInfoProvider =
    StateNotifierProvider<DriverInfoNotifier, GlobalState<DriverInfo, String>>((
      ref,
    ) {
      //final dio = ref.read(dioProvider);
      return DriverInfoNotifier(ref);
    });

class DriverInfoNotifier
    extends StateNotifier<GlobalState<DriverInfo, String>> {
  final Ref ref;

  DriverInfoNotifier(this.ref) : super(GlobalState.initial()) {
    get();
  }
  Future<void> get() async {
    if (mounted) {
      // state = state.copyWith(isLoading: true);
      state = GlobalState.loading();

      // final token = await AuthInfo.getAcessToken();
      final me = await AuthManager.instance.me();
      // final driverPhoto = await AuthInfo.readDriverPhoto();

      UserModel? user;

      try {
        user = UserModel.fromJson(me?["user"]);
      } catch (e) {
        print(e);
      }
      var mobile = user?.mobile;
      DriverInfoController cnt = DriverInfoController(
        data: {'mobile': '$mobile', "role": "Driver"},
      );

      try {
        // final response = await dio.get(
        //   Endpoints.driverInfo,
        //   data: {'mobile': '$mobile'},
        //   options: Options(headers: {'Authorization': 'Bearer $token'}),
        // );
        var info = await cnt.call();
        if (info != null) {
          state = GlobalState.loaded(data: info);
        }
      } on DioException catch (e) {
        state = GlobalState.error(e: ServerFailure.serverError(e).message);
      } catch (e) {
        state = GlobalState.error(
          e: "حدث خطأ ، يرجى التحقق من المعلومات واعادة المحاولة",
        );
      }
    }
  }
}
