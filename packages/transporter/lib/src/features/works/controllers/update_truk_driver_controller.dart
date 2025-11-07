import 'package:api_client/api_client.dart';

class UpdateTruckDriverController extends Endpoint {
  UpdateTruckDriverController({
    required String tripid,
    required String tripName,
    required String truckid,
    required String driverId,
    required bool isReturn,
  }) : super(
         path: '/update-driver-truck',
         authenticated: true,
         data: {
           'driver_id': driverId,
           'is_return': isReturn,
           'trip_name': tripName,
           'truck_id': truckid,
         },
         method: HTTPMethod.post,
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
