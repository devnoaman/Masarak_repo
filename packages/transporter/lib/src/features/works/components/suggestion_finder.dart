import 'package:easy_debouncer/easy_debouncer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared/shared.dart';
import 'package:transporter/src/features/works/components/raw_text_field.dart';
import 'package:transporter/src/features/works/components/suggestable_text_field.dart';
import 'package:transporter/src/features/works/providers/suggestion_provider.dart';
import 'package:transporter/src/widgets/loading_widget.dart';

enum SuggestionFinderStyle {
  normal,
  fullScreen,
}

typedef SuggestionWidgetBuilder<T> =
    Widget? Function(T value, Widget Function(Widget) base)?;

class SuggestionFinder<T> extends StatefulHookConsumerWidget {
  const SuggestionFinder({
    super.key,
    required this.prob,
    required this.keyToView,
    this.itemParser,
    this.leadingIcon,
    this.style = SuggestionFinderStyle.normal,
    this.suggestionBuilder,
    this.initialValue,
    this.requestBody,
    this.onSave,
  });
  final T Function(dynamic)? itemParser;

  final LinkProb prob;
  final String keyToView;
  final IconData? leadingIcon;
  final SuggestionFinderStyle style;
  final Map<String, dynamic>? requestBody;
  final SuggestionWidgetBuilder<T> suggestionBuilder;
  final Map<String, dynamic>? initialValue;
  final Function(Map<String, dynamic> selectedItem)? onSave;

  @override
  ConsumerState<SuggestionFinder> createState() => _SuggestionFinderState<T>();
}

class _SuggestionFinderState<T> extends ConsumerState<SuggestionFinder> {
  Future<dynamic> f = Future.value([]);
  late SuggestionWidgetBuilder<T> suggestionBuilder;
  bool showButton = false;
  Map<String, dynamic>? selectedItem;

  @override
  void initState() {
    // f = get('');
    suggestionBuilder = widget.suggestionBuilder;
    selectedItem = widget.initialValue;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var cnt = useTextEditingController();
    var suggestions = ref.watch(suggestionsProvider);

    cnt.addListener(() {
      Debouncer.debounce('sdsdsd', Durations.extralong1, () {
        var prob = cnt.text.isEmpty
                ? widget.prob
                : widget.prob.copyWith(
                    fieldName: cnt.text,
                  ),
            f = ref
                .read(suggestionsProvider.notifier)
                .get(prob, widget.requestBody);
        setState(() {});
      });
    });
    // useEffect(() {
    //   f = ref
    //       .read(suggestionsProvider.notifier)
    //       .get(
    //         widget.prob,
    //       );
    // });
    return PopScope(
      onPopInvokedWithResult: (didPop, result) {
        print('pop invoked');
        ref.invalidate(suggestionsProvider);
      },
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: context.height * .9,
          maxHeight: context.height * .9,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              RawTextField(
                autofocus: true,
                controller: cnt,
                hintText: 'بحث',
                onChanged: (value) {
                  f = ref
                      .read(suggestionsProvider.notifier)
                      .get(
                        widget.prob.copyWith(
                          fieldName: cnt.text,
                        ),
                        widget.requestBody,
                      );
                },
              ),
              Expanded(
                child: switch (suggestions) {
                  // Initial<List, void>() => SizedBox(),
                  Loading<List, void>() ||
                  Initial<List, void>() => const LoadingWidget(),

                  Loaded<List, void>() => ListView.builder(
                    itemCount: suggestions.data.length,
                    itemBuilder: (c, i) {
                      var item = suggestions.data[i];
                      bool isSelected =
                          selectedItem != null &&
                          item['id'] == selectedItem?['id'];

                      Widget contatiner(Widget child) => Container(
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: context.theme.scaffoldBackgroundColor.lighter(
                            10,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            Radio(
                              value: item['id'],
                              groupValue: selectedItem?['id'],
                              activeColor: context.theme.primaryColor,
                              onChanged: (v) {
                                setState(() {
                                  if (selectedItem?['id'] == item['id']) {
                                    selectedItem = null;
                                  } else {
                                    selectedItem = item;
                                  }
                                  showButton =
                                      widget.initialValue == null ||
                                      item['id'] != widget.initialValue?['id'];
                                });
                              },
                            ),

                            Expanded(child: child),
                          ],
                        ),
                      );

                      // var item = suggestions.data[i];
                      if (suggestionBuilder != null) {
                        return suggestionBuilder?.call(item, contatiner);
                      }
                      var v = suggestions.data[i][widget.keyToView];
                      return contatiner(
                        ListTile(
                          title: widget.keyToView == 'plate'
                              ? Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      v ?? '',
                                      style: context.textTheme.bodyLarge!
                                          .copyWith(
                                            fontWeight: FontWeight.w900,
                                            color: Colors.white,
                                          ),
                                    ),
                                    Text(
                                      suggestions.data[i]['status'] == 'On Trip'
                                          ? 'في رحلة'
                                          : suggestions.data[i]['status'] ==
                                                'Available'
                                          ? "متاح"
                                          : suggestions.data[i]['status'],
                                      style: context.textTheme.bodyLarge!
                                          .copyWith(
                                            fontWeight: FontWeight.w900,
                                            color: Colors.white,
                                          ),
                                    ),
                                  ],
                                )
                              : Text(
                                  v ?? '',
                                  style: context.textTheme.bodyLarge!.copyWith(
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white,
                                  ),
                                ),

                          // leading: Container(
                          //   width: 45,
                          //   height: 45,
                          //   decoration: BoxDecoration(
                          //     color: context.theme.primaryColor.withAlpha(
                          //       30,
                          //     ),
                          //     borderRadius: BorderRadius.circular(12),
                          //   ),
                          //   child: Center(
                          //     child: Icon(
                          //       widget.leadingIcon ??
                          //           (widget.keyToView == 'plate'
                          //               ? Iconsax.truck
                          //               : Iconsax.user),
                          //       color: context.theme.primaryColor,
                          //     ),
                          //   ),
                          // ),
                          // trailing: Icon(
                          //   Icons.arrow_forward_ios,
                          //   color: Colors.white,
                          // ),
                          onTap: () {
                            setState(() {
                              if (selectedItem?['id'] == item['id']) {
                                selectedItem = null;
                              } else {
                                selectedItem = item;
                              }
                              showButton =
                                  widget.initialValue == null ||
                                  item['id'] != widget.initialValue?['id'];
                            });
                          },
                        ),
                      );
                    },
                  ),

                  _ => SizedBox(),
                },

                // FutureBuilder<dynamic>(
                //   future: f,
                //   builder: (c, s) {
                //     if (s.hasData) {
                //       return ;
                //     }
                //     return const Center(
                //       child: CircularProgressIndicator(),
                //     );
                //   },
                // ),
              ),
              ElevatedButton(
                onPressed: selectedItem == null
                    ? null
                    : () async {
                        if (widget.onSave != null) {
                          await widget.onSave!(selectedItem!);
                        } else {
                          Navigator.of(
                            context,
                          ).pop(selectedItem);
                        }
                      },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 45),
                  backgroundColor: context.theme.primaryColor,
                ),
                child: Text(
                  'حفظ',
                  style: context.textTheme.bodyLarge!.copyWith(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
