// // ignore_for_file: public_member_api_docs, sort_constructors_first
// // ignore_for_file: no_leading_underscores_for_local_identifiers
// import 'package:flutter/material.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:iconsax/iconsax.dart';
// import 'package:lottie/lottie.dart';
// import 'package:masarak_driver/extentions.dart' hide NumDurationExtensions;
// import 'package:masarak_driver/model/driver_info/driver_info.dart';
// import 'package:masarak_driver/pages/home/providers/driver_info_provider.dart';
// import 'package:masarak_driver/pages/home/trip_item.dart';
// import 'package:shared/src/models/global_state/global_state.dart';

// class HomePage extends HookConsumerWidget {
//   static const String route = '/';

//   const HomePage({super.key});
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     var driverInfo = ref.watch(driverInfoProvider);

//     // ref.watch(driverInfoProvider.notifier).get();
//     // var segments = ['الساحة الاستباقية', 'الاساسي'];
//     // var segment = useState(segments.entries.first.key);

//     return Scaffold(
//       // floatingActionButton: FloatingActionButton.extended(
//       //     onPressed: () async {
//       //       // context.push(ConfirmCrossingPage.route);
//       //       var res = await showDialog<String?>(
//       //         context: context,
//       //         builder: (context) => Center(
//       //           child: Center(child: BarcodeScannerWithScanWindow()),
//       //         ),
//       //       );
//       //       if (res != null && context.mounted) {
//       //         showDialog(
//       //           context: context,
//       //           builder: (ctx) => LoadingDialog().animate().scale(),
//       //         );
//       //         Future.delayed(5000.milliseconds).then(
//       //           (_) {
//       //             context.pop();
//       //             showDialog(
//       //               context: context,
//       //               builder: (context) => SuccessDialog().animate().scale(),
//       //             );
//       //             Future.delayed(5000.milliseconds).then(
//       //               (_) {
//       //                 context.pop();
//       //               },
//       //             );
//       //           },
//       //         );
//       //       }
//       //     },
//       //     icon: Icon(
//       //       Iconsax.scan_barcode,
//       //     ),
//       //     label: Text(
//       //       'تأكيد مرور شاحنة',
//       //     )),
//       body: SizedBox(
//         height: MediaQuery.of(context).size.height,
//         width: context.width,
//         child: Padding(
//           padding: EdgeInsets.all(0),
//           // padding: EdgeInsets.symmetric(
//           //     horizontal: Responsive.isMobile(context) ? 15 : 18),
//           child: RefreshIndicator.adaptive(
//             onRefresh: () async {
//               ref.read(driverInfoProvider.notifier).get();
//             },
//             child: ListView(
//               children: [
//                 // SizedBox(height: Responsive.isMobile(context) ? 5 : 18),
//                 // if (!Responsive.isDesktop(context))
//                 //   Padding(
//                 //     padding: 16.0.symetric,
//                 //     child: SizedBox(
//                 //       child: Column(
//                 //         crossAxisAlignment: CrossAxisAlignment.center,
//                 //         children: [
//                 //           ClipOval(
//                 //             child: CircleAvatar(
//                 //               radius: 34,
//                 //               child: driverInfo.user?.profilePhotoUrl != null
//                 //                   ? Image.network(
//                 //                       driverInfo.user?.profilePhotoUrl ?? '',
//                 //                       fit: BoxFit.cover,
//                 //                     )
//                 //                   : Text(
//                 //                       driverInfo.user?.name ?? '',
//                 //                       style: context.textTheme.bodyLarge!
//                 //                           .copyWith(
//                 //                             fontWeight: FontWeight.bold,
//                 //                           ),
//                 //                     ),
//                 //             ),
//                 //           ),
//                 //           // Text(
//                 //           //   driverInfo.driverInfo?.trip?.driver
//                 //           //           ?.split('/')[0]
//                 //           //           .trim() ??
//                 //           //       '',
//                 //           //   style: context.textTheme.bodyLarge!.copyWith(
//                 //           //     fontWeight: FontWeight.bold,
//                 //           //   ),
//                 //           // ),
//                 //           Text(
//                 //             driverInfo.user?.name ??
//                 //                 // ?.split('/')[0]
//                 //                 // .trim() ??
//                 //                 '',
//                 //             style: context.textTheme.bodyLarge!.copyWith(
//                 //               fontWeight: FontWeight.bold,
//                 //             ),
//                 //           ),
//                 //           16.hGap,
//                 //           if (driverInfo
//                 //                   .driverInfo
//                 //                   ?.activeQueueIndex
//                 //                   ?.truckNumber !=
//                 //               null)
//                 //             FittedBox(
//                 //               fit: BoxFit.scaleDown,
//                 //               child: PlateNumber(
//                 //                 plateNumber:
//                 //                     driverInfo
//                 //                         .driverInfo
//                 //                         ?.activeQueueIndex
//                 //                         ?.truckNumber ??
//                 //                     '',
//                 //               ),
//                 //             ),
//                 //           16.hGap,
//                 //           Divider(),
//                 //         ],
//                 //       ),
//                 //     ),
//                 //   ),
//                 // Header(),

