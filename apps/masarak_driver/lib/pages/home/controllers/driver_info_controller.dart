import 'package:api_client/api_client.dart';
import 'package:masarak_driver/model/driver_info/driver_info.dart';
import 'package:masarak_driver/network/api/endpoints.dart';

class DriverInfoController extends Endpoint<DriverInfo> {
  DriverInfoController({super.data})
    : super(
        path: Endpoints.driverInfo,
        authenticated: true,
        responseDecoder: (data) {
          return DriverInfo.fromJson(data);
        },
      );
}
