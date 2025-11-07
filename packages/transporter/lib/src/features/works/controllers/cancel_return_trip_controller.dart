import 'package:api_client/api_client.dart';

class CancelReturnTripController extends Endpoint {
  CancelReturnTripController({
    required String? tripUuid,
  }) : super(
         path: '/cancel-return-trip',
         authenticated: true,
         data: {
           'trip_uuid': tripUuid,
         },
         method: HTTPMethod.post,
         responseDecoder: (data) {
           print(data);
           if ((data as Map)['code'] == "SUCCESS") {
             return true;
           } else {
             return false;
           }
         },
       );
}
