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

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'تعديل السائق / الشاحنة',
          style: context.textTheme.bodyLarge!.copyWith(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
        centerTitle: true,
      ),
      body: PopScope(
        onPopInvokedWithResult: (didPop, result) {
          ref.invalidate(updateDriverTruckProvider);
        },
        child: Padding(
          padding: EdgeInsets.only(
            top: 12,
            left: 16,
            right: 16,
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Container(
            padding: 16.allPadding,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              spacing: 24,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'السائق',
                      style: context.textTheme.bodyLarge!.copyWith(
                        color: Colors.black54,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SuggestableTextField(
                      label: 'اختر السائق',
                      keyToView: 'name',
                      initialValue: {
                        "mobile": trip.driver?.split('/').last ?? '---',
                        "name": trip.driver?.split('/').first ?? '---',
                      },
                      onSelected: (value) {
                        driver.value = value;
                      },
                      style: SuggestableTextFieldStyle.fullScreen,
                      showCheckbox: true,
                      prob: LinkProb(
                        modelName: '/search-drivers-return',
                        fieldName: 'ا',
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'الشاحنة',
                      style: context.textTheme.bodyLarge!.copyWith(
                        color: Colors.black54,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SuggestableTextField(
                      label: 'اختر الشاحنة',
                      keyToView: 'plate',
                      initialValue: {
                        "id": trip.localTruck?.id ?? '---',
                        "plate": trip.localTruck?.plate ?? '---',
                      },
                      onSelected: (value) {
                        print('selected value : $value');
                        truck.value = value;
                      },
                      style: SuggestableTextFieldStyle.fullScreen,
                      showCheckbox: true,
                      prob: LinkProb(
                        modelName: '/search-trucks',
                        fieldName: '1000',
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
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
                    foregroundColor: WidgetStatePropertyAll(Colors.black),
                    shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(20),
                      ),
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
                ), //
              ],
            ),
          ),
        ),
      ),
    );
  }
}
