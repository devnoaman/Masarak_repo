import 'package:api_client/api_client.dart';
import 'package:shared/shared.dart';

class ReturnsController extends Endpoint<PaginatedRes<ReturnTripModel>?> {
  ReturnsController({super.data})
    : super(
        path: '/return-list',

        authenticated: true,
        responseDecoder: (data) {
          print(data);

          return PaginatedRes.fromJson(
            data['returnTrips'],
            (r) {
              return ReturnTripModel.fromJson(r as Map<String, dynamic>);
            },
          );
        },
      );
}
