import 'package:api_client/api_client.dart';

class UpdateUniqueIdentifier extends Endpoint {
  UpdateUniqueIdentifier({
    required String tripUid,
    required String uniqueIdentifierNumber,
  }) : super(
         path: '/update-unique-custom-number',
         authenticated: true,
         data: {
           "trip_uuid": tripUid,
           "unique_identifier_customs_number": uniqueIdentifierNumber,
         },
         method: HTTPMethod.post,
         responseDecoder: (data) {
           print(data);
           if ((data as Map)['code'] == "SUCCESS") {
             return true;
           } else {
             return false;
           }
           // return WorkModel.fromJson(data);
         },
       );
}
