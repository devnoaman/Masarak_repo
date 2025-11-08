import 'package:api_client/api_client.dart';

class EditReturnTripController extends Endpoint {
  EditReturnTripController({
    required String berthid,
    required String containernumber,
    required String containersize,
    required String driver,
    required int printingagent,
    String? secondcontainernumber,
    String? secondcontainersize,
    required String truck,
    required int id,
  }) : super(
         path: '/update-return/$id',
         authenticated: true,
         data: {
           'berth_id': berthid,
           'container_number': containernumber,
           'container_size': containersize,
           'driver': driver,
           'printing_agent': printingagent,
           'second_container_number': secondcontainernumber,
           'second_container_size': secondcontainersize,
           'truck': truck,
         },
         method: HTTPMethod.put,
         responseDecoder: (data) {
           print(data);
           if ((data as Map)['status'] == "success") {
             return true;
           } else {
             return false;
           }
         },
       );
}
