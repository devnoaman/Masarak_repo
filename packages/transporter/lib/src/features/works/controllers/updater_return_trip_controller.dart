import 'package:api_client/api_client.dart';

class UpdaterReturnTripController extends Endpoint {
  UpdaterReturnTripController({
    required int? berthId,
    required String? pathId,
    required String? containerNumber,
    required String? containerSize,
    required String? driver,
    required int? printingAgent,
    required int? secondContainerNumber,
    required int? secondContainerSize,
    required String? truck,
  }) : super(
         path: '/update-return/$pathId',
         authenticated: true,
         data: {
           'berth_id': berthId,
           'container_number': containerNumber,
           'container_size': containerSize,
           'driver': driver,
           'printing_agent': printingAgent,
           'second_container_number': secondContainerNumber,
           'second_container_size': secondContainerSize,
           'truck': truck,
         },
         method: HTTPMethod.put,
         responseDecoder: (data) {
           print(data);
           if ((data as Map)['code'] == "success") {
             return true;
           } else {
             return false;
           }
         },
       );
}
