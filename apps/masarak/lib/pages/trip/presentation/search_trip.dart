import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lottie/lottie.dart';
import 'package:masarak/extentions.dart';
import 'package:masarak/models/check_model/check_model.dart';
import 'package:masarak/models/network_state/network_state.dart';
import 'package:masarak/pages/checks/presentation/check_pages.dart';
import 'package:masarak/pages/trip/models/trip_info_state/trip_info_state.dart';
import 'package:masarak/pages/trip/providers/searchs_provider.dart';
import 'package:masarak/pages/trip/providers/trip_info_provider.dart';
import 'package:masarak/pages/trip/widgets/trip_info_widget.dart';
import 'package:masarak/responsive.dart';
import 'package:masarak/widgets/error_page.dart';
import 'package:masarak/widgets/scanning_window.dart';

enum SearrchState { initial, searched }

class SearchTrip extends HookConsumerWidget {
  const SearchTrip({super.key});
  static const String route = '/trip-info';
  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    var extra = GoRouterState.of(context);
    var e = extra.extra as String?;
    var cnt = useTextEditingController(
      text: e,
    );

    var state = ref.watch(trinpInfoProvider);
    var notifier = ref.watch(trinpInfoProvider.notifier);
    // var notifier = ref.watch(trinpInfoProvider.notifier);
    var showDone = useState(false);
    var showClear = useState(e != null ? true : false);
    var showSearch = useState(
      SearrchState.initial,
    );
    if (e != null && cnt.text == e) {
      showSearch.value = SearrchState.searched;
    }
    cnt.addListener(() {
      if (notifier.query == cnt.text) {
        showSearch.value = SearrchState.searched;
      } else {
        showSearch.value = SearrchState.initial;
        showDone.value = true;
      }
      if (cnt.text.isNotEmpty) {
        showClear.value = true;
      }
      if (cnt.text.isEmpty) {
        showDone.value = false;
        showClear.value = false;
      }

      // else

      if (notifier.query != cnt.text) {
        showDone.value = true;
      }
    });

    return Scaffold(
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () async {
            var barcode = await showModalBottomSheet<String?>(
              context: context,
              showDragHandle: true,
              constraints: BoxConstraints(
                maxHeight: context.height * .75,
              ),
              isScrollControlled: true,
              builder: (context) => SearchHistoryList(),
            );
            if (barcode != null && barcode.isNotEmpty) {
              cnt.text = barcode;
              ref.watch(trinpInfoProvider.notifier).search(cnt.text);
              if (notifier.query == cnt.text) {
                showSearch.value = SearrchState.searched;
              }
            }
          },
          icon: Icon(
            Icons.history,
          ),
          label: Text('الارشيف'),
        ),
        appBar: AppBar(
          centerTitle: true,
          surfaceTintColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          leading: SizedBox(),
          leadingWidth: 0,
          title: TextFormField(
            controller: cnt,
            decoration: InputDecoration(
              contentPadding: 16.10.symetric,
              alignLabelWithHint: true,
              hintText: 'ادخل رقم الرحلة او امسح الباركود',
              // suffix: ,
              prefixIcon: IconButton(
                onPressed: () async {
                  var res = await showDialog<String?>(
                    context: context,
                    builder: (context) => Center(
                      child: Center(child: BarcodeScannerWithScanWindow()),
                    ),
                  );
                  if (res != null) {
                    cnt.text = res;
                    ref.watch(trinpInfoProvider.notifier).search(cnt.text);
                    if (notifier.query == cnt.text) {
                      showSearch.value = SearrchState.searched;
                    }
                  }
                },
                icon: Icon(
                  Iconsax.scan_barcode,
                ),
              ),
              suffixIcon: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (showDone.value && cnt.text.isNotEmpty)
                    if (showSearch.value == SearrchState.initial)
                      IconButton.filled(
                        style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(
                            Colors.green.withOpacity(
                              .1,
                            ),
                          ),
                        ),
                        padding: EdgeInsets.all(0),
                        onPressed: () {
                          ref
                              .watch(trinpInfoProvider.notifier)
                              .search(cnt.text);
                          if (notifier.query == cnt.text) {
                            showSearch.value = SearrchState.searched;
                          }
                        },
                        icon: Icon(
                          Icons.done,
                        ),
                      ),
                  if (showClear.value)
                    IconButton.filled(
                      // color: Colors.red,
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          Colors.red.withOpacity(
                            .1,
                          ),
                        ),
                      ),
                      padding: EdgeInsets.all(0),
                      onPressed: () {
                        ref.watch(trinpInfoProvider.notifier).reset();
                        cnt.clear();
                        // GoRouterState.of(context).;
                      },
                      icon: Icon(
                        Icons.close,
                      ),
                    ),
                ],
              ),
              border: OutlineInputBorder(
                borderRadius: 65.cRadius,
              ),
            ),
          ),
          actions: [SizedBox()],
        ),
        body: switch (state) {
          TripInfoStateLoading() => Center(
              child: CircularProgressIndicator.adaptive(),
            ),
          TripInfoStateLoaded() => TripInfoWidget(
              info: state.res,
              controller: cnt,
            ),
          //  ListView(
          //     children: [
          //       16.hGap,
          //       Text(state.res.toString()),
          //     ],
          //   ),
          TripInfoStateError() => ErrorPage(
              actions: [
                ElevatedButton.icon(
                  onPressed: () {
                    ref.watch(trinpInfoProvider.notifier).search(
                          cnt.text,
                        );
                  },
                  icon: Icon(
                    Iconsax.refresh,
                  ),
                  label: Text(
                    'اعادة المحاولة',
                  ),
                ),
                16.hGap,
                ElevatedButton.icon(
                  onPressed: () {
                    ref.watch(trinpInfoProvider.notifier).reset();
                    cnt.clear();
                  },
                  icon: Icon(
                    Icons.delete_outline_sharp,
                  ),
                  label: Text(
                    'تفريغ حقل البحث',
                  ),
                ),
              ],
            ),
          TripInfoStateInitial() => ListView(
              children: [
                Lottie.asset(
                  'assets/lottie/trip-number.json',
                  height: (Responsive.isMobile(context))
                      ? context.width * .6
                      : context.width * .3,
                  width: context.width * .6,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'قم بادخال رقم الرحلة او قراءة الباركود الموجود على وصل الرحلة لعرض المعلومات الخاصة بالرحلة',
                    textAlign: TextAlign.center,
                    style: context.textTheme.bodyLarge!.copyWith(),
                  ),
                )
              ],
            ),
          // _ => SizedBox(),
        });
  }
}

