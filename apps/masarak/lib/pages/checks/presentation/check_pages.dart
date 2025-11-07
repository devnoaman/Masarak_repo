import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lottie/lottie.dart';
import 'package:masarak/extentions.dart';
import 'package:masarak/pages/checks/providers/checks_provider.dart';
import 'package:masarak/pages/home/providers/check_in_provider.dart';
import 'package:masarak/pages/trip/presentation/search_trip.dart';
import 'package:masarak/pages/trip/providers/trip_info_provider.dart';
import 'package:masarak/responsive.dart';
import 'package:masarak/widgets/scanning_window.dart';
import 'package:qr_flutter/qr_flutter.dart';

class CheckPages extends HookConsumerWidget {
  const CheckPages({super.key});
  static const String route = '/checks';
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(
      checksHistoryProvider,
    );

    return Scaffold(
      // appBar: AppBar(
      //   leading: (Responsive.isMobile(context))
      //       ? SizedBox()
      //       : BackButton(
      //           onPressed: () => context.go(HomePage.route),
      //         ),
      // ),
      body: RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(checksHistoryProvider);
        },
        child: (state.isLoading ?? false)
            ? Center(child: CircularProgressIndicator.adaptive())
            : state.qrCodes == null || state.qrCodes!.isEmpty
                ? SizedBox(
                    width: context.width,
                    child: Padding(
                      padding: const EdgeInsets.all(
                        16.0,
                      ),
                      child: Column(
                        children: [
                          Lottie.asset(
                            'assets/lottie/mobile-scan.json',
                            height: (Responsive.isMobile(context))
                                ? context.width * .6
                                : context.width * .3,
                            width: context.width * .6,
                          ),
                          24.hGap,
                          Text(
                            'لم تقم بأي حركة الى الان ',
                            textAlign: TextAlign.center,
                            style: context.textTheme.headlineSmall!.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          24.hGap,
                          Text(
                            'قم بتأكيد مرور الشاحنة الاولى',
                            textAlign: TextAlign.center,
                            style: context.textTheme.bodyMedium!.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          24.hGap,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton.extended(
                                  onPressed: () async {
                                    // context.push(ConfirmCrossingPage.route);
                                    var res = await showDialog<String?>(
                                      context: context,
                                      builder: (context) => Center(
                                        child: Center(
                                            child:
                                                BarcodeScannerWithScanWindow()),
                                      ),
                                    );
                                    if (res != null && context.mounted) {
                                      ref.read(checkInProvider).checkIn(
                                            context,
                                            res,
                                          );
                                      // ref
                                      //     .read(checksHistoryProvider.notifier)
                                      //     .add(CheckModel(barcode: res, checkedAt: DateTime.now()));
                                      // MyAlertDialog.showLoading(context);
                                      // Future.delayed(5000.milliseconds).then(
                                      //   (_) {
                                      //     context.pop();
                                      //     MyAlertDialog.showSuccess(context);
                                      //     Future.delayed(5000.milliseconds).then(
                                      //       (_) {
                                      //         context.pop();
                                      //       },
                                      //     );
                                      //   },
                                      // );
                                    }
                                    // var res = await showDialog<String?>(
                                    //   context: context,
                                    //   builder: (context) => Center(
                                    //     child: Center(
                                    //         child:
                                    //             BarcodeScannerWithScanWindow()),
                                    //   ),
                                    // );
                                    // if (res != null && context.mounted) {
                                    //   ref
                                    //       .read(checksHistoryProvider.notifier)
                                    //       .add(
                                    //         CheckModel(
                                    //           barcode: res,
                                    //           checkedAt: DateTime.now(),
                                    //         ),
                                    //       );
                                    //   MyAlertDialog.showLoading(context);
                                    //   Future.delayed(5000.milliseconds).then(
                                    //     (_) {
                                    //       context.pop();
                                    //       MyAlertDialog.showSuccess(context);
                                    //       Future.delayed(5000.milliseconds)
                                    //           .then(
                                    //         (_) {
                                    //           context.pop();
                                    //         },
                                    //       );
                                    //     },
                                    //   );
                                    // }
                                  },
                                  icon: Icon(
                                    Iconsax.scan_barcode,
                                  ),
                                  label: Text(
                                    'تأكيد مرور شاحنة',
                                  )),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                : ListView(
                    padding: 16.8.symetric,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'تصفح الحركات المنجزة من قبلك',
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
                                      checksHistoryProvider.notifier,
                                    )
                                    .dropTable();
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
                      ...state.qrCodes?.map((e) {
                            return Padding(
                              padding: 16.6.symetric,
                              child: Theme(
                                data: Theme.of(context).copyWith(
                                  // shadowColor: Colors.grey[100]!.withOpacity(.3),
                                  shadowColor: Colors.grey.withOpacity(.2),
                                ),
                                child: RawMaterialButton(
                                  // fillColor: Colors.white,
                                  fillColor: context.theme.canvasColor,
                                  elevation: 8,

                                  // splashColor: Colors.red,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: 16.cRadius,
                                  ),
                                  onPressed: () {
                                    ref
                                        .watch(trinpInfoProvider.notifier)
                                        .search(
                                          e.barcode ?? '',
                                        );

                                    context.go(SearchTrip.route,
                                        extra: e.barcode ?? '');
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Row(
                                      children: [
                                        QrImageView(
                                          data: e.barcode ?? '',
                                          size: 100,
                                          dataModuleStyle: QrDataModuleStyle(
                                            dataModuleShape:
                                                QrDataModuleShape.circle,
                                            // color: Colors.black,
                                            color: context.textTheme.bodyLarge
                                                    ?.color ??
                                                Colors.black,
                                          ),
                                          eyeStyle: QrEyeStyle(
                                            color: context.theme.primaryColor,
                                          ),
                                        ),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                e.barcode ?? '',
                                              ),
                                              Text(
                                                e.checkedAt?.ddMMyyyyDate ?? '',
                                              ),
                                              16.hGap,
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  ElevatedButton(
                                                    style: ButtonStyle(
                                                      backgroundColor:
                                                          WidgetStatePropertyAll(
                                                        context
                                                            .theme.primaryColor,
                                                      ),
                                                      foregroundColor:
                                                          WidgetStatePropertyAll(
                                                        Colors.white,
                                                      ),
                                                    ),
                                                    onPressed: null,
                                                    child: Text(
                                                      'تفاصيل الرحلة..',
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }) ??
                          [],
                    ],
                  ),
      ),
    );
  }
}

class ClearHistoryDialog extends StatelessWidget {
  const ClearHistoryDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('هل أنت متأكد؟'),
      content: Text(
          'سيتم حذف نسختك من ارشيف الحركات ، لن يؤثر هذا الحذف على حالة الحركات او حذف الحركات من النظام'),
      actions: [
        TextButton.icon(
          onPressed: () {
            Navigator.of(context).pop(null);
          },
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(
              context.theme.primaryColor.withOpacity(.1),
            ),
            // foregroundColor: WidgetStatePropertyAll(
            //   Colors.red,
            // ),
          ),
          label: Text('الغاء'),
        ),
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
          onPressed: () {
            Navigator.of(context).pop(
              true,
            );
          },
          label: Text('حذف'),
        )
      ],
    );
  }
}
