// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:masarak/extentions.dart' hide NumDurationExtensions;
import 'package:masarak/models/network_state/network_state.dart';
import 'package:masarak/models/user_model/user_model.dart';
import 'package:masarak/pages/home/models/check_point.dart';
import 'package:masarak/pages/home/providers/check_in_provider.dart';
import 'package:masarak/pages/home/providers/check_points_provider.dart';
import 'package:masarak/pages/home/providers/user_info_provider.dart';
import 'package:masarak/pages/home/widgets/check_points_grid.dart';
import 'package:masarak/pages/home/widgets/gate_widget.dart';
import 'package:masarak/pages/profile/presentation/profile_page.dart';
import 'package:masarak/responsive.dart';
import 'package:masarak/widgets/loader/shimmered_widget.dart';
import 'package:masarak/widgets/scanning_window.dart';
import 'package:masarak/widgets/shimmer_loading.dart';

final retryCountProvider = StateProvider<int>((ref) {
  return 0;
});

class HomePage extends HookConsumerWidget {
  static const String route = '/';

  const HomePage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // var retryCount = ref.wa;
    SizedBox _height(BuildContext context) => SizedBox(
          height: Responsive.isDesktop(context) ? 30 : 20,
        );
    var infoState = ref.watch(userInfoProvider);
    final state = ref.watch(checkPoinstProvider);

    return Scaffold(
      floatingActionButton: switch (state) {
        NetworkStateLoading<List<CheckPoint>>() => ShimmerWrapper(
            isLoading: true,
            child: ShimmerLoading(
              child: ShimmeredSpace(
                width: context.width * .3,
                height: 55,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Iconsax.scan_barcode,
                      ),
                      Text(
                        'تأكيد مرور شاحنة',
                      ),
                    ],
                  ),
                ),
              ),
              // child: FloatingActionButton.extended(
              //     heroTag: UniqueKey(),
              //     onPressed: null,
              //     icon: Icon(
              //       Iconsax.scan_barcode,
              //     ),
              //     label: Text(
              //       'تأكيد مرور شاحنة',
              //     )),
            ),
          ),
        NetworkStateLoaded<List<CheckPoint>>() => FloatingActionButton.extended(
            heroTag: UniqueKey(),
            onPressed: () async {
              // ref.read(checkInProvider).checkIn(context);

              // context.push(ConfirmCrossingPage.route);
              var res = await showDialog<String?>(
                context: context,
                builder: (context) => Center(
                  child: Center(child: BarcodeScannerWithScanWindow()),
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
            },
            icon: Icon(
              Iconsax.scan_barcode,
            ),
            label: Text(
              'تأكيد مرور شاحنة',
            )),
        _ => null,
      },
      body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: context.width,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Responsive.isMobile(context) ? 15 : 18),
            child: RefreshIndicator(
              onRefresh: () async {
                ref.invalidate(checkPoinstProvider);
                ref.invalidate(userInfoProvider);
                // retryCount.value = retryCount.value++;
              },
              child: ListView(
                children: [
                  SizedBox(
                    height: Responsive.isMobile(context) ? 5 : 18,
                  ),

                  switch (infoState) {
                    NetworkStateLoading<UserModel>() => ShimmerWrapper(
                        isLoading: true,
                        child: ProfileHeader(),
                      ),
                    NetworkStateLoaded<UserModel>() => ProfileHeader(
                        infoState: infoState.res,
                        onPressed: () {
                          context.push(
                            ProfilePage.route,
                          );
                        },
                        // currentTime: currentTime,
                      ),
                    NetworkStateError<UserModel>() => SizedBox(),
                    _ => SizedBox(),
                  },

                  // Header(),

                  _height(context),
                  const CheckPointsGrid(),
                  _height(context),
                  // LineChartCard(),
                  _height(context),
                  // BarGraphCard(),
                  _height(context),
                ],
              ),
            ),
          )),
    );
  }
}

// class LoadingDialog extends StatelessWidget {
//   const LoadingDialog({
//     super.key,
//   });
//   static show(BuildContext context) {
//     showDialog(
//       context: context,
//       barrierDismissible: false,
//       builder: (ctx) => LoadingDialog().animate().scale(),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Center(
//               child: Card(
//                 child: Padding(
//                   padding: const EdgeInsets.all(
//                     24.0,
//                   ),
//                   child: Center(
//                     child: Column(
//                       children: [
//                         SpinKitWave(
//                           itemBuilder: (BuildContext context, int index) {
//                             return DecoratedBox(
//                               decoration: BoxDecoration(
//                                 color: index.isEven
//                                     ? context.theme.primaryColor
//                                     : context.theme.colorScheme.secondary,
//                               ),
//                             );
//                           },
//                         ),
//                         16.hGap,
//                         Text(
//                           'يتم تأكيد مرور الشاحنة',
//                           style: context.textTheme.bodyLarge!.copyWith(
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         Text('يرجى الانتظار'),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }

// class SuccessDialog extends StatelessWidget {
//   const SuccessDialog({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Center(
//               child: Card(
//                 child: Padding(
//                   padding: const EdgeInsets.all(
//                     24.0,
//                   ),
//                   child: Center(
//                     child: Column(
//                       children: [
//                         Lottie.asset(
//                           'assets/lottie/success.json',
//                           // repeat: false,
//                           width: 85,
//                         ),
//                         16.hGap,
//                         Text(
//                           'تم تأكيد مرور الشاحنة',
//                           style: context.textTheme.bodyLarge!.copyWith(
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         // Text('يرجى الانتظار'),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }
