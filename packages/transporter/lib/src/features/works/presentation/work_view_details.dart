// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared/shared.dart';
import 'package:transporter/src/features/works/components/actions_dialogs/cancel_return_trip.dart';
import 'package:transporter/src/features/works/components/actions_dialogs/cancel_trip.dart';
import 'package:transporter/src/features/works/components/actions_dialogs/edit_driver_and_truck.dart';
import 'package:transporter/src/features/works/components/actions_dialogs/edit_empty_return.dart';
import 'package:transporter/src/features/works/components/actions_dialogs/edit_unique_custom_identifier.dart';
import 'package:transporter/src/features/works/components/operation_modal_sheet.dart';

import '../components/work_info.dart';

class WorkViewDetails extends HookConsumerWidget {
  const WorkViewDetails({super.key, required this.jobRequest});
  final JobRequest jobRequest;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final PlateHandler hndlr = PlateHandler();
    var connectedTrip = jobRequest.connectedTrips ?? [];

    // final headers = [
    //   '#',
    //   'حاوية عودة الفارغ',
    //   if (jobRequest.connectedTrips?.any(
    //         (e) => e.containerDetails?.containerNumber != null,
    //       ) ==
    //       true) ...[
    //     'رقم الحاوية',
    //     'رقم الحاوية الثانية',
    //     'حجم الحاوية',
    //     'نوع الحاوية',
    //     'رقم البوليصة',
    //   ],

