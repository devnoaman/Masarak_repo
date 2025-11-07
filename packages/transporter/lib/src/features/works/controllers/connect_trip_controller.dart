import 'package:api_client/api_client.dart';
import 'package:shared/shared.dart';

class ConnectTripController extends Endpoint {
  ConnectTripController({
    required JobRequest jobRequest,
    required String uniqueIdentifier,
    required CanceledTrip trip,
    required Map<String, dynamic> driver,
    required Map<String, dynamic> truck,
    required int printingAgent,
  }) : super(
         path: '/connect-drivers',
         authenticated: true,
         data: {
           "formValue": [
             {
               "hash": "a4fb842e-64a0-5d78-9cc2-9516c0634adb",
               // "import_id": "MEDU2412606",
               // "import_size": "20",
               // "import_kind":
               //     "CONCENTRATED TOMATO PASTE 2024CROP BRIX 36/38% COL",
               // "import_BOF": "MEDUVX041910",
               "export_id": null,
               // "export_size": null,
               // "export_kind": null,
               // "export_BOF": null,
               // "return_id": null,
               // "return_size": null,
               // "return_kind": null,
               // "return_BOF": null,
               "unique_identifier_customs_number": uniqueIdentifier,
               "driver": driver['id'],
               "truck": truck['id'],
               "truckObj": {
                 "value": truck['id'] ?? "",
                 "label": truck['plate'],
                 "description": "متاح",
                 "id": truck['id'],
                 "plate": truck['plate'],
                 "city_name": truck['city_name'],
                 "status": truck['status'],
                 "trips_count": truck['trips_count'],
                 "trips": truck['trips'],
                 "trip_details": truck['trip_details'],
               },
               "isProcessing": true,
               "HasError": false,
               "message": "",
             },
           ],
           "job_request": jobRequest.orderNumber,
           "printing_agent": printingAgent,
           "operation": jobRequest.operation,
         },
         method: HTTPMethod.post,
         responseDecoder: (data) {
           print(data);
           // if ((data as Map)['code'] == "SUCCESS") {
           //   return true;
           // } else {
           //   return false;
           // }
         },
       );
}
