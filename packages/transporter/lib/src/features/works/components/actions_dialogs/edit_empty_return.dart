// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared/shared.dart';
import 'package:transporter/src/features/works/components/suggestable_text_field.dart';
import 'package:transporter/src/features/works/providers/update_return_container.dart';

class EditEmptyReturn extends HookConsumerWidget {
  const EditEmptyReturn({
    super.key,
    required this.trip,
  });
  final ConnectedTrip trip;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var state = ref.watch(updateReturnContainerProvider);
    var container = useState<Map<String, dynamic>?>({});
    var printAgent = useState<Map<String, dynamic>?>({});
    return PopScope(
      onPopInvokedWithResult: (didPop, result) {
        ref.invalidate(updateReturnContainerProvider);
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
                    'تحرير عودة الفارغ',
                    style: context.textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  8.hGap,
                  SuggestableTextField(
                    label: 'الحاوية',
                    keyToView: 'name',
                    onSelected: (value) {
                      print(value);
                      container.value = value;
                    },
                    prob: LinkProb(
                      modelName: '/search-trips',
                      fieldName: 'e',
                    ),
                  ),
                  SuggestableTextField(
                    label: 'مخول الطباعة',
                    keyToView: 'name',
                    onSelected: (value) {
                      print(value);

                      printAgent.value = value;
                    },
                    prob: LinkProb(
                      modelName: '/search-printing-agents',
                      fieldName: 'أ',
                    ),
                  ),
                  8.hGap,
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: switch (state) {
                        Initial<String, void>() ||
                        Error<String, void>() => () async {
                          if (container.value == null ||
                              printAgent.value == null) {
                            return;
                          }
                          var result = await ref
                              .read(updateReturnContainerProvider.notifier)
                              .setInformation(
                                pathId: trip.tripUuid,
                                berthId: container.value?['berth_id'],
                                containerNumber:
                                    container.value?['container_number'],
                                containerSize:
                                    container.value?['container_size'],
                                driver: trip.driver,
                                printingAgent: printAgent.value?['id'],
                                secondContainerNumber:
                                    container.value?['second_container_number'],
                                secondContainerSize:
                                    container.value?['second_container_size'],
                                truck: trip.truck,
                              );
                          if (result) {
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
