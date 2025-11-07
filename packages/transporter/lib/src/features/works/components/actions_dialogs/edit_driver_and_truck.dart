// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared/shared.dart';
import 'package:transporter/src/features/works/components/suggestable_text_field.dart';
import 'package:transporter/src/features/works/providers/update_driver_truck_provider.dart';

class EditDriverAndTruck extends HookConsumerWidget {
  const EditDriverAndTruck({
    super.key,
    required this.trip,
  });
  final ConnectedTrip trip;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var state = ref.watch(updateDriverTruckProvider);
    var driver = useState<Map<String, dynamic>>({});
    var truck = useState<Map<String, dynamic>>({});
    return PopScope(
      onPopInvokedWithResult: (didPop, result) {
        ref.invalidate(updateDriverTruckProvider);
      },
      child: Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: SafeArea(
          child: SizedBox(
            width: context.width,
            child: Padding(
              padding: 8.0.symetric,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  8.hGap,
                  Text(
                    'تعديل السائق / الشاحنة',
                    style: context.textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  8.hGap,
                  SuggestableTextField(
                    label: 'السائق',
                    keyToView: 'name',
                    onSelected: (value) {
                      driver.value = value;
                    },
                    prob: LinkProb(
                      modelName: '/search-drivers-return',
                      fieldName: 'ا',
                    ),
                  ),
                  8.hGap,
                  SuggestableTextField(
                    label: 'الشاحنة',
                    keyToView: 'plate',
                    onSelected: (value) {
                      print('selected value : $value');
                      truck.value = value;
                    },

                    prob: LinkProb(
                      modelName: '/search-trucks',
                      fieldName: '1000',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: switch (state) {
                        Initial<String, void>() ||
                        Error<String, void>() => () async {
                          var result = await ref
                              .read(updateDriverTruckProvider.notifier)
                              .setInformation(
                                tripid: trip.tripUuid ?? '',
                                tripName: trip.name ?? '',
                                truckid: truck.value['id'],
                                driverId: driver.value['id'],
                                isReturn: false,
                              );
                          if (true) {
                            Navigator.of(context).pop();
                          }
                        },

                        _ => null,
                      },
                      style: ButtonStyle(
                        elevation: WidgetStatePropertyAll(0),
                        minimumSize: WidgetStatePropertyAll(
                          Size(
                            context.width,
                            55,
                          ),
                        ),
                        backgroundColor: WidgetStatePropertyAll(
                          context.theme.primaryColor,
                        ),
                        textStyle: WidgetStatePropertyAll(
                          context.textTheme.bodyLarge!,
                        ),
                        foregroundColor: WidgetStatePropertyAll(
                          context.theme.scaffoldBackgroundColor,
                        ),
                      ),
                      child: switch (state) {
                        Loading<String, void>() => SizedBox(
                          child: CircularProgressIndicator.adaptive(
                            backgroundColor: Colors.white,
                          ),
                        ),

                        _ => Text(
                          'تأكيد',
                        ),
                      },
                    ),
                  ), //
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