//                 // _height(context),
//                 // Padding(
//                 //   padding: 16.0.symetric,
//                 //   child: Row(
//                 //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 //     children: [
//                 //       Text(
//                 //         'الدور الحالي',
//                 //         textAlign: TextAlign.start,
//                 //         style: context.textTheme.bodyLarge!.copyWith(
//                 //           fontWeight: FontWeight.bold,
//                 //           // color: Colors.white,
//                 //         ),
//                 //       ),
//                 //       CircleAvatar(child: Text('12')),
//                 //     ],
//                 //   ),
//                 // ),
//                 // _height(context),
//                 // Padding(padding: 16.0.symetric, child: Divider()),
//                 // _height(context),
//                 // _height(context),
//                 // Padding(padding: 16.0.symetric, child: Divider()),
//                 // _height(context),
//                 // Center(
//                 //   child: Container(
//                 //     height: 45,
//                 //     width: 4,
//                 //     color: context.theme.primaryColor,
//                 //   ),
//                 // ),
//                 // _height(context),

//                 // Row(
//                 //   children: [
//                 //     Column(
//                 //       crossAxisAlignment: CrossAxisAlignment.start,
//                 //       children: [
//                 //         Text(
//                 //           'مرحبا',
//                 //           style: context.textTheme.bodyLarge!.copyWith(
//                 //             fontWeight: FontWeight.bold,
//                 //           ),
//                 //         ),
//                 //         Text(
//                 //           'جهاد احمد جاغوب',
//                 //           style: context.textTheme.headlineLarge!.copyWith(
//                 //             fontWeight: FontWeight.bold,
//                 //           ),
//                 //         ),
//                 //       ],
//                 //     ),
//                 //   ],
//                 // ),
//                 // Divider(),
//                 // _height(context),

//                 // const ActivityDetailsCard(),
//                 // Text('الرصيد الحالي'),
//                 // Padding(padding: 16.0.symetric, child: PatternedCard()),
//                 // _height(context),
//                 12.hGap,

//                 // Padding(
//                 //   padding: 16.0.symetric,
//                 //   child: Text(
//                 //     'جدولة الساحة الابتدائية',
//                 //     textAlign: TextAlign.start,
//                 //     style: context.textTheme.bodyLarge!.copyWith(
//                 //       fontWeight: FontWeight.bold,
//                 //       // color: Colors.white,
//                 //     ),
//                 //   ),
//                 // ),
//                 switch (driverInfo) {
//                   Initial<DriverInfo, String>() => SizedBox(),
//                   Empty<DriverInfo, String>() => SizedBox(),

//                   Loading<DriverInfo, String>() => SizedBox(
//                     height: context.height,
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         // CircularProgressIndicator.adaptive(
//                         //   backgroundColor: context.theme.primaryColor,
//                         // ),
//                         SpinKitFadingCube(color: context.theme.primaryColor),
//                         24.hGap,
//                         Text(
//                           'جاري تحميل البيانات',
//                           style: context.textTheme.bodyLarge!.copyWith(
//                             fontWeight: FontWeight.w900,
//                             color: context.theme.primaryColor,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),

