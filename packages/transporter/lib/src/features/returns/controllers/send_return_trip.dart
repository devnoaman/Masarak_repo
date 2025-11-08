import 'package:api_client/api_client.dart';

class SendReturnTripController extends Endpoint {
  SendReturnTripController({required int id})
    : super(
        path: '/return-trips/$id/send',
        authenticated: true,
        method: HTTPMethod.post,
        data: {},
        responseDecoder: (data) {
          print('Return trip sent successfully');
          return true;
        },
      );
}
