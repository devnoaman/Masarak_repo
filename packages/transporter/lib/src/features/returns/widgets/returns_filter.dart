// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shared/shared.dart';
import 'package:transporter/src/features/returns/providers/returns_filter_provider.dart';
import 'package:transporter/src/features/works/components/suggestable_text_field.dart';

class ReturnsFilter extends HookConsumerWidget {
  const ReturnsFilter({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var res = ref.watch(returnsFilterDataProvider);
    var containerNumber = useTextEditingController(text: res.containerNumber);
    var driver = useState<Map<String, dynamic>>(res.driver ?? {});
    var truck = useState<Map<String, dynamic>>(res.truck ?? {});
    var berth = useState<Map<String, dynamic>>(res.berth ?? {});
    return SizedBox(
      width: context.width,

      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          spacing: 8,
          children: [
            Text(
              'فلترة النتائج',
              style: context.textTheme.bodyLarge!.copyWith(
                fontWeight: FontWeight.w900,
                color: Colors.white,
              ),
            ),
            // TextFormField(
            //   // initialValue: res.orderNumber,
            //   controller: orderNumber,
            //   decoration: _decoration(
            //     hintText: 'رقم أمر التسليم',
            //     context: context,
            //   ),
            // ),
            Padding(
              padding: 8.8.symetric,
              child: TextFormField(
                // initialValue: res.containerNumber,
                controller: containerNumber,
                style: context.textTheme.bodyLarge!.copyWith(
                  color: Colors.white,
                ),
                decoration: _decoration(
                  hintText: 'رقم الحاوية',
                  context: context,
                ),
              ),
            ),
            // 8.hGap,
            SuggestableTextField(
              label: 'السائق',
              keyToView: 'name',
              initialValue: driver.value,
              onSelected: (value) {
                driver.value = value;
              },
              prob: LinkProb(
                modelName: '/search-drivers-return',
                fieldName: 'ا',
              ),
            ),
            // 8.hGap,
            SuggestableTextField(
              label: 'الشاحنة',
              keyToView: 'plate',
              initialValue: truck.value,
              onSelected: (value) {
                print('selected value : $value');
                truck.value = value;
              },

              prob: LinkProb(
                modelName: '/search-trucks',
                fieldName: '1000',
              ),
            ),
            SuggestableTextField(
              label: 'الرصيف',
              keyToView: 'name',
              initialValue: berth.value,
              onSelected: (value) {
                print('selected berth : $value');
                berth.value = value;
              },

              prob: LinkProb(
                modelName: '/search-berths',
                fieldName: '',
              ),
            ),
            Padding(
              padding: 8.0.symetric,
              child: ElevatedButton.icon(
                onPressed: () {
                  ref
                      .read(
                        returnsFilterDataProvider.notifier,
                      )
                      .update(
                        containerNumber: containerNumber.text,
                        driver: driver.value,
                        berth: berth.value,
                        truck: truck.value,
                      );
                  Navigator.of(
                    context,
                  ).pop();
                },
                style: ButtonStyle(
                  elevation: WidgetStatePropertyAll(0),
                  minimumSize: WidgetStatePropertyAll(Size(context.width, 55)),
                  backgroundColor: WidgetStatePropertyAll(
                    context.theme.primaryColor,
                  ),
                  foregroundColor: WidgetStatePropertyAll(Colors.white),
                ),
                icon: Icon(Iconsax.filter),
                label: Text('فلترة'),
              ),
            ),
            8.hGap,

            Padding(
              padding: 8.0.symetric,
              child: ElevatedButton.icon(
                onPressed: () {
                  ref.read(returnsFilterDataProvider.notifier).clear();
                  Navigator.of(context).pop();
                },
                style: ButtonStyle(
                  minimumSize: WidgetStatePropertyAll(Size(context.width, 55)),

                  elevation: WidgetStatePropertyAll(0),
                  side: WidgetStatePropertyAll(
                    BorderSide(
                      color: context.theme.primaryColor,
                    ),
                  ),
                  backgroundColor: WidgetStatePropertyAll(
                    context.theme.primaryColor.withAlpha(20),
                  ),
                ),
                icon: Icon(Iconsax.trush_square),
                label: Text('حذف الفلترة'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  InputDecoration _decoration({
    required String hintText,
    required BuildContext context,
  }) {
    return InputDecoration(
      labelText: hintText,
      hintText: hintText,
      hintStyle: context.textTheme.bodyLarge!.copyWith(
        color: Colors.white,
      ),

      labelStyle: context.textTheme.bodyLarge!.copyWith(
        color: Colors.white,
      ),

      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(36),
      ),
    );
  }
}
