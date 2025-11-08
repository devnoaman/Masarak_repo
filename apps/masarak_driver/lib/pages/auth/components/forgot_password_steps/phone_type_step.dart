import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:masarak_driver/pages/auth/components/validation.dart';
import 'package:masarak_driver/pages/auth/providers/forgot_password_provider.dart';
import 'package:shared/shared.dart';

class PhoneTypeStep extends HookConsumerWidget {
  const PhoneTypeStep({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final phone = useTextEditingController();
    var notifier = ref.watch(forgotPasswordProvider.notifier);

    return Column(
      // ishadDivider: false,
      // mainAxisSize: MainAxisSize.min,
      children: [
        Align(
          alignment: Alignment.center,

          child: Text(
            'إستعادة كلمة المرور',
            textAlign: TextAlign.center,
            style: context.textTheme.headlineMedium!.copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,

          child: Text('من فضلك ادخل رقم الهاتف المرتبط بحسابك'),
        ),
        16.hGap,

        TextFormField(
          keyboardType: TextInputType.numberWithOptions(),
          controller: phone,
          autofocus: true,
          onChanged: (value) {
            notifier.setPhoneNumber(value);
          },
          validator: (value) => Validation.validatePhoneNumber(value),

          decoration: InputDecoration(
            hintText: 'ادخل رقم الهاتف',
            constraints: BoxConstraints(
              minHeight: 55,
              // maxHeight: 55,
            ),
            // suffixIcon: Icon(
            //   Iconsax.message,
            // ),
            prefixIcon: Icon(Iconsax.call),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          ),
        ),
      ],
    );
  }
}
