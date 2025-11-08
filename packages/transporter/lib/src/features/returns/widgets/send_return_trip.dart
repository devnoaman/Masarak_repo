// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared/shared.dart';
import 'package:transporter/src/features/returns/providers/send_return_provider.dart';

class SendReturnTrip extends HookConsumerWidget {
  const SendReturnTrip({
    super.key,
    required this.trip,
  });
  final ReturnTripModel trip;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var state = ref.watch(sendReturnTripProvider);
    return PopScope(
      onPopInvokedWithResult: (didPop, result) {
        ref.invalidate(sendReturnTripProvider);
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
                    'ارسال رحلة عودة فارغ',
                    style: context.textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'هل انت متأكد انك تريد ارسال رحلة فارغة للحاوية ',
                    style: context.textTheme.bodyLarge!.copyWith(
                      // fontWeight: FontWeight.w900,
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  8.hGap,
                  Text(
                    '${trip.containerNumber}',
                    style: context.textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.w900,
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
                                      sendReturnTripProvider.notifier,
                                    )
                                    .setInformation(
                                      id: trip.id,
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
                                'نعم، أرسلها',
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
