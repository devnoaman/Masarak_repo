import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared/shared.dart';
import 'package:transporter/src/features/returns/providers/returns_filter_provider.dart';
import 'package:transporter/src/features/works/components/suggestable_text_field.dart';

class ReturnsFilterScreen extends HookConsumerWidget {
  const ReturnsFilterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var res = ref.watch(returnsFilterDataProvider);
    var containerNumber = useTextEditingController(text: res.containerNumber);
    var driver = useState<Map<String, dynamic>>(res.driver ?? {});
    var truck = useState<Map<String, dynamic>>(res.truck ?? {});
    var berth = useState<Map<String, dynamic>>(res.berth ?? {});
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'فلترة النتائج',
          style: context.textTheme.bodyLarge!.copyWith(
            fontWeight: FontWeight.w400,
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              padding: 16.allPadding,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Column(
                spacing: 24,
                children: [
                  TextFormField(
                    controller: containerNumber,
                    style: context.textTheme.bodyLarge!.copyWith(
                      color: Colors.white,
                    ),
                    decoration: _decoration(
                      hintText: 'رقم الحاوية',
                      context: context,
                    ),
                  ),
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
                ],
              ),
            ),
            24.hGap,
            Column(
              spacing: 16,
              children: [
                ElevatedButton.icon(
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
                    minimumSize: WidgetStatePropertyAll(
                      Size(context.width, 55),
                    ),
                    backgroundColor: WidgetStatePropertyAll(
                      context.theme.primaryColor,
                    ),
                    foregroundColor: WidgetStatePropertyAll(Colors.black),
                  ),

                  label: Text(
                    'فلترة',
                    style: context.textTheme.bodyLarge!.copyWith(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    ref.read(returnsFilterDataProvider.notifier).clear();
                    Navigator.of(context).pop();
                  },
                  style: ButtonStyle(
                    minimumSize: WidgetStatePropertyAll(
                      Size(context.width, 55),
                    ),

                    elevation: WidgetStatePropertyAll(0),
                    side: WidgetStatePropertyAll(
                      BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    backgroundColor: WidgetStatePropertyAll(
                      context.theme.primaryColor.withAlpha(20),
                    ),
                  ),
                  label: Text(
                    'حذف الفلترة',
                    style: context.textTheme.bodyLarge!.copyWith(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            8.hGap,
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
        color: Colors.black,
      ),

      labelStyle: context.textTheme.bodyLarge!.copyWith(
        color: Colors.black,
      ),

      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(36),
      ),
    );
  }
}
