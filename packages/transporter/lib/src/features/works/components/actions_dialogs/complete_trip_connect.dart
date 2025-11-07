// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared/shared.dart';
import 'package:transporter/src/features/works/components/raw_text_field.dart';
import 'package:transporter/src/features/works/components/suggestable_text_field.dart';
import 'package:transporter/src/features/works/providers/connect_trip_provider.dart';

class CompleteTripConnect extends HookConsumerWidget {
  const CompleteTripConnect({
    super.key,
    required this.trip,
    required this.jobRequest,
  });
  final CanceledTrip trip;
  final JobRequest jobRequest;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var state = ref.watch(connectTripProvider);
    // var container = useState<Map<String, dynamic>?>({});
    var printAgent = useState<Map<String, dynamic>?>({});
    var driver = useState<Map<String, dynamic>>({});
    var truck = useState<Map<String, dynamic>>({});
    final formkey = GlobalKey<FormState>();
    var uniqueIdentifier = useTextEditingController();

    return PopScope(
      onPopInvokedWithResult: (didPop, result) {
        ref.invalidate(connectTripProvider);
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
              child: Form(
                key: formkey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    8.hGap,
                    Text(
                      'Connect the trip',
                      style: context.textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    8.hGap,
                    // 8.hGap,
                    SuggestableTextField(
                      label: 'مخول الطباعة',
                      keyToView: 'name',
                      initialValue: printAgent.value,
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'مخول الطباعة لا يمكن ان يكون فارغاواختر مخولا للطباعة';
                        }
                        return null;
                      },
                      onSelected: (value) {
                        print(value);
                        printAgent.value = value;
                      },
                      prob: LinkProb(
                        modelName: '/search-printing-agents',
                        fieldName: 'أ',
                      ),
                    ),
                    SuggestableTextField(
                      label: 'السائق',
                      keyToView: 'name',
                      initialValue: driver.value,
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'حقل السائق لا يمكن ان يكون فارغا, قم باختيار السائق';
                        }
                        return null;
                      },
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
                      initialValue: truck.value,
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'حقل الشاحنة لا يمكن ان يكون فارغا, قم باختيار الشاحنة';
                        }
                        return null;
                      },
                      onSelected: (value) {
                        print('selected value : $value');
                        truck.value = value;
                      },

                      prob: LinkProb(
                        modelName: '/search-trucks',
                        fieldName: '1000',
                      ),
                    ),
                    8.hGap,
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RawTextField(
                        controller: uniqueIdentifier,
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return 'الرقم الجمركي لا يمكن ان يكون فارغا, قم بكتابة الرقم الجمركي';
                          }
                          return null;
                        },
                        hintText: 'الرقم الجمركي الموحد',
                      ),
                    ),
                    8.hGap,
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: switch (state) {
                          Initial<String, void>() ||
                          Error<String, void>() => () async {
                            if (formkey.currentState != null &&
                                formkey.currentState!.validate()) {
                              if (printAgent.value == null) {
                                return;
                              }
                              var result = await ref
                                  .read(connectTripProvider.notifier)
                                  .setInformation(
                                    jobRequest: jobRequest,
                                    trip: trip,
                                    driver: driver.value,
                                    truck: truck.value,
                                    printingAgent: printAgent.value?['id'],
                                    uniqueIdentifier: uniqueIdentifier.text,
                                  );
                              if (result) {
                                Navigator.of(context).pop();
                              }
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
      ),
    );
  }
}
