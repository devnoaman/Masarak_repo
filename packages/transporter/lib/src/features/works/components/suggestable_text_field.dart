// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shared/shared.dart';
import 'package:transporter/src/features/works/components/raw_text_field.dart';
import 'package:transporter/src/features/works/components/suggestion_finder.dart';

class LinkProb {
  final String modelName;
  final String fieldName;
  LinkProb({
    required this.modelName,
    required this.fieldName,
  });

  LinkProb copyWith({
    String? modelName,
    String? fieldName,
  }) {
    return LinkProb(
      modelName: modelName ?? this.modelName,
      fieldName: fieldName ?? this.fieldName,
    );
  }
}

enum SuggestableTextFieldStyle {
  normal,
  fullScreen,
}

class SuggestableTextField extends HookConsumerWidget {
  const SuggestableTextField({
    required this.prob,
    super.key,
    this.initialValue,
    this.itemParser,
    this.label,
    this.onSelected,
    this.queryParameters,
    this.validator,
    required this.keyToView,
    this.style = SuggestableTextFieldStyle.normal,
    this.showCheckbox = false,
    this.suggestionBuilder,
    this.onSave,
  });

  final SuggestionWidgetBuilder suggestionBuilder;
  final Map<String, dynamic>? initialValue;
  final Map<String, dynamic>? queryParameters;
  final dynamic Function(dynamic)? itemParser;
  final String? label;
  final String keyToView;
  final LinkProb prob;
  final void Function(dynamic value)? onSelected;
  final String? Function(String? value)? validator;
  final SuggestableTextFieldStyle style;
  final bool showCheckbox;
  final void Function(Map<String, dynamic> selectedItem)? onSave;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final tr = AppLocalizations.of(context);
    // final isDark = ref.read(themeProvider.notifier).isDark();
    return HookConsumer(
      builder: (context, r, c) {
        final cnt = useTextEditingController(
          text: initialValue != null && initialValue!.isNotEmpty
              ? initialValue?.values.toList()[1]
              : null,
        );

        if (style == SuggestableTextFieldStyle.normal) {
          return RawTextField(
            readOnly: true,
            style: context.textTheme.bodyLarge!.copyWith(color: Colors.black),
            validator: validator,
            controller: cnt,
            suffix: const Icon(Iconsax.arrow_down_1),
            hintText: label,
            onTap: () async {
              var res = await showModalBottomSheet(
                context: context,
                backgroundColor: context.theme.scaffoldBackgroundColor,
                isScrollControlled: true,
                builder: (context) => SuggestionFinder(
                  prob: prob,
                  keyToView: keyToView,
                  suggestionBuilder: suggestionBuilder,
                  initialValue: initialValue,
                  requestBody: queryParameters,
                ),
              );
              if (res != null) {
                cnt.text = res[keyToView] ?? '';
                onSelected?.call(res);
              }
            },
          );
        } else {
          return GestureDetector(
            onTap: () async {
              var res = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => Scaffold(
                    appBar: AppBar(title: Text(label ?? 'Select value')),
                    body: SuggestionFinder(
                      prob: prob,
                      keyToView: keyToView,
                      suggestionBuilder: suggestionBuilder,
                      requestBody: queryParameters,

                      onSave: onSave,
                    ),
                  ),
                ),
              );
              if (res != null) {
                cnt.text = res[keyToView] ?? '';
                onSelected?.call(res);
              }
            },
            child: Container(
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      cnt.text.isEmpty ? (label ?? '') : cnt.text,
                      style: context.textTheme.bodyLarge,
                    ),
                  ),
                  Icon(Icons.arrow_forward),
                ],
              ),
            ),
          );
        }

        // return RawTextField(
        //   readOnly: true,
        //   style: context.textTheme.bodyLarge!.copyWith(color: Colors.black),
        //   validator: validator,
        //   controller: cnt,
        //   suffix: Icon(Iconsax.arrow_down_1),
        //   hintText: label,
        //   onTap: () async {
        //     var res = await showModalBottomSheet(
        //       context: context,
        //       backgroundColor: context.theme.scaffoldBackgroundColor,
        //       isScrollControlled: true,
        //       builder: (context) => SuggestionFinder(
        //         prob: prob,
        //         keyToView: keyToView,
        //       ),
        //     );
        //     if (res != null) {
        //       cnt.text = res[keyToView] ?? '';
        //       onSelected?.call(res);
        //     }
        //   },
        // );
      },
    );
  }
}
