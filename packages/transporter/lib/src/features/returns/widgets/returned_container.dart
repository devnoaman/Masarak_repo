// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared/shared.dart';
import 'package:transporter/providers/app_context_provider.dart';
import 'package:transporter/src/features/returns/widgets/trip_info.dart';
import 'package:shared/src/components/plate_number.dart';

class ReturnedContainer extends HookConsumerWidget {
  const ReturnedContainer({
    super.key,
    required this.trip,
  });
  final ReturnTripModel trip;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final PlateHandler hndlr = PlateHandler();

    var isExpanded = useState(false);

    return Padding(
      padding: 0.8.symetric,
      child: Theme(
        data: context.theme.copyWith(dividerColor: Colors.transparent),
        child: Container(
          padding: 16.allPadding,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child:
              // ExpansionTile(
              // backgroundColor: Colors.white,
              // collapsedShape: RoundedRectangleBorder(
              //   borderRadius: BorderRadiusGeometry.circular(20),
              // ),
              // clipBehavior: Clip.hardEdge,
              // showTrailingIcon: false,
              // shape: RoundedRectangleBorder(
              //   borderRadius: BorderRadiusGeometry.circular(20),
              // ),
              // onExpansionChanged: (value) {
              //   isExpanded.value = value;
              // },
              // collapsedBackgroundColor: Colors.white,
              // expandedCrossAxisAlignment: CrossAxisAlignment.start,
              // childrenPadding: EdgeInsets.all(8),
              // controlAffinity: ListTileControlAffinity.leading,
              // leading: SizedBox.shrink(),
              // trailing: Icon(
              //   isExpanded.value
              //       ? Iconsax.arrow_circle_up
              //       : Iconsax.arrow_circle_down,
              //   color: context.theme.scaffoldBackgroundColor,
              // ),
              // title:
              Hero(
                tag: trip.tripName ?? UniqueKey(),
                child: Material(
                  color: Colors.transparent,
                  child: Column(
                    children: [
                      ListTile(
                        contentPadding: EdgeInsets.all(0),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              padding: 16.8.symetric,
                              decoration: BoxDecoration(
                                color: trip.isPaid == 1
                                    ? context.theme.scaffoldBackgroundColor
                                    : Colors.grey.shade200,
                                borderRadius: 30.cRadius,
                              ),
                              child: Text(
                                trip.isPaid == 1 ? 'مدفوع' : 'غير مدفوع',
                                style: context.textTheme.bodyLarge!.copyWith(
                                  fontWeight: FontWeight.w900,
                                  color: trip.isPaid == 1
                                      ? Colors.white
                                      : context.theme.scaffoldBackgroundColor,
                                  //context.theme.scaffoldBackgroundColor,
                                ),
                              ),
                            ),
                            // IconButton.filledTonal(
                            //   style: ButtonStyle(
                            //     backgroundColor: WidgetStatePropertyAll(
                            //       context.theme.scaffoldBackgroundColor.withAlpha(
                            //         20,
                            //       ),
                            //     ),
                            //   ),
                            //   onPressed: () {
                            //     var appKey = ref.read(appCtxProvider);
                            //     if (appKey.currentState != null) {
                            //       Navigator.of(
                            //         appKey.currentState!.context,
                            //       ).push(
                            //         MaterialPageRoute(
                            //           builder: (ctx) => ReturnTripOperations(
                            //             trip: trip,
                            //           ),
                            //         ),
                            //       );
                            //     }
                            //   },
                            //   icon: Icon(
                            //     Iconsax.menu_board,
                            //     color: context.theme.scaffoldBackgroundColor,
                            //   ),
                            // ),
                          ],
                        ),
                        title: Text(
                          trip.tripName?.toString() ?? '--',
                          style: context.textTheme.headlineMedium!.copyWith(
                            color: Colors.black,
                            // fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        subtitle: Text(
                          trip.returnJobRequest?.toString() ?? '--',
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            trip.driver?.split('/').first ?? '--',
                            style: context.textTheme.bodyLarge!.copyWith(
                              fontWeight: FontWeight.w900,
                              color: context.theme.scaffoldBackgroundColor,
                            ),
                          ),
                          Spacer(),
                          ConstrainedBox(
                            constraints: BoxConstraints(
                              maxWidth: context.width * .3,
                            ),
                            child: FittedBox(
                              child: PlateNumber(
                                plateNumber: handlePlate(hndlr),
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      12.hGap,
                      OutlinedButton(
                        onPressed: () {
                          final appKey = ref.read(appCtxProvider);
                          if (appKey.currentState != null) {
                            Navigator.of(appKey.currentState!.context).push(
                              MaterialPageRoute(
                                builder: (ctx) => TripInfo(
                                  trip: trip,
                                ),
                              ),
                            );
                          }
                        },
                        style: OutlinedButton.styleFrom(
                          minimumSize: Size(double.infinity, 45),
                          side: BorderSide(
                            color: context.theme.scaffoldBackgroundColor,
                            width: 1.5,
                          ),

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Text(
                          'المعلومات',
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
          // children: [
          //   Divider(),
          //   Text(
          //     'تفاصيل الحاوية',
          //     style: context.textTheme.bodyLarge!.copyWith(
          //       fontWeight: FontWeight.w900,
          //     ),
          //   ),
          //   16.hGap,
          //   SectionRow(
          //     title: 'رقم الحاوية',
          //     value: trip.containerNumber ?? '---',
          //   ),
          //   SectionRow(
          //     title: 'حجم الحاوية',
          //     value: trip.containerSize == null
          //         ? '---'
          //         : ('${trip.containerSize} قدم'),
          //   ),
          //   SectionRow(
          //     title: 'تاريخ اخذ الحاوية',
          //     value: trip.takenDate == null ? '---' : ('${trip.takenDate}'),
          //   ),
          //   Divider(),
          //   Text(
          //     'تفاصيل السائق و الحاوية',
          //     style: context.textTheme.bodyLarge!.copyWith(
          //       fontWeight: FontWeight.w900,
          //     ),
          //   ),
          //   16.hGap,
          //   Row(
          //     children: [
          //       CircleAvatar(
          //         child: Icon(Iconsax.user),
          //       ),
          //       8.wGap,
          //       Expanded(
          //         child: Column(
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           children: [
          //             Text(
          //               trip.driver?.split('/').first ?? '--',
          //               style: context.textTheme.bodyLarge!.copyWith(
          //                 fontWeight: FontWeight.w900,
          //                 color: context.theme.scaffoldBackgroundColor,
          //               ),
          //             ),
          //             Text(
          //               trip.driver?.split('/').last ?? '--',
          //               style: context.textTheme.bodyLarge!.copyWith(
          //                 fontWeight: FontWeight.w900,
          //                 color: context.theme.scaffoldBackgroundColor,
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //     ],
          //   ),

          //   Row(
          //     children: [
          //       CircleAvatar(
          //         child: Icon(Iconsax.truck),
          //       ),
          //       8.wGap,
          //       Expanded(
          //         child: Column(
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           children: [
          //             Text(
          //               trip.truckRelation?.city?.country ?? '--',
          //               style: context.textTheme.bodyLarge!.copyWith(
          //                 fontWeight: FontWeight.w900,
          //                 color: context.theme.scaffoldBackgroundColor,
          //               ),
          //             ),
          //             Text(
          //               trip.truckRelation?.status ?? '--',
          //               style: context.textTheme.bodyLarge!.copyWith(
          //                 fontWeight: FontWeight.w900,
          //                 color: context.theme.scaffoldBackgroundColor,
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //       PlateNumber(
          //         plateNumber: handlePlate(hndlr),
          //       ),
          //     ],
          //   ),

          //   Divider(),
          //   Text(
          //     'رصيف الاعادة',
          //     style: context.textTheme.bodyLarge!.copyWith(
          //       fontWeight: FontWeight.w900,
          //     ),
          //   ),
          //   16.hGap,
          //   SectionRow(
          //     title: 'اسم الرصيف',
          //     value: trip.berth?.berthName ?? '---',
          //   ),
          //   SectionRow(
          //     title: 'المنفذ',
          //     value: trip.berth?.port ?? '---',
          //   ),
          //   Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       Text(
          //         'مشغل المنفذ',
          //         style: context.textTheme.bodyLarge!.copyWith(
          //           fontWeight: FontWeight.w900,
          //           color: context.theme.scaffoldBackgroundColor,
          //         ),
          //       ),
          //       SizedBox(
          //         width: context.width * 0.6,
          //         child: Text(
          //           trip.berth?.terminalOperatorName ?? '---',
          //           textAlign: TextAlign.left,
          //           style: context.textTheme.bodyLarge!.copyWith(
          //             fontWeight: FontWeight.w900,
          //             color: context.theme.scaffoldBackgroundColor,
          //           ),
          //           maxLines: 2,
          //           overflow: TextOverflow.ellipsis,
          //         ),
          //       ),
          //     ],
          //   ),

          //   // SectionRow(
          //   //   title: 'مشغل المنفذ',
          //   //   value: trip.berth?.terminalOperatorName ?? '---',
          //   // ),
          //   Divider(),
          //   Text(
          //     'مخول الطباعة',
          //     style: context.textTheme.bodyLarge!.copyWith(
          //       fontWeight: FontWeight.w900,
          //     ),
          //   ),
          //   16.hGap,
          //   Row(
          //     children: [
          //       CircleAvatar(
          //         child: Icon(Iconsax.document),
          //       ),
          //       8.wGap,
          //       Expanded(
          //         child: Column(
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           children: [
          //             Text(
          //               trip.printingAgent?.name ?? '--',
          //               style: context.textTheme.bodyLarge!.copyWith(
          //                 fontWeight: FontWeight.w900,
          //                 color: context.theme.scaffoldBackgroundColor,
          //               ),
          //             ),
          //             Text(
          //               trip.printingAgent?.mobile ?? '--',
          //               style: context.textTheme.bodyLarge!.copyWith(
          //                 fontWeight: FontWeight.w900,
          //                 color: context.theme.scaffoldBackgroundColor,
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //     ],
          //   ),
          //   Divider(),
          //   // Text(
          //   //   'حالة الدفع',
          //   //   style: context.textTheme.bodyLarge!.copyWith(
          //   //     fontWeight: FontWeight.w900,
          //   //   ),
          //   // ),
          //   // Row(
          //   //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   //   children: [
          //   //     Text(
          //   //       'حالة الدفع',
          //   //       style: context.textTheme.bodyLarge!.copyWith(
          //   //         fontWeight: FontWeight.w900,
          //   //         color: context.theme.scaffoldBackgroundColor,
          //   //       ),
          //   //     ),
          //   //     Container(
          //   //       padding: 16.8.symetric,
          //   //       decoration: BoxDecoration(
          //   //         color: context.theme.scaffoldBackgroundColor.withAlpha(20),
          //   //         borderRadius: 24.cRadius,
          //   //       ),
          //   //       child: Text(
          //   //         trip.isPaid == 1 ? 'مدفوع' : 'غير مدفوع',
          //   //         style: context.textTheme.bodyLarge!.copyWith(
          //   //           fontWeight: FontWeight.w900,
          //   //           color: context.theme.scaffoldBackgroundColor,
          //   //         ),
          //   //       ),
          //   //     ),
          //   //   ],
          //   // ),
          // ],
          // ),
        ),
      ),
    );

    // return Card(
    //   color: context.theme.primaryColor,
    //   child: Padding(
    //     padding: 16.8.symetric,
    //     child: Column(
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: [
    //         Hero(
    //           tag: trip.id ?? UniqueKey(),
    //           child: Material(
    //             color: Colors.transparent,
    //             child: ListTile(
    //               contentPadding: EdgeInsets.all(0),
    //               leading: Container(
    //                 width: 12,
    //                 height: 12,
    //                 decoration: BoxDecoration(
    //                   shape: BoxShape.circle,
    //                   color: context.theme.scaffoldBackgroundColor,
    //                 ),
    //               ),
    //               trailing: Row(
    //                 mainAxisSize: MainAxisSize.min,
    //                 children: [
    //                   IconButton.filledTonal(
    //                     style: ButtonStyle(
    //                       backgroundColor: WidgetStatePropertyAll(
    //                         context.theme.scaffoldBackgroundColor.withAlpha(20),
    //                       ),
    //                     ),
    //                     onPressed: () {
    //                       var appKey = ref.read(appCtxProvider);
    //                       if (appKey.currentState != null) {
    //                         // showModalBottomSheet(
    //                         //   context: appKey.currentState!.context,
    //                         //   isScrollControlled: true,
    //                         //   builder: (context) => ReturnTripOperations(trip: trip),
    //                         // );

    //                         Navigator.of(appKey.currentState!.context).push(
    //                           MaterialPageRoute(
    //                             builder: (ctx) =>
    //                                 ReturnTripOperations(trip: trip),
    //                           ),
    //                         );
    //                       }
    //                     },
    //                     icon: Icon(
    //                       Iconsax.menu_board,
    //                       color: context.theme.scaffoldBackgroundColor,
    //                     ),
    //                   ),

    //                   IconButton.filledTonal(
    //                     style: ButtonStyle(
    //                       backgroundColor: WidgetStatePropertyAll(
    //                         context.theme.scaffoldBackgroundColor.withAlpha(20),
    //                       ),
    //                     ),
    //                     onPressed: () {
    //                       var appKey = ref.read(appCtxProvider);
    //                       if (appKey.currentState != null) {
    //                         // showModalBottomSheet(
    //                         //   context: appKey.currentState!.context,
    //                         //   isScrollControlled: true,
    //                         //   builder: (context) => ReturnTripOperations(trip: trip),
    //                         // );
    //                       }
    //                     },
    //                     icon: Icon(
    //                       Iconsax.arrow_down,
    //                       color: context.theme.scaffoldBackgroundColor,
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //               title: Text(trip.id?.toString() ?? '--'),
    //               subtitle: Text(trip.returnJobRequest?.toString() ?? '--'),
    //             ),
    //           ),
    //         ),
    //         Divider(),
    //         Text(
    //           'تفاصيل الحاوية',
    //           style: context.textTheme.bodyLarge!.copyWith(
    //             fontWeight: FontWeight.w900,
    //           ),
    //         ),
    //         16.hGap,
    //         SectionRow(
    //           title: 'رقم الحاوية',
    //           value: trip.containerNumber ?? '---',
    //         ),
    //         SectionRow(
    //           title: 'حجم الحاوية',
    //           value: trip.containerSize == null
    //               ? '---'
    //               : ('${trip.containerSize} قدم'),
    //         ),
    //         SectionRow(
    //           title: 'تاريخ اخذ الحاوية',
    //           value: trip.takenDate == null ? '---' : ('${trip.takenDate}'),
    //         ),
    //         Divider(),
    //         Text(
    //           'تفاصيل السائق و الحاوية',
    //           style: context.textTheme.bodyLarge!.copyWith(
    //             fontWeight: FontWeight.w900,
    //           ),
    //         ),
    //         16.hGap,
    //         Row(
    //           children: [
    //             CircleAvatar(
    //               child: Icon(Iconsax.user),
    //             ),
    //             8.wGap,
    //             Expanded(
    //               child: Column(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 children: [
    //                   Text(
    //                     trip.driver?.split('/').first ?? '--',
    //                     style: context.textTheme.bodyLarge!.copyWith(
    //                       fontWeight: FontWeight.w900,
    //                       color: context.theme.scaffoldBackgroundColor,
    //                     ),
    //                   ),
    //                   Text(
    //                     trip.driver?.split('/').last ?? '--',
    //                     style: context.textTheme.bodyLarge!.copyWith(
    //                       fontWeight: FontWeight.w900,
    //                       color: context.theme.scaffoldBackgroundColor,
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //             ),
    //           ],
    //         ),

    //         Row(
    //           children: [
    //             CircleAvatar(
    //               child: Icon(Iconsax.truck),
    //             ),
    //             8.wGap,
    //             Expanded(
    //               child: Column(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 children: [
    //                   Text(
    //                     trip.truckRelation?.city?.country ?? '--',
    //                     style: context.textTheme.bodyLarge!.copyWith(
    //                       fontWeight: FontWeight.w900,
    //                       color: context.theme.scaffoldBackgroundColor,
    //                     ),
    //                   ),
    //                   Text(
    //                     trip.truckRelation?.status ?? '--',
    //                     style: context.textTheme.bodyLarge!.copyWith(
    //                       fontWeight: FontWeight.w900,
    //                       color: context.theme.scaffoldBackgroundColor,
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //             ),
    //             PlateNumber(
    //               plateNumber: handlePlate(hndlr),
    //             ),
    //           ],
    //         ),

    //         Divider(),
    //         Text(
    //           'رصيف الاعادة',
    //           style: context.textTheme.bodyLarge!.copyWith(
    //             fontWeight: FontWeight.w900,
    //           ),
    //         ),
    //         16.hGap,
    //         SectionRow(
    //           title: 'اسم الرصيف',
    //           value: trip.berth?.berthName ?? '---',
    //         ),
    //         SectionRow(
    //           title: 'المنفذ',
    //           value: trip.berth?.port ?? '---',
    //         ),
    //         Row(
    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           children: [
    //             Text(
    //               'مشغل المنفذ',
    //               style: context.textTheme.bodyLarge!.copyWith(
    //                 fontWeight: FontWeight.w900,
    //                 color: context.theme.scaffoldBackgroundColor,
    //               ),
    //             ),
    //             SizedBox(
    //               width: context.width * 0.6,
    //               child: Text(
    //                 trip.berth?.terminalOperatorName ?? '---',
    //                 textAlign: TextAlign.left,
    //                 style: context.textTheme.bodyLarge!.copyWith(
    //                   fontWeight: FontWeight.w900,
    //                   color: context.theme.scaffoldBackgroundColor,
    //                 ),
    //                 maxLines: 2,
    //                 overflow: TextOverflow.ellipsis,
    //               ),
    //             ),
    //           ],
    //         ),

    //         // SectionRow(
    //         //   title: 'مشغل المنفذ',
    //         //   value: trip.berth?.terminalOperatorName ?? '---',
    //         // ),
    //         Divider(),
    //         Text(
    //           'مخول الطباعة',
    //           style: context.textTheme.bodyLarge!.copyWith(
    //             fontWeight: FontWeight.w900,
    //           ),
    //         ),
    //         16.hGap,
    //         Row(
    //           children: [
    //             CircleAvatar(
    //               child: Icon(Iconsax.document),
    //             ),
    //             8.wGap,
    //             Expanded(
    //               child: Column(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 children: [
    //                   Text(
    //                     trip.printingAgent?.name ?? '--',
    //                     style: context.textTheme.bodyLarge!.copyWith(
    //                       fontWeight: FontWeight.w900,
    //                       color: context.theme.scaffoldBackgroundColor,
    //                     ),
    //                   ),
    //                   Text(
    //                     trip.printingAgent?.mobile ?? '--',
    //                     style: context.textTheme.bodyLarge!.copyWith(
    //                       fontWeight: FontWeight.w900,
    //                       color: context.theme.scaffoldBackgroundColor,
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //             ),
    //           ],
    //         ),
    //         Divider(),
    //         // Text(
    //         //   'حالة الدفع',
    //         //   style: context.textTheme.bodyLarge!.copyWith(
    //         //     fontWeight: FontWeight.w900,
    //         //   ),
    //         // ),
    //         Row(
    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           children: [
    //             Text(
    //               'حالة الدفع',
    //               style: context.textTheme.bodyLarge!.copyWith(
    //                 fontWeight: FontWeight.w900,
    //                 color: context.theme.scaffoldBackgroundColor,
    //               ),
    //             ),
    //             Container(
    //               padding: 16.8.symetric,
    //               decoration: BoxDecoration(
    //                 color: context.theme.scaffoldBackgroundColor.withAlpha(20),
    //                 borderRadius: 24.cRadius,
    //               ),
    //               child: Text(
    //                 trip.isPaid == 1 ? 'مدفوع' : 'غير مدفوع',
    //                 style: context.textTheme.bodyLarge!.copyWith(
    //                   fontWeight: FontWeight.w900,
    //                   color: context.theme.scaffoldBackgroundColor,
    //                 ),
    //               ),
    //             ),
    //           ],
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }

  String handlePlate(PlateHandler hndlr) {
    var ltr = isFirstCharLetter(trip.truckRelation?.plate ?? '1');
    return '${ltr ? hndlr.getInitial(trip.truckRelation?.city?.state ?? '') : ''}${trip.truckRelation?.plate}';
  }

  bool isFirstCharLetter(String text) {
    if (text.isEmpty) {
      return false;
    }
    final firstChar = text[0].toLowerCase();
    return firstChar.codeUnitAt(0) >= 'a'.codeUnitAt(0) &&
        firstChar.codeUnitAt(0) <= 'z'.codeUnitAt(0);
  }
}
