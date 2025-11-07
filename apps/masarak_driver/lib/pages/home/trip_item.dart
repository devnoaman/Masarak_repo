// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lottie/lottie.dart';
import 'package:masarak_driver/extentions.dart';
import 'package:masarak_driver/model/driver_info/driver_info.dart';
import 'package:masarak_driver/pages/home/models/expansion_tile_children_model.dart';
import 'package:masarak_driver/pages/home/widgets/expnsion_tile_children.dart';
import 'package:flutter/services.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class TripItem extends StatelessWidget {
  const TripItem({super.key, required this.driverInfo});
  final DriverInfo? driverInfo;

  @override
  Widget build(BuildContext context) {
    // final List<ExpansionTileChildrenModel> expansionchildrenList = [
    //   ExpansionTileChildrenModel(
    //     title: 'الدور في الساحة الابتدائية',
    //     trailing: driverInfo
    //         ?.activeQueueIndex
    //         ?.globalQueueNumber
    //         ?.toFormatednumber
    //         .toString(),
    //   ),
    //   ExpansionTileChildrenModel(
    //     title: 'الدور في الساحة الاستباقية',
    //     trailing: driverInfo
    //         ?.preGateQueueIndex
    //         ?.globalQueueNumber
    //         ?.toFormatednumber
    //         .toString(),
    //   ),
    //   ExpansionTileChildrenModel(
    //     title: 'رقم الحاوية',
    //     trailing: driverInfo?.activeQueueIndex?.containerNumber?.toString(),
    //   ),
    //   ExpansionTileChildrenModel(
    //     title: 'وكيل النقل',
    //     trailing: driverInfo?.activeQueueIndex?.transportationAgent?.toString(),
    //   ),
    //   ExpansionTileChildrenModel(
    //     title: 'حالة السائق',
    //     trailing: driverInfo?.driverStatus?.toString() != null
    //         ? driverInfo!.driverStatus!.toString().contains('On Trip')
    //               ? 'داخل رحلة'
    //               : "متاح"
    //         : null,
    //   ),
    // ];
    // // SizedBox height(BuildContext context) =>
    //     SizedBox(height: Responsive.isDesktop(context) ? 30 : 20);
    return
    // true
    driverInfo == null || driverInfo!.driverStatus == 'Available'
        ? SizedBox(
            height: context.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset('assets/lottie/car-loading.json'),
                8.hGap,
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.green.withAlpha(45),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'في انتظار استلام رحلة',
                      style: context.textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.w900,
                        color: Colors.green,
                      ),
                    ),
                  ),
                ),
                8.hGap,
                Text(
                  'لم يتم حجز رحلة لك بعد',
                  style: context.textTheme.headlineSmall!.copyWith(
                    fontWeight: FontWeight.w900,
                    color: context.theme.primaryColor,
                  ),
                ),
              ],
            ),
          )
        : Padding(
            padding: 16.0.symetric,
            child: Column(
              spacing: 8,
              children: [
                Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                    'سجل الدور',
                    style: context.textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.w900,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
                8.hGap,

                Container(
                  decoration: BoxDecoration(
                    // color: Color(0xff63D4B9),
                    color: Color(0xff175092),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              if (driverInfo
                                      ?.preGateQueueIndex
                                      ?.globalQueueNumber ==
                                  null)
                                ListTile(
                                  leading: CircleIndex(index: null),

                                  // focusColor: Colors.amber,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      color: Colors.red,
                                      width: 2,
                                    ),
                                  ),
                                  title: Text(
                                    'الساحة الابتدائية',
                                    style: context.textTheme.bodyLarge!
                                        .copyWith(
                                          fontWeight: FontWeight.w900,
                                          color: Colors.white,
                                        ),
                                  ),
                                  trailing: Text(
                                    'دورك هو : ${driverInfo?.activeQueueIndex?.globalQueueNumber?.toFormatedPrice}' ??
                                        'لم يتم تعينه',
                                    style: context.textTheme.bodyLarge!
                                        .copyWith(color: Colors.white),
                                  ),
                                ),
                              if (driverInfo
                                      ?.preGateQueueIndex
                                      ?.globalQueueNumber !=
                                  null)
                                ListTile(
                                  leading: CircleIndex(index: null),
                                  shape: Border.all(),
                                  title: Text(
                                    'الساحة الاستباقية',
                                    style: context.textTheme.bodyLarge!
                                        .copyWith(
                                          fontWeight: FontWeight.w900,
                                          color: Colors.white,
                                        ),
                                  ),
                                  trailing: Text(
                                    'دورك هو : ${driverInfo?.preGateQueueIndex?.globalQueueNumber?.toFormatedPrice}' ??
                                        'لم يتم تعينه',
                                    style: context.textTheme.bodyLarge!
                                        .copyWith(color: Colors.white),
                                  ),
                                ),
                              if (driverInfo
                                          ?.preGateQueueIndex
                                          ?.globalQueueNumber ==
                                      null &&
                                  driverInfo
                                          ?.activeQueueIndex
                                          ?.globalQueueNumber ==
                                      null)
                                ListTile(
                                  // leading: CircleIndex(index: null),
                                  shape: Border.all(),
                                  title: Text(
                                    'ليس لديك دور بعد',
                                    style: context.textTheme.bodyLarge!
                                        .copyWith(
                                          fontWeight: FontWeight.w900,
                                          color: Colors.white,
                                        ),
                                  ),
                                ),
                            ],
                          ),
                        ),

                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 12,
                              height: 12,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: context.theme.primaryColor,
                              ),
                            ),
                            Container(
                              height: 36 / 2 + 16 + 16,
                              child: Column(
                                // spacing: 8,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  ...List.generate(
                                    2,
                                    (generator) => Container(
                                      width: 4,
                                      height: 12,
                                      decoration: BoxDecoration(
                                        // shape: BoxShape.circle,
                                        borderRadius: BorderRadius.circular(12),
                                        color:
                                            // driverInfo?.trip?.workflowState ==
                                            //     "Queue on Pre-Gate"
                                            // ?
                                            context.theme.primaryColor,
                                        // : context
                                        //       .theme
                                        //       .scaffoldBackgroundColor,
                                      ),
                                    ),
                                  ).toList(),
                                ],
                              ),
                            ),
                            Container(
                              width: 12,
                              height: 12,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color:
                                    // driverInfo?.trip?.workflowState ==
                                    //     "Queue on Pre-Gate"
                                    // ? Colors.grey
                                    // :
                                    context.theme.primaryColor,
                              ),
                            ),
                          ],
                        ),
                        8.wGap,
                      ],
                    ),
                  ),
                ),
                8.hGap,
                Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                    'معلومات الرحلة الحالية',
                    style: context.textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
                  ),
                ),
                8.hGap,

                Container(
                  decoration: BoxDecoration(
                    // color: Color(0xff63D4B9),
                    color: Color(0xff175092),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      spacing: 8,
                      children: [
                        ExpnsionTileChildren(
                          leadingIcon: Iconsax.routing,
                          title: 'معرف الرحلة',
                          trailingIcon: Iconsax.copy,
                          onTrailingTab: () async {
                            await Clipboard.setData(
                              ClipboardData(text: driverInfo?.trip?.name ?? ''),
                            ).then((_) {
                              showTopSnackBar(
                                Overlay.of(context),
                                CustomSnackBar.success(
                                  message: 'تم نسخ معرف الرحلة',
                                  iconPositionLeft: 12,
                                  backgroundColor: context.theme.primaryColor,
                                  icon: Icon(Iconsax.tick_circle),
                                ),
                              );
                            });
                          },
                          trailing: driverInfo?.trip?.name,
                        ),
                        // ExpnsionTileChildren(
                        //   title: 'معرف الرصيف',
                        //   leadingIcon: Iconsax.building,

                        //   // leadingIcon: Iconsax.,
                        //   trailing: driverInfo?.trip?.berth,
                        // ),
                        ExpnsionTileChildren(
                          title: 'الرصيف',
                          leadingIcon: Iconsax.building,

                          trailing: driverInfo?.trip?.berthName,
                        ),
                        ExpnsionTileChildren(
                          title: 'اسم المنفذ',
                          trailing: driverInfo?.trip?.portName,
                          leadingIcon: Iconsax.buildings,
                        ),
                        ExpnsionTileChildren(
                          title: 'حجم الحاوية المعادة للرصيف',
                          leadingIcon: Iconsax.box,
                          trailing: driverInfo?.trip?.returnContainerSize,
                        ),
                      ],
                    ),
                  ),
                ),
                // ExpnsionTileChildren(
                //   title: 'حالة الدفع',
                //   leadingIcon: Iconsax.money,
                //   trailing: driverInfo?.trip?.paid == 1
                //       ? 'مدفوعة'
                //       : 'غير مدفوعة',
                // ),
                8.hGap,
                if (driverInfo?.trip?.printingAgent != null)
                  Column(
                    spacing: 8,
                    children: [
                      Align(
                        alignment: AlignmentDirectional.centerStart,
                        child: Text(
                          'معلومات مخول الطباعة',
                          style: context.textTheme.bodyLarge!.copyWith(
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      8.hGap,
                      Container(
                        decoration: BoxDecoration(
                          // color: Color(0xff63D4B9),
                          color: Color(0xff175092),
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            spacing: 8,
                            children: [
                              ExpnsionTileChildren(
                                title: 'مخول الطباعة',
                                leadingIcon: Iconsax.user,
                                trailing:
                                    driverInfo?.trip?.printingAgent?.name ??
                                    '--',
                              ),
                              ExpnsionTileChildren(
                                title: 'رقم الهاتف',
                                leadingIcon: Iconsax.mobile,
                                trailingIcon:
                                    driverInfo?.trip?.printingAgent?.mobile ==
                                        null
                                    ? null
                                    : Iconsax.copy,
                                onTrailingTab: () async {
                                  await Clipboard.setData(
                                    ClipboardData(
                                      text:
                                          driverInfo
                                              ?.trip
                                              ?.printingAgent
                                              ?.mobile ??
                                          '',
                                    ),
                                  ).then((_) {
                                    showTopSnackBar(
                                      Overlay.of(context),
                                      CustomSnackBar.success(
                                        message: 'تم نسخ رقم الهاتف',
                                        iconPositionLeft: 12,
                                        backgroundColor:
                                            context.theme.primaryColor,
                                        icon: Icon(Iconsax.tick_circle),
                                      ),
                                    );
                                  });
                                },
                                trailing:
                                    driverInfo?.trip?.printingAgent?.mobile ??
                                    '---',
                              ),
                            ],
                          ),
                        ),
                      ),

                      // ExpnsionTileChildren(
                      //   title: 'العنوان',
                      //   leadingIcon: Iconsax.location,
                      //   trailing:
                      //       driverInfo?.trip?.printingAgent?.address ?? '',
                      // ),
                    ],
                  ),

                8.hGap,
                if (driverInfo?.trip?.transportationAgent != null)
                  Column(
                    spacing: 8,
                    children: [
                      Align(
                        alignment: AlignmentDirectional.centerStart,
                        child: Text(
                          'معلومات مخول النقل',
                          style: context.textTheme.bodyLarge!.copyWith(
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                          ),
                        ),
                      ),

                      8.hGap,
                      Container(
                        decoration: BoxDecoration(
                          // color: Color(0xff63D4B9),
                          color: Color(0xff175092),
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            spacing: 8,
                            children: [
                              ExpnsionTileChildren(
                                title: 'مخول النقل',
                                leadingIcon: Iconsax.user,
                                trailing:
                                    driverInfo?.trip?.transportationAgent
                                        ?.split('/')
                                        .first ??
                                    '',
                              ),
                              ExpnsionTileChildren(
                                title: 'رقم الهاتف',
                                leadingIcon: Iconsax.mobile,
                                trailingIcon: Iconsax.copy,
                                onTrailingTab: () async {
                                  await Clipboard.setData(
                                    ClipboardData(
                                      text:
                                          driverInfo?.trip?.transportationAgent
                                              ?.split('/')
                                              .last ??
                                          '',
                                    ),
                                  ).then((_) {
                                    showTopSnackBar(
                                      Overlay.of(context),
                                      CustomSnackBar.success(
                                        message: 'تم نسخ رقم الهاتف',
                                        iconPositionLeft: 12,
                                        backgroundColor:
                                            context.theme.primaryColor,
                                        icon: Icon(Iconsax.tick_circle),
                                      ),
                                    );
                                  });
                                },
                                trailing:
                                    driverInfo?.trip?.transportationAgent
                                        ?.split('/')
                                        .last ??
                                    '',
                              ),
                            ],
                          ),
                        ),
                      ),

                      // ExpnsionTileChildren(
                      //   title: 'العنوان',
                      //   leadingIcon: Iconsax.location,
                      //   trailing:
                      //       driverInfo?.trip?.printingAgent?.address ?? '',
                      // ),
                    ],
                  ),
              ],
            ),
          );

    // ExpansionTile(
    //     title: Text(driverInfo?.trip?.name ?? ''),
    //     subtitle: Row(
    //       children: [
    //         8.hGap,
    //         CircleAvatar(radius: 8, backgroundColor: Colors.greenAccent),
    //         8.wGap,
    //         Text(
    //           driverInfo?.trip?.workflowState != null
    //               ? driverInfo!.trip!.workflowState!.contains('On Queue')
    //                     ? 'داخل طابور الانتظار'
    //                     : driverInfo?.trip?.workflowState ?? ''
    //               : '',
    //         ),
    //       ],
    //     ),
    //     children: expansionchildrenList.map((expansionchild) {
    //       return Padding(
    //         padding: 6.vPadding,
    //         child: ExpnsionTileChildren(
    //           title: expansionchild.title,
    //           trailing: expansionchild.trailing,
    //         ),
    //       );
    //     }).toList(),

    //     // [
    //     //   Padding(
    //     //     padding: 16.0.symetric,
    //     //     child: Row(
    //     //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //     //       children:
    //     //       [
    //     //         Text(
    //     //           'الدور في الساحة الابتدائية',
    //     //           textAlign: TextAlign.start,
    //     //           style: context.textTheme.bodyMedium!.copyWith(
    //     //             // fontWeight: FontWeight.bold,
    //     //             // color: Colors.white,
    //     //           ),
    //     //         ),
    //     //         driverInfo?.activeQueueIndex?.globalQueueNumber != null
    //     //             ? Container(
    //     //                 decoration: BoxDecoration(
    //     //                   color: Color(0xffd8e2ff),
    //     //                   borderRadius: BorderRadius.circular(6),
    //     //                 ),
    //     //                 padding: 8.allPadding,
    //     //                 child: Text(
    //     //                   driverInfo?.activeQueueIndex?.globalQueueNumber
    //     //                           ?.toString() ??
    //     //                       '',
    //     //                   style: Theme.of(context).textTheme.bodyLarge,
    //     //                 ),
    //     //               )
    //     //             : SizedBox(),
    //     //       ],
    //     //     ),
    //     //   ),

    //     //   ExpnsionTileChildren(),
    //     //   // height(context),
    //     //   // height(context),
    //     //   Padding(padding: 16.0.symetric, child: Divider()),
    //     //   // height(context),

    //     //   // height(context),
    //     //   height(context),
    //     //   // Padding(padding: 16.0.symetric, child: Divider()),
    //     //   // height(context),
    //     // ],
    //   );
  }
}

class CircleIndex extends StatelessWidget {
  const CircleIndex({super.key, this.index});
  final int? index;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 36,
      height: 36,
      decoration: BoxDecoration(
        // shape: BoxShape.circle,
        borderRadius: BorderRadius.circular(12),
        color: context.theme.primaryColor,
      ),
      child: Center(
        child: Text(
          '${index ?? ''}',
          style: context.textTheme.bodyLarge!.copyWith(
            fontWeight: FontWeight.w900,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
