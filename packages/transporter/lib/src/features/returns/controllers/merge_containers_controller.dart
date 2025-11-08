import 'package:api_client/api_client.dart';

class MergeContainersController extends Endpoint {
  MergeContainersController({
    required dynamic jobRequest,
    required String containerNumber,
    required dynamic secondContainerNumber,
  }) : super(
         path: '/trip-merge-containers',
         authenticated: true,
         data: {
           'job_request': jobRequest,
           'container_number_1': containerNumber,
           'container_number_2': secondContainerNumber,
         },
         method: HTTPMethod.post,
         responseDecoder: (data) {
           print(data);
           if ((data as Map)['success'] == true) {
             return true;
           } else {
             return false;
           }
         },
       );
}
