import 'package:api_client/api_client.dart';
import 'package:shared/shared.dart';

class WalletController extends Endpoint<WalletResponse> {
  WalletController()
    : super(
        path: '/wallet',
        authenticated: true,
        responseDecoder: (data) {
          return WalletResponse.fromJson(data);
        },
      );
}
