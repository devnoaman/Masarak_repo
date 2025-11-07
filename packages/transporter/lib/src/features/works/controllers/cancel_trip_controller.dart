import 'package:api_client/api_client.dart';

class CancelTripController extends Endpoint {
  CancelTripController({
    required String? tripName,
    required String? tripUuid,
    required String? jobRequest,
  }) : super(
         path: '/cancel-trip',
         authenticated: true,
         data: {
           'job_request': jobRequest,
           'trip_name': tripName,
           'trip_uuid': tripUuid,
         },
         method: HTTPMethod.post,
         responseDecoder: (data) {
           print(data);
           if ((data as Map)['code'] == "CANCELTRIP") {
             return true;
           } else {
             return false;
           }
         },
       );
}
