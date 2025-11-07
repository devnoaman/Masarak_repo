import 'package:api_client/api_client.dart';

class SuggestionsController extends Endpoint {
  SuggestionsController({
    required super.path,
    super.data,
    super.queryParameters,
  }) : super(
         authenticated: true,
         responseDecoder: (data) {
           print(data);
           return data;
           // return WorkModel.fromJson(data);
         },
       );
}
