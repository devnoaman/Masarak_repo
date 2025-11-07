// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shared/shared.dart';
import 'package:transporter/src/features/works/providers/filters_provider.dart';

class ResponseFilter extends HookConsumerWidget {
  const ResponseFilter({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var res = ref.watch(filterDataProvider);
    var containerNumber = useTextEditingController(text: res.containerNumber);
    var orderNumber = useTextEditingController(text: res.orderNumber);
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
            TextFormField(
              // initialValue: res.orderNumber,
              controller: orderNumber,
              decoration: _decoration(
                hintText: 'رقم أمر التسليم',
                context: context,
              ),
            ),
            TextFormField(
              // initialValue: res.containerNumber,
              controller: containerNumber,

              decoration: _decoration(
                hintText: 'رقم الحاوية',
                context: context,
              ),
            ),

            ElevatedButton.icon(
              onPressed: () {
                ref
                    .read(filterDataProvider.notifier)
                    .update(
                      orderNumber: orderNumber.text,
                      containerNumber: containerNumber.text,
                    );
                Navigator.of(context).pop();
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

            ElevatedButton.icon(
              onPressed: () {
                ref.read(filterDataProvider.notifier).clear();
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