//                   Loaded<DriverInfo, String>() => TripItem(
//                     driverInfo: driverInfo.data,
//                   ),

//                   Error<DriverInfo, String>() => Center(
//                     child: Text(
//                       driverInfo.e ?? 'حدث خطأ ما يرجى اعادة المحاولة',
//                     ),
//                   ),
//                 },

//                 // Padding(
//                 //   padding: 16.0.symetric,
//                 //   child: Text(
//                 //     'سجل الدور الحالي',
//                 //     textAlign: TextAlign.start,
//                 //     style: context.textTheme.bodyLarge!.copyWith(
//                 //       fontWeight: FontWeight.bold,
//                 //       // color: Colors.white,
//                 //     ),
//                 //   ),
//                 // ),
//                 // Padding(
//                 //   padding: 16.0.symetric,
//                 //   child: Row(
//                 //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 //     children: [
//                 //       Text(
//                 //         'الادوار المنجزة',
//                 //         textAlign: TextAlign.start,
//                 //         style: context.textTheme.bodyLarge!.copyWith(
//                 //           fontWeight: FontWeight.bold,
//                 //           // color: Colors.white,
//                 //         ),
//                 //       ),
//                 //     ],
//                 //   ),
//                 // ),
//                 // _height(context),

//                 // SizedBox(
//                 //   height: 45,
//                 //   child: ListView(
//                 //     shrinkWrap: true,
//                 //     scrollDirection: Axis.horizontal,
//                 //     padding: 16.0.symetric,
//                 //     children: [
//                 //       // 16.wGap,
//                 //       ...['الساحة الابتدائية', 'الساحة الاستباقية']
//                 //           .map(
//                 //             (e) => Center(
//                 //               child: Row(
//                 //                 crossAxisAlignment: CrossAxisAlignment.center,
//                 //                 children: [
//                 //                   Container(
//                 //                     // width: context.width * .3,
//                 //                     height: 45,
//                 //                     decoration: BoxDecoration(
//                 //                       color: context.theme.primaryColor,
//                 //                       borderRadius: BorderRadius.circular(24),
//                 //                     ),

//                 //                     child: Center(
//                 //                       child: Padding(
//                 //                         padding: 16.0.symetric,
//                 //                         child: Text(
//                 //                           e,
//                 //                           style: context.textTheme.bodyLarge,
//                 //                         ),
//                 //                       ),
//                 //                     ),
//                 //                   ),

//                 //                   Center(
//                 //                     child: Container(
//                 //                       width: 45,
//                 //                       height: 4,
//                 //                       color: context.theme.primaryColor,
//                 //                     ),
//                 //                   ),
//                 //                 ],
//                 //               ),
//                 //             ),
//                 //           )
//                 //           .toList(),
//                 //       // 8.wGap,
//                 //       Container(
//                 //         width: context.width * .3,
//                 //         height: 45,
//                 //         decoration: BoxDecoration(
//                 //           color: Colors.grey.withValues(alpha: .2),
//                 //           borderRadius: BorderRadius.circular(24),
//                 //         ),

//                 //         child: Center(
//                 //           child: Row(
//                 //             spacing: 4,
//                 //             mainAxisAlignment: MainAxisAlignment.center,
//                 //             children: List.generate(
//                 //               3,
//                 //               (c) => CircleAvatar(
//                 //                 radius: 4,
//                 //                 backgroundColor: Colors.black,
//                 //               ),
//                 //             ),
//                 //           ),
//                 //         ),
//                 //       ),
//                 //     ],
//                 //     // itemCount: 3,
//                 //     //   itemBuilder: (BuildContext context, int index) {
//                 //     //     return Center(
//                 //     //       child: Container(
//                 //     //         width: context.width * .3,
//                 //     //         height: 45,
//                 //     //         decoration: BoxDecoration(
//                 //     //           color: context.theme.primaryColor,
//                 //     //         ),

