import 'package:easy_debouncer/easy_debouncer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shared/shared.dart';
import 'package:transporter/src/features/works/components/raw_text_field.dart';
import 'package:transporter/src/features/works/components/suggestable_text_field.dart';
import 'package:transporter/src/features/works/providers/suggestion_provider.dart';
import 'package:transporter/src/widgets/loading_widget.dart';

class SuggestionFinder extends StatefulHookConsumerWidget {
  const SuggestionFinder({
    super.key,
    required this.prob,
    required this.keyToView,
    this.leadingIcon,
  });

  final LinkProb prob;
  final String keyToView;
  final IconData? leadingIcon;

  @override
  ConsumerState<SuggestionFinder> createState() => _SuggestionFinderState();
}

class _SuggestionFinderState extends ConsumerState<SuggestionFinder> {
  Future<dynamic> f = Future.value([]);
  @override
  void initState() {
    // f = get('');

    super.initState();
  }

  // Future<dynamic> get(
  //   String q,
  //   // GovInstituteModel? Function(Map<String, dynamic> json)? evaluator,
  // ) async {
  //   // final dio = ref.read(dioProvider);
  //   // final String modelName =
  //   //     'ComplaintLink'; // Define modelName or pass it as a parameter

  //   try {
  //     // final res = await dio.get(
  //     //   '/new-crud/${widget.prob.modelName}/link-search/1?fromModel=ComplaintLink&fieldname=${widget.prob.fieldName}&query=$q',
  //     // );

  //     // if (res.statusCode == 200) {
  //     //   // Ensure the response data is a List
  //     //   if (res.data is List) {
  //     //     final resultList = <GovInstituteModel>[];
  //     //     for (var item in res.data as List) {
  //     //       if (item is Map<String, dynamic>) {
  //     //         // Attempt to evaluate/parse the item using the provided evaluator
  //     //         try {
  //     //           // final T? evaluatedItem = evaluator.call(item);
  //     //           var model = GovInstituteModel.fromJson(
  //     //             item,
  //     //           );
  //     //           resultList.add(model);
  //     //         } catch (e, s) {
  //     //           // Evaluator threw an error, treat as dynamic
  //     //           print(
  //     //             'Warning: Evaluator failed for item. Error: $e. Adding raw item as dynamic.',
  //     //           );
  //     //         }
  //     //       } else {
  //     //         // Item is not a Map<String, dynamic>, add it directly
  //     //         print(
  //     //           'Warning: List item is not a Map<String, dynamic>. Adding raw item as dynamic.',
  //     //         );
  //     //         // This cast will only work if T is dynamic or Object?
  //     //       }
  //     //     }
  //     //     return resultList;
  //     //   } else {
  //     //     // If response.data is not a List, return null as it doesn't match expected type
  //     //     print(
  //     //       'Warning: API response data is not a List. Received: ${res.data.runtimeType}.',
  //     //     );
  //     //     return null;
  //     //   }

  //     // } else {
  //     //   // Handle non-200 status codes
  //     //   print('API request failed with status code: ${res.statusCode}');
  //     //   return null;
  //     // }
  //   }
  //   //  on DioException catch (e) {
  //   //   // Catch Dio-specific errors
  //   //   if (e.response != null) {
  //   //     print(
  //   //       'Dio error: Status ${e.response?.statusCode}, Data: ${e.response?.data}',
  //   //     );
  //   //   } else {
  //   //     print('Dio error: ${e.message}');
  //   //   }
  //   //   return null;
  //   // }
  //   catch (e) {
  //     // Catch any other unexpected errors
  //     print('An unexpected error occurred: $e');
  //     return null;
  //   }
  // }

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
            f = ref.read(suggestionsProvider.notifier).get(prob);

        // get(cnt.text);
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
                hintText: 'Search',
                onChanged: (value) {
                  f = ref
                      .read(suggestionsProvider.notifier)
                      .get(
                        widget.prob.copyWith(
                          fieldName: cnt.text,
                        ),
                      );
                },
              ),
              // Text(suggestions.toString()),
              Expanded(
                child:
                    //  suggestions.s
                    switch (suggestions) {
                      // Initial<List, void>() => SizedBox(),
                      Loading<List, void>() ||
                      Initial<List, void>() => const LoadingWidget(),

                      Loaded<List, void>() => ListView.builder(
                        itemCount: suggestions.data.length,
                        itemBuilder: (c, i) {
                          var v = suggestions.data[i][widget.keyToView];
                          return ListTile(
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
                                        suggestions.data[i]['status'] ==
                                                'On Trip'
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
                                    style: context.textTheme.bodyLarge!
                                        .copyWith(
                                          fontWeight: FontWeight.w900,
                                          color: Colors.white,
                                        ),
                                  ),
                            leading: Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                color: context.theme.primaryColor.withAlpha(30),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Center(
                                child: Icon(
                                  widget.leadingIcon ??
                                      (widget.keyToView == 'plate'
                                          ? Iconsax.truck
                                          : Iconsax.user),
                                  color: context.theme.primaryColor,
                                ),
                              ),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            ),
                            onTap: () =>
                                Navigator.of(context).pop(suggestions.data[i]),
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
            ],
          ),
        ),
      ),
    );
  }
}
