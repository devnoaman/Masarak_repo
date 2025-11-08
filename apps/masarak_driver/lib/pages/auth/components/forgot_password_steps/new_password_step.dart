import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:masarak_driver/pages/auth/components/validation.dart';
import 'package:masarak_driver/pages/auth/providers/forgot_password_provider.dart';
import 'package:shared/shared.dart';

class NewPasswordStep extends HookConsumerWidget {
  const NewPasswordStep({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final phone = useTextEditingController();
    final password = useTextEditingController();
    final confirmPassword = useTextEditingController();
    final securePassword = useState(true);
    var notifier = ref.watch(forgotPasswordProvider.notifier);

    return Column(
      spacing: 16,
      mainAxisSize: MainAxisSize.min,
      children: [
        Align(
          alignment: Alignment.center,

          child: Text(
            'إنشاء كلمة مرور جديدة',
            textAlign: TextAlign.center,
            style: context.textTheme.headlineMedium!.copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
        ),

        TextFormField(
          controller: password,
          obscureText: securePassword.value,
          onChanged: (value) {
            notifier.setPassword(value);
          },
          decoration: InputDecoration(
            hintText: 'ادخل كلمة المرور',
            constraints: BoxConstraints(minHeight: 55, maxHeight: 55),
            suffixIcon: IconButton(
              onPressed: () {
                securePassword.value = !securePassword.value;
              },
              icon: Icon(
                securePassword.value ? Iconsax.eye_slash : Iconsax.eye,
              ),
            ),

            prefixIcon: Icon(Iconsax.lock),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        TextFormField(
          controller: confirmPassword,
          obscureText: securePassword.value,
          onChanged: (value) {
            notifier.setConfirmPassword(value);
          },
          decoration: InputDecoration(
            hintText: 'ادخل كلمة المرور',
            constraints: BoxConstraints(minHeight: 55, maxHeight: 55),
            suffixIcon: IconButton(
              onPressed: () {
                securePassword.value = !securePassword.value;
              },
              icon: Icon(
                securePassword.value ? Iconsax.eye_slash : Iconsax.eye,
              ),
            ),
            prefixIcon: Icon(Iconsax.lock),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),

        ValueListenableBuilder(
          valueListenable: notifier.remainLoggedIn,
          builder: (context, value, _) {
            return CheckboxListTile(
              contentPadding: EdgeInsets.zero,
              value: value,
              onChanged: (newValue) {
                // not.value = newValue ?? false;
                notifier.setRemainLoggedIn(newValue ?? false);
              },
              title: Text('البقاء قيد تسجيل الدخول'),
              controlAffinity: ListTileControlAffinity.trailing,
            );
          },
        ),
      ],
    );
  }
}
