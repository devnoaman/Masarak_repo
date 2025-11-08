import 'package:api_client/api_client.dart';

class EditPrintingAgentController extends Endpoint {
  EditPrintingAgentController({
    required dynamic tripId,
    required int printingAgentId,
  }) : super(
         path: 'https://dev-masark.gwy.iq/api/update-printing-agent',
         //  path: '/update-printing-agent',
         authenticated: true,
         data: {
           'trip_id': tripId,
           'printing_agent_id': printingAgentId,

           //  'load_av': false,
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