class SearchHistoryList extends HookConsumerWidget {
  const SearchHistoryList({
    super.key,
  });

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    var history = ref.watch(searchHistoryProvider);
    return switch (history) {
      NetworkStateInitial<List<CheckModel>>() => SizedBox(),
      NetworkStateLoading<List<CheckModel>>() => Center(
          child: CircularProgressIndicator.adaptive(),
        ),
      NetworkStateLoaded<List<CheckModel>>() => Column(
          children: [
            Padding(
              padding: 16.8.symetric,
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'عمليات البحث السابقة',
                      style: context.textTheme.bodyLarge,
                    ),
                  ),
                  16.wGap,
                  TextButton.icon(
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                        Colors.red.withOpacity(
                          .1,
                        ),
                      ),
                      foregroundColor: WidgetStatePropertyAll(
                        Colors.red,
                      ),
                    ),
                    onPressed: () async {
                      var res = await showDialog<bool?>(
                        context: context,
                        builder: (context) => ClearHistoryDialog(),
                      );
                      if (res != null && res == true) {
                        ref
                            .read(
                              searchHistoryProvider.notifier,
                            )
                            .dropTable();
                        if (context.mounted) {
                          Navigator.of(context).pop();
                        }
                      }
                    },
                    icon: Icon(
                      Iconsax.trush_square,
                    ),
                    label: Text(
                      'تفريغ الأرشيف',
                    ),
                  )
                ],
              ),
            ),
            Divider(),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => Padding(
                  padding: 16.0.symetric,
                  child: Divider(),
                ),
                itemCount: history.res.length,
                itemBuilder: (context, index) {
                  var e = history.res[index];
                  return ListTile(
                    onTap: () {
                      Navigator.of(context).pop(e.barcode);
                    },
                    title: Text(
                      e.barcode ?? '',
                    ),
                    subtitle: e.checkedAt == null
                        ? null
                        : Text(
                            'تاريخ و وقت الفحص ${e.checkedAt?.dateTime}',
                          ),
                  );
                },
                // children: [
                //   ...history.res.map(
                //     (e) => ListTile(
                //       onTap: () {
                //         Navigator.of(context).pop(e.barcode);
                //       },
                //       title: Text(
                //         e.barcode ?? '',
                //       ),
                //       subtitle: e.checkedAt == null
                //           ? null
                //           : Text(
                //               'تاريخ و وقت الفحص ${e.checkedAt?.dateTime}',
                //             ),
                //     ),
                //   )
                // ],
              ),
            ),
          ],
        ),
      NetworkStateError<List<CheckModel>>() => SizedBox(),
      NetworkStateEmpty<List<CheckModel>>() => SizedBox(
          width: context.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset('assets/lottie/empty.json'),
              Text(
                'يجب البحث اولا عن بعض الرحلات ليتم عرضها هنا',
                style: context.textTheme.bodyLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              16.hGap,
              FloatingActionButton.extended(
                onPressed: () {
                  Navigator.pop(context);
                },
                // icon: Icon(Icons.arrow_back_ios),
                label: Text(
                  'عودة',
                  style: context.textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
    };

    // ListView();
  }
}
