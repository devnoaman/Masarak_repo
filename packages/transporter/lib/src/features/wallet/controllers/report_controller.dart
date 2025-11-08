import 'package:api_client/api_client.dart';
import 'package:shared/shared.dart';

class WlletRepotController extends Endpoint<PaginatedRes<TransactionData>> {
  WlletRepotController({super.data})
    : super(
        path: '/wallet-report',

        authenticated: true,
        responseDecoder: (data) {
          print(data);

          return PaginatedRes.fromJson(
            data['transactionsData'],
            (r) {
              return TransactionData.fromJson(r as Map<String, dynamic>);
            },
          );
        },
      );
}
