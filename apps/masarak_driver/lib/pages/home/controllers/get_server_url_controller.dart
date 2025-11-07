import 'package:api_client/api_client.dart';
import 'package:masarak_driver/model/driver_info/driver_info.dart';
import 'package:masarak_driver/network/api/endpoints.dart';

class GetServerUrlController extends Endpoint {
  GetServerUrlController({super.data})
    : super(
        path: Endpoints.serverBaseUrlGetter,
        // authenticated: true,
        responseDecoder: (data) {
          Configuration.baseUrl = data['url'];
          // return DriverInfo.fromJson(data);
        },
      );
}
