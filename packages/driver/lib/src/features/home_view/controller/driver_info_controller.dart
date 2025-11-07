import 'package:api_client/api_client.dart';
import '../model/driver_info/driver_info.dart';


class DriverInfoController extends Endpoint<DriverInfo> {
  DriverInfoController({super.data})
    : super(
        path: '/info',
        authenticated: true,
        responseDecoder: (data) {
          return DriverInfo.fromJson(data);
        },
      );
}