    //   'السائق',
    //   'شاحنة',
    //   'الرقم الجمركي الموحد',
    //   'العملية',
    //   'الحالة',
    // ];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'التفاصيل',
          style: context.textTheme.bodyLarge!.copyWith(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: 16.hPadding,
        itemCount: connectedTrip.length,
        itemBuilder: (context, index) {
          final trip = connectedTrip[index];
          String handlePlate(PlateHandler hndlr) {
            var ltr = isFirstCharLetter(trip.localTruck?.plate ?? '1');
            return '${ltr ? hndlr.getInitial(trip.localTruck!.city?.state ?? '') : ''}${trip.localTruck?.plate}';
          }

          return Container(
            margin: const EdgeInsets.only(bottom: 12),
            padding: 16.12.symetric,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 8,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        'الرقم الجمركي الموحد\n${trip.uniqueIdentifierCustomsNumber ?? '---'}',
                        style: context.textTheme.bodyLarge!.copyWith(
                          fontWeight: FontWeight.w800,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      padding: 16.8.symetric,
                      decoration: BoxDecoration(
                        color: context.theme.scaffoldBackgroundColor,
                        borderRadius: 30.cRadius,
                      ),
                      child: Text(
                        trip.workflowState ?? '---',
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 4,
                  children: [
                    WorkInfo(
                      title: 'السائق',
                      value: trip.driver?.split('/').first ?? '---',
                    ),
                    Row(
                      children: [
                        Text('رقم الشاحنة'),
                        SizedBox(
                          width: context.width * 0.1,
                        ),
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
                    Row(
                      children: [
                        Text('حاوية عودة الفارغ'),
                        SizedBox(
                          width: context.width * 0.1,
                        ),
                        Text(trip.containerDetails!.containerSize ?? '---'),
                      ],
                    ),
                    Row(
                      children: [
                        Text('حالة الشاحنة'),
                        SizedBox(
                          width: context.width * 0.1,
                        ),
                        Text(trip.localTruck?.status ?? '---'),
                      ],
                    ),
                  ],
                ),
                OutlinedButton(
                  onPressed: () async {
                    final operation =
                        await showModalBottomSheet<TripOperations?>(
                          context: context,
                          backgroundColor: Colors.transparent,
                          isScrollControlled: true,
                          builder: (ctx) => Padding(
                            padding: 5.hPadding,
                            child: SafeArea(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                spacing: 8,
                                children: [
                                  OperationModalSheet(
                                    tripStatus: trip.workflowState ?? '',
                                  ),
                                  SizedBox(
                                    width: double.infinity,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: context
                                            .theme
                                            .scaffoldBackgroundColor,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            15,
                                          ),
                                        ),
                                      ),
                                      onPressed: () => Navigator.pop(context),
                                      child: Text(
                                        'إلغاء',
                                        style: context.textTheme.bodyLarge!
                                            .copyWith(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                    if (context.mounted) {
                      switch (operation) {
                        case TripOperations.uniqueIdentifierCustomsNumber:
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) => EditUniqueCustomIdentifier(
                                trip: trip,
                                tripUid: trip.tripUuid,
                              ),
                            ),
                          );
                          // showModalBottomSheet(
                          //   context: context,
                          //   backgroundColor:
                          //       context.theme.scaffoldBackgroundColor,
                          //   isScrollControlled: true,
                          //   builder: (ctx) => EditUniqueCustomIdentifier(
                          //     tripUid: trip.tripUuid,
                          //   ),
                          // );
                          break;
                        case TripOperations.truckDriverEdit:
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) => EditDriverAndTruck(
                                trip: trip,
                              ),
                            ),
                          );
                          break;
                        case TripOperations.editReturn:
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) => EditEmptyReturn(trip: trip),
                            ),
                          );
                          // showModalBottomSheet(
                          //   context: context,
                          //   backgroundColor:
                          //       context.theme.scaffoldBackgroundColor,
                          //   isScrollControlled: true,
                          //   builder: (ctx) => EditEmptyReturn(trip: trip),
                          // );
                          break;
                        case TripOperations.closeTrip:
                          showDialog(
                            context: context,
                            builder: (ctx) => AlertDialog(
                              contentPadding: EdgeInsets.zero,
                              backgroundColor: Colors.white,
                              content: CancelTrip(
                                trip: trip,
                                job: jobRequest,
                              ),
                            ),
                          );
                          break;
                        case TripOperations.closeReturnTrip:
                          showDialog(
                            context: context,
                            builder: (ctx) => AlertDialog(
                              backgroundColor: Colors.white,
                              contentPadding: EdgeInsets.zero,
                              content: CancelReturnTrip(
                                trip: trip,
                                job: jobRequest,
                              ),
                            ),
                          );
                          break;
                        case null:
                          return;
                      }
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
                    'العمليات',
                    style: context.textTheme.bodyLarge!.copyWith(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
      // ListView(
      //   children: [
      //     SizedBox(
      //       child: Padding(
      //         padding: const EdgeInsetsDirectional.only(start: 0),
      //         child: TableView.builder(
      //           // rowPrototype: Text('data'),
      //           shrinkWrapVertical: true,
      //           style: TableViewStyle(
      //             dividers: TableViewDividersStyle(
      //               horizontal: TableViewHorizontalDividersStyle(
      //                 header: TableViewHorizontalDividerStyle(
      //                   color: Colors.red,
      //                 ),
      //                 footer: TableViewHorizontalDividerStyle(
      //                   color: Colors.red,
      //                 ),
      //               ),
      //               vertical: TableViewVerticalDividersStyle(
      //                 leading: TableViewVerticalDividerStyle(
      //                   color: Colors.amber,
      //                   wiggleCount: 0,
      //                 ),
      //                 trailing: TableViewVerticalDividerStyle(
      //                   color: Colors.green,
      //                   thickness: 2,
      //                 ),
      //               ),
      //             ),
      //           ),
      //           columns: [
      //             ...List.generate(
      //               headers.length,
      //               (e) {
      //                 if (e == 0) {
      //                   return TableColumn(
      //                     width: 30,
      //                     // flex: i.isEven ? 4 : 2,
      //                     freezePriority: 100,
      //                   );
      //                 }
      //                 var isExtended =
      //                     jobRequest.connectedTrips?.any(
      //                       (e) => e.containerDetails?.containerNumber != null,
      //                     ) ==
      //                     true;
      //                 var indexes = [5, 7];
      //                 return TableColumn(
      //                   width: isExtended && indexes.contains(e) ? 300 : 150,
      //                   // flex: e.isEven ? 100 : 2,
      //                   flex: isExtended && indexes.contains(e) ? 2 : 1,
      //                   // freezePriority: i == 5 ? 10 : 0,
      //                 );
      //               },
      //             ),
      //             // for (var i = 0; i < 13; i++)
      //             // TableColumn(
      //             //   width: 100,
      //             //   flex: i.isEven ? 4 : 2,
      //             //   // freezePriority: i == 5 ? 10 : 0,
      //             // ),
      //             // ...?jobRequest.containerList?.map(
      //             //   (c) => TableColumn(width: 64),
      //             // ),
      //             // for(var i in jobRequest.containerList){

      //             // }
      //             // for (var i = 1; i < 100; i++) const TableColumn(width: 64),
      //           ],
      //           rowCount: jobRequest.connectedTrips?.length ?? 0,

      //           headerBuilder: (context, contentBuilder) {
      //             return Container(
      //               width: 100,
      //               color: context.theme.primaryColor,
      //               child: Center(
      //                 child: contentBuilder(
      //                   context,
      //                   (ctx, e) => Center(
      //                     child: Text(
      //                       '${headers[e]}',
      //                       textAlign: TextAlign.center,
      //                       style: TextStyle(color: Colors.white),
      //                     ),
      //                   ),
      //                 ),
      //               ),
      //             );
      //           },
      //           rowHeight: 76.0, // optional, but highly recommended
      //           rowBuilder: (context, row, contentBuilder) {
      //             // if (noDataYetFor(row)) {
      //             //   return null; // to use a placeholder
      //             // }

      //             // When [freezePriority] or [placeholderShade] are used, some widgets may not be used here.
      //             // For more information see the paragraph below.
      //             // To set the background color the row can be wrapped in a [ColoredBox].

      //             // return Text(
      //             //   "-----",
      //             // );
      //             var connectedTrip = jobRequest.connectedTrips?[row];
      //             var rowsData = [
      //               '1',
      //               // jobRequest.
      //               connectedTrip?.containerNumberReturn ?? '---',
      //               if (connectedTrip?.containerDetails?.containerNumber !=
      //                   null) ...[
      //                 connectedTrip?.containerDetails?.containerNumber,
      //                 connectedTrip?.mergedWith ?? '---',
      //                 connectedTrip?.containerDetails?.containerSize ?? '---',
      //                 // '4',
      //                 connectedTrip?.containerDetails?.containerType ?? '---',
      //                 connectedTrip?.containerDetails?.billOfLading ?? '---',

      //                 // '5',
      //               ],
      //               // 'سائق',
      //               connectedTrip?.driver ?? '---',

      //               // 'شاحنة',
      //               connectedTrip?.localTruck?.plate ?? '---',
      //               // 'الرقم الجمركي الموحد',
      //               connectedTrip?.uniqueIdentifierCustomsNumber ?? '---',
      //               'العملية',
      //               'الحالة',
      //             ];
      //             return Padding(
      //               padding: 0.8.symetric,
      //               child: Container(
      //                 color: context.theme.primaryColor.withAlpha(20),
      //                 child: InkWell(
      //                   onTap: () async {
      //                     if (connectedTrip != null &&
      //                         connectedTrip.workflowState != null) {
      //                       var state =
      //                           await showModalBottomSheet<TripOperations?>(
      //                             isScrollControlled: true,
      //                             context: context,
      //                             backgroundColor:
      //                                 context.theme.scaffoldBackgroundColor,
      //                             builder: (ctx) => OperationModalSheet(
      //                               tripStatus: connectedTrip.workflowState!,
      //                             ),
      //                           );

      //                       if (context.mounted) {
      //                         switch (state) {
      //                           case TripOperations
      //                               .uniqueIdentifierCustomsNumber:
      //                             // show edit custom
      //                             showModalBottomSheet<String>(
      //                               context: context,
      //                               backgroundColor:
      //                                   context.theme.scaffoldBackgroundColor,
      //                               isScrollControlled: true,
      //                               builder: (ctx) =>
      //                                   EditUniqueCustomIdentifier(
      //                                     tripUid: connectedTrip.tripUuid,
      //                                   ),
      //                             );
      //                           case TripOperations.truckDriverEdit:
      //                             showModalBottomSheet(
      //                               context: context,
      //                               backgroundColor:
      //                                   context.theme.scaffoldBackgroundColor,
      //                               isScrollControlled: true,
      //                               builder: (ctx) => EditDriverAndTruck(
      //                                 trip: connectedTrip,
      //                               ),
      //                             );
      //                           case TripOperations.editReturn:
      //                             // EditEmptyReturn
      //                             showModalBottomSheet(
      //                               context: context,
      //                               backgroundColor:
      //                                   context.theme.scaffoldBackgroundColor,
      //                               isScrollControlled: true,
      //                               builder: (ctx) => EditEmptyReturn(
      //                                 trip: connectedTrip,
      //                               ),
      //                             );
      //                           // case TripOperations.editPrintAgent:
      //                           case TripOperations.closeTrip:
      //                             // CancelTrip
      //                             showModalBottomSheet(
      //                               context: context,
      //                               backgroundColor:
      //                                   context.theme.scaffoldBackgroundColor,
      //                               isScrollControlled: true,
      //                               builder: (ctx) => CancelTrip(
      //                                 trip: connectedTrip,
      //                                 job: jobRequest,
      //                               ),
      //                             );
      //                           case TripOperations.closeReturnTrip:
      //                             showModalBottomSheet(
      //                               context: context,
      //                               backgroundColor:
      //                                   context.theme.scaffoldBackgroundColor,
      //                               isScrollControlled: true,
      //                               builder: (ctx) => CancelReturnTrip(
      //                                 trip: connectedTrip,
      //                                 job: jobRequest,
      //                               ),
      //                             );
      //                           case null:
      //                             return;
      //                         }
      //                       }
      //                     }
      //                   },
      //                   child: Center(
      //                     child: contentBuilder(
      //                       context,
      //                       (context, column) => Center(
      //                         child: (column == 0)
      //                             ? Text(
      //                                 '${row + 1}',
      //                                 style: TextStyle(color: Colors.white),
      //                               )
      //                             : Text(
      //                                 '${rowsData[column]}',
      //                                 style: TextStyle(color: Colors.white),
      //                               ),
      //                       ), // build a cell widget, any widget can be used here
      //                     ),
      //                   ),
      //                 ),
      //               ),
      //             );
      //           },
      //           // specify other parameters for other features
      //         ),
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text(
      //         'الرحلات الغير مربوطة',
      //         style: context.textTheme.bodyLarge!.copyWith(
      //           color: Colors.white,
      //         ),
      //       ),
      //     ),
      //     ...?jobRequest.canceledTrips?.map(
      //       (e) => Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: ListTile(
      //           shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadiusGeometry.circular(12),
      //           ),
      //           tileColor: Colors.white,
      //           leading: Container(
      //             width: 45,
      //             height: 45,
      //             decoration: BoxDecoration(
      //               color: context.theme.primaryColor.withAlpha(30),
      //             ),
      //             child: Center(
      //               child: Icon(
      //                 Iconsax.truck,
      //               ),
      //             ),
      //           ),
      //           trailing: TextButton(
      //             onPressed: () {
      //               showModalBottomSheet(
      //                 context: context,
      //                 backgroundColor: context.theme.scaffoldBackgroundColor,
      //                 isScrollControlled: true,
      //                 builder: (ctx) => CompleteTripConnect(
      //                   trip: e,
      //                   jobRequest: jobRequest,
      //                 ),
      //               );
      //             },
      //             child: Text(
      //               'اكمال الربط',
      //             ),
      //           ),
      //           title: Text(
      //             e.name.toString(),
      //           ),
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
    );
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
