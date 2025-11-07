// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared/shared.dart';

class RawTextField extends HookConsumerWidget {
  // RawTextField._();
  const RawTextField({
    super.key,
    this.hintText,
    this.readOnly = false,
    this.onTap,
    this.autofocus = false,
    this.controller,
    this.onChanged,
    this.style,
    this.validator,
    this.keyboardType,
    this.maxLines = 1,
    this.suffix,
    this.secure,
    this.decoration,
    this.initialValue,
  }) : assert(
         initialValue == null || controller == null,
         'Cannot provide both an initialValue and a controller to a RawTextField.',
       );
  final bool readOnly;
  final bool autofocus;
  final InputDecoration? decoration;
  final Function()? onTap;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final int maxLines;
  final TextStyle? style;

  final String? hintText;
  final TextInputType? keyboardType;
  final Widget? suffix;
  final bool? secure;
  final String? initialValue;
  factory RawTextField.click({
    required String hintText,
    required Function() onTap,
    TextEditingController? controller,
    Widget? suffix,
  }) {
    return RawTextField(
      hintText: hintText,
      suffix: suffix,
      onTap: onTap,
      readOnly: true,
      controller: controller,
    );
  }

  InputDecoration formFieldDecoration({
    required String hintText,
    required bool isDark,
    required BuildContext context,
  }) {
    return InputDecoration(
      labelStyle: style,
      hintStyle: style,
      fillColor: isDark
          ? context.theme.primaryColor.withAlpha(10)
          : Colors.grey[200],
      labelText: hintText,
      filled: true,
      suffixIcon: suffix,
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.grey),
        borderRadius: BorderRadius.circular(36),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          36,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final isDark = ref.read(themeProvider.notifier).isDark();
    final effectiveController =
        controller ?? useTextEditingController(text: initialValue);

    return TextFormField(
      key: key,
      autofocus: autofocus,
      validator: validator,
      style: style,

      readOnly: readOnly,
      // initialValue: initialValue,
      controller: effectiveController,

      onChanged: onChanged,
      maxLines: maxLines,
      keyboardType: keyboardType,
      // controller: controller,
      obscureText: secure ?? false,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onTap: onTap,
      decoration:
          decoration ??
          formFieldDecoration(
            hintText: hintText ?? '',
            isDark: true,
            context: context,
          ),
    );
  }
}
