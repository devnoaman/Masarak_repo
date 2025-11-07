// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:material_table_view/material_table_view.dart';
import 'package:shared/shared.dart';
import 'package:transporter/src/features/works/components/actions_dialogs/cancel_return_trip.dart';
import 'package:transporter/src/features/works/components/actions_dialogs/cancel_trip.dart';
import 'package:transporter/src/features/works/components/actions_dialogs/complete_trip_connect.dart';
import 'package:transporter/src/features/works/components/actions_dialogs/edit_driver_and_truck.dart';
import 'package:transporter/src/features/works/components/actions_dialogs/edit_empty_return.dart';
import 'package:transporter/src/features/works/components/actions_dialogs/edit_unique_custom_identifier.dart';
import 'package:transporter/src/features/works/components/operation_modal_sheet.dart';

class WorkViewDetails extends HookConsumerWidget {
  const WorkViewDetails({super.key, required this.jobRequest});
  final JobRequest jobRequest;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final headers = [
      '#',
      'حاوية عودة الفارغ',
      if (jobRequest.connectedTrips?.any(
            (e) => e.containerDetails?.containerNumber != null,
          ) ==
          true) ...[
        'رقم الحاوية',
        'رقم الحاوية الثانية',
        'حجم الحاوية',
        'نوع الحاوية',
        'رقم البوليصة',
      ],

      'السائق',
      'شاحنة',
      'الرقم الجمركي الموحد',
      'العملية',
      'الحالة',
    ];
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          SizedBox(
            child: Padding(
              padding: const EdgeInsetsDirectional.only(start: 0),
              child: TableView.builder(
                // rowPrototype: Text('data'),
                shrinkWrapVertical: true,
                style: TableViewStyle(
                  dividers: TableViewDividersStyle(
                    horizontal: TableViewHorizontalDividersStyle(
                      header: TableViewHorizontalDividerStyle(
                        color: Colors.red,
                      ),
                      footer: TableViewHorizontalDividerStyle(
                        color: Colors.red,
                      ),
                    ),
                    vertical: TableViewVerticalDividersStyle(
                      leading: TableViewVerticalDividerStyle(
                        color: Colors.amber,
                        wiggleCount: 0,
                      ),
                      trailing: TableViewVerticalDividerStyle(
                        color: Colors.green,
                        thickness: 2,
                      ),
                    ),
                  ),
                ),
                columns: [
                  ...List.generate(
                    headers.length,
                    (e) {
                      if (e == 0) {
                        return TableColumn(
                          width: 30,
                          // flex: i.isEven ? 4 : 2,
                          freezePriority: 100,
                        );
                      }
                      var isExtended =
                          jobRequest.connectedTrips?.any(
                            (e) => e.containerDetails?.containerNumber != null,
                          ) ==
                          true;
                      var indexes = [5, 7];
                      return TableColumn(
                        width: isExtended && indexes.contains(e) ? 300 : 150,
                        // flex: e.isEven ? 100 : 2,
                        flex: isExtended && indexes.contains(e) ? 2 : 1,
                        // freezePriority: i == 5 ? 10 : 0,
                      );
                    },
                  ),
                  // for (var i = 0; i < 13; i++)
                  // TableColumn(
                  //   width: 100,
                  //   flex: i.isEven ? 4 : 2,
                  //   // freezePriority: i == 5 ? 10 : 0,
                  // ),
                  // ...?jobRequest.containerList?.map(
                  //   (c) => TableColumn(width: 64),
                  // ),
                  // for(var i in jobRequest.containerList){

                  // }
                  // for (var i = 1; i < 100; i++) const TableColumn(width: 64),
                ],
                rowCount: jobRequest.connectedTrips?.length ?? 0,

                headerBuilder: (context, contentBuilder) {
                  return Container(
                    width: 100,
                    color: context.theme.primaryColor,
                    child: Center(
                      child: contentBuilder(
                        context,
                        (ctx, e) => Center(
                          child: Text(
                            '${headers[e]}',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  );
                },
                rowHeight: 76.0, // optional, but highly recommended
                rowBuilder: (context, row, contentBuilder) {
                  // if (noDataYetFor(row)) {
                  //   return null; // to use a placeholder
                  // }

                  // When [freezePriority] or [placeholderShade] are used, some widgets may not be used here.
                  // For more information see the paragraph below.
                  // To set the background color the row can be wrapped in a [ColoredBox].

                  // return Text(
                  //   "-----",
                  // );
                  var connectedTrip = jobRequest.connectedTrips?[row];
                  var rowsData = [
                    '1',
                    // jobRequest.
                    connectedTrip?.containerNumberReturn ?? '---',
                    if (connectedTrip?.containerDetails?.containerNumber !=
                        null) ...[
                      connectedTrip?.containerDetails?.containerNumber,
                      connectedTrip?.mergedWith ?? '---',
                      connectedTrip?.containerDetails?.containerSize ?? '---',
                      // '4',
                      connectedTrip?.containerDetails?.containerType ?? '---',
                      connectedTrip?.containerDetails?.billOfLading ?? '---',

                      // '5',
                    ],
                    // 'سائق',
                    connectedTrip?.driver ?? '---',

                    // 'شاحنة',
                    connectedTrip?.localTruck?.plate ?? '---',
                    // 'الرقم الجمركي الموحد',
                    connectedTrip?.uniqueIdentifierCustomsNumber ?? '---',
                    'العملية',
                    'الحالة',
                  ];
                  return Padding(
                    padding: 0.8.symetric,
                    child: Container(
                      color: context.theme.primaryColor.withAlpha(20),
                      child: InkWell(
                        onTap: () async {
                          if (connectedTrip != null &&
                              connectedTrip.workflowState != null) {
                            var state =
                                await showModalBottomSheet<TripOperations?>(
                                  isScrollControlled: true,
                                  context: context,
                                  backgroundColor:
                                      context.theme.scaffoldBackgroundColor,
                                  builder: (ctx) => OperationModalSheet(
                                    tripStatus: connectedTrip.workflowState!,
                                  ),
                                );

                            if (context.mounted) {
                              switch (state) {
                                case TripOperations
                                    .uniqueIdentifierCustomsNumber:
                                  // show edit custom
                                  showModalBottomSheet<String>(
                                    context: context,
                                    backgroundColor:
                                        context.theme.scaffoldBackgroundColor,
                                    isScrollControlled: true,
                                    builder: (ctx) =>
                                        EditUniqueCustomIdentifier(
                                          tripUid: connectedTrip.tripUuid,
                                        ),
                                  );
                                case TripOperations.truckDriverEdit:
                                  showModalBottomSheet(
                                    context: context,
                                    backgroundColor:
                                        context.theme.scaffoldBackgroundColor,
                                    isScrollControlled: true,
                                    builder: (ctx) => EditDriverAndTruck(
                                      trip: connectedTrip,
                                    ),
                                  );
                                case TripOperations.editReturn:
                                  // EditEmptyReturn
                                  showModalBottomSheet(
                                    context: context,
                                    backgroundColor:
                                        context.theme.scaffoldBackgroundColor,
                                    isScrollControlled: true,
                                    builder: (ctx) => EditEmptyReturn(
                                      trip: connectedTrip,
                                    ),
                                  );
                                // case TripOperations.editPrintAgent:
                                case TripOperations.closeTrip:
                                  // CancelTrip
                                  showModalBottomSheet(
                                    context: context,
                                    backgroundColor:
                                        context.theme.scaffoldBackgroundColor,
                                    isScrollControlled: true,
                                    builder: (ctx) => CancelTrip(
                                      trip: connectedTrip,
                                      job: jobRequest,
                                    ),
                                  );
                                case TripOperations.closeReturnTrip:
                                  showModalBottomSheet(
                                    context: context,
                                    backgroundColor:
                                        context.theme.scaffoldBackgroundColor,
                                    isScrollControlled: true,
                                    builder: (ctx) => CancelReturnTrip(
                                      trip: connectedTrip,
                                      job: jobRequest,
                                    ),
                                  );
                                case null:
                                  return;
                              }
                            }
                          }
                        },
                        child: Center(
                          child: contentBuilder(
                            context,
                            (context, column) => Center(
                              child: (column == 0)
                                  ? Text(
                                      '${row + 1}',
                                      style: TextStyle(color: Colors.white),
                                    )
                                  : Text(
                                      '${rowsData[column]}',
                                      style: TextStyle(color: Colors.white),
                                    ),
                            ), // build a cell widget, any widget can be used here
                          ),
                        ),
                      ),
                    ),
                  );
                },
                // specify other parameters for other features
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'الرحلات الغير مربوطة',
              style: context.textTheme.bodyLarge!.copyWith(
                color: Colors.white,
              ),
            ),
          ),
          ...?jobRequest.canceledTrips?.map(
            (e) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(12),
                ),
                tileColor: Colors.white,
                leading: Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    color: context.theme.primaryColor.withAlpha(30),
                  ),
                  child: Center(
                    child: Icon(
                      Iconsax.truck,
                    ),
                  ),
                ),
                trailing: TextButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      backgroundColor: context.theme.scaffoldBackgroundColor,
                      isScrollControlled: true,
                      builder: (ctx) => CompleteTripConnect(
                        trip: e,
                        jobRequest: jobRequest,
                      ),
                    );
                  },
                  child: Text(
                    'اكمال الربط',
                  ),
                ),
                title: Text(
                  e.name.toString(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
