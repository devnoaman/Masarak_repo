// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared/shared.dart';
import 'package:transporter/src/features/works/providers/cencel_return_trip_provider.dart';
import 'package:transporter/src/features/works/providers/update_return_container.dart';

class CancelReturnTrip extends HookConsumerWidget {
  const CancelReturnTrip({
    super.key,
    required this.trip,
    required this.job,
  });
  final ConnectedTrip trip;
  final JobRequest job;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var state = ref.watch(cancelReturnTripProvider);
    return PopScope(
      onPopInvokedWithResult: (didPop, result) {
        ref.invalidate(cancelReturnTripProvider);
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
                    'الغاء رحلة عودة الفارغ',
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
                    '${trip.name}',
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
                                var result = await ref
                                    .read(
                                      cancelReturnTripProvider.notifier,
                                    )
                                    .setInformation(
                                      tripUuid: trip.tripUuid,
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
