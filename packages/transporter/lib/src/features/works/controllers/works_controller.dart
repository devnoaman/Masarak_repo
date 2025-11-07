import 'package:api_client/api_client.dart';
import 'package:shared/shared.dart';

class WorksController extends Endpoint<WorkModel> {
  WorksController({super.data})
    : super(
        path: '/my-jobs',
        authenticated: true,
        responseDecoder: (data) {
          print(data);
          return WorkModel.fromJson(data);
        },
      );
}
