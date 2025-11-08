// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared/shared.dart';
import 'package:transporter/src/features/works/providers/cencel_trip_provider.dart';

class CancelTrip extends HookConsumerWidget {
  const CancelTrip({
    super.key,
    required this.trip,
  });
  final ReturnTripModel trip;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var state = ref.watch(cancelTripProvider);
    var container = useState<Map<String, dynamic>?>({});
    var printAgent = useState<Map<String, dynamic>?>({});
    return PopScope(
      onPopInvokedWithResult: (didPop, result) {
        ref.invalidate(cancelTripProvider);
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
                    'الغاء الرحلة',
                    style: context.textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'هل انت متأكد من الغاء الرحلة',
                    style: context.textTheme.bodyLarge!.copyWith(
                      // fontWeight: FontWeight.w900,
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  8.hGap,
                  Text(
                    '${trip.tripName}',
                    style: context.textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  8.hGap,
                  Text(
                    'لا يمكن التراجع عن هذا الاجراء',
                    style: context.textTheme.bodyLarge!.copyWith(
                      // fontWeight: FontWeight.w900,
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  16.hGap,
                  Divider(
                    height: 1.5,
                    color: Colors.grey.shade500,
                  ),
                  IntrinsicHeight(
                    child: Row(
                      spacing: 8,
                      children: [
                        Expanded(
                          child: TextButton(
                            onPressed: switch (state) {
                              Initial<String, void>() ||
                              Error<String, void>() => () async {
                                if (container.value == null ||
                                    printAgent.value == null) {
                                  return;
                                }
                                var result = await ref
                                    .read(
                                      cancelTripProvider.notifier,
                                    )
                                    .setInformation(
                                      tripName: trip.tripName,
                                      tripUuid: trip.tripUuid,
                                      jobRequest: trip.jobRequest,

                                      // pathId: trip.tripUuid,
                                      // berthId: container.value?['berth_id'],
                                      // containerNumber:
                                      //     container.value?['container_number'],
                                      // containerSize:
                                      //     container.value?['container_size'],
                                      // driver: trip.driver,
                                      // printingAgent: printAgent.value?['id'],
                                      // secondContainerNumber: container
                                      //     .value?['second_container_number'],
                                      // secondContainerSize: container
                                      //     .value?['second_container_size'],
                                      // truck: trip.truck,
                                    );
                                if (result) {
                                  Navigator.of(context).pop();
                                }
                              },

                              _ => null,
                            },
                            style: ButtonStyle(
                              elevation: WidgetStatePropertyAll(0),
                              textStyle: WidgetStatePropertyAll(
                                context.textTheme.bodyLarge!,
                              ),
                              foregroundColor: WidgetStatePropertyAll(
                                Colors.black,
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
                        ),

                        VerticalDivider(
                          width: 1.5,
                          thickness: 1,
                          color: Colors.grey.shade500,
                        ),

                        Expanded(
                          child: TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            style: ButtonStyle(
                              elevation: WidgetStatePropertyAll(0),

                              textStyle: WidgetStatePropertyAll(
                                context.textTheme.bodyLarge!,
                              ),
                              foregroundColor: WidgetStatePropertyAll(
                                Colors.red,
                              ),
                            ),
                            child: Text(
                              'الغاء',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ), //
                  //
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
