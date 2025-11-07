import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:masarak/network/api/client.dart';

final currentTimeProvider = FutureProvider.autoDispose<DateTime?>(
  (ref) async {
    return await ref
        .read(
          dioProvider,
        )
        .get(
          'https://timeapi.io/api/time/current/zone?timeZone=Asia%2FBaghdad',
        )
        .then(
      (res) {
        return DateTime.tryParse(
          res.data['dateTime'],
        );
      },
    ).onError(
      (_, __) => null,
    );
  },
);