//                 //     //         child: Center(child: Text('data')),
//                 //     //       ),
//                 //     //     );
//                 //     //   },
//                 //     //   separatorBuilder: (BuildContext context, int index) {
//                 //     //     return Center(
//                 //     //       child: Container(
//                 //     //         width: 45,
//                 //     //         height: 4,
//                 //     //         color: context.theme.primaryColor,
//                 //     //       ),
//                 //     //     );
//                 //     //   },
//                 //   ),
//                 // ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class StatsWidget extends StatelessWidget {
//   const StatsWidget({
//     super.key,
//     required this.title,
//     required this.value,
//     required this.icon,
//     required this.color,
//   });
//   final String title;
//   final String value;
//   final IconData icon;
//   final Color color;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(22),
//         color: color.withOpacity(.1),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Row(
//           children: [
//             CircleAvatar(radius: 30, backgroundColor: color, child: Icon(icon)),
//             8.wGap,
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   title,
//                   textAlign: TextAlign.start,
//                   style: context.textTheme.bodyLarge!.copyWith(
//                     fontWeight: FontWeight.bold,
//                     // color: Colors.white,
//                   ),
//                 ),
//                 Text(
//                   value,
//                   textAlign: TextAlign.start,
//                   style: context.textTheme.bodyLarge!.copyWith(
//                     fontWeight: FontWeight.bold,
//                     // color: Colors.white,
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class PatternedCard extends StatelessWidget {
//   const PatternedCard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         borderRadius: const BorderRadius.all(Radius.circular(65.0)),
//         image: DecorationImage(
//           image: AssetImage('assets/images/pattern.png'),
//           fit: BoxFit.cover,
//         ),
//         color: context.theme.primaryColor,
//         // color: color ?? cardBackgroundColor,
//       ),
//       child: Column(
//         children: [
//           24.hGap,
//           Align(
//             alignment: AlignmentDirectional.centerStart,
//             child: Padding(
//               padding: 16.0.symetric,
//               child: Text(
//                 'محفظتي',
//                 textAlign: TextAlign.start,
//                 style: context.textTheme.bodyLarge!.copyWith(
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//           ),
//           Padding(
//             padding: 8.24.symetric,
//             child: Text(
//               '٥،٠٠٠',
//               style: context.textTheme.headlineLarge!.copyWith(
//                 fontWeight: FontWeight.bold,
//                 color: Colors.white,
//                 fontSize: 40,
//               ),
//             ),
//           ),
//           Wrap(
//             alignment: WrapAlignment.center,
//             // scrollDirection: Axis.horizontal,
//             // dragStartBehavior: DragStartBehavior.down,
//             // shrinkWrap: true,
//             // mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               TransactionButton(
//                 title: 'اجمالي الايداعات',
//                 value: '6,000',
//                 icon: Iconsax.money_recive,
//               ),
//               8.wGap,
//               TransactionButton(
//                 title: 'اجمالي الدفوعات',
//                 value: '6,000',
//                 icon: Iconsax.money_send,
//               ),
//             ],
//           ),
//           24.hGap,
//         ],
//       ),
//     );
//   }
// }

// class TransactionButton extends StatelessWidget {
//   const TransactionButton({
//     super.key,
//     required this.title,
//     required this.value,
//     required this.icon,
//     this.onTap,
//   });
//   final String title;
//   final String value;
//   final IconData icon;
//   final Function? onTap;

//   @override
//   Widget build(BuildContext context) {
//     return TextButton.icon(
//       style: ButtonStyle(
//         backgroundColor: WidgetStatePropertyAll(
//           // Colors.white,
//           context.theme.canvasColor,
//         ),
//       ),
//       onPressed: () {},
//       icon: CircleAvatar(child: Icon(icon)),
//       label: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             title,
//             style: context.textTheme.labelSmall!.copyWith(
//               fontWeight: FontWeight.bold,
//               // fontSize: 40,
//             ),
//           ),
//           Text(
//             value,
//             style: context.textTheme.bodyLarge!.copyWith(
//               fontWeight: FontWeight.bold,
//               // fontSize: 40,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class LoadingDialog extends StatelessWidget {
//   const LoadingDialog({super.key});

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
//                   padding: const EdgeInsets.all(24.0),
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
//   const SuccessDialog({super.key});

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
//                   padding: const EdgeInsets.all(24.0),
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
