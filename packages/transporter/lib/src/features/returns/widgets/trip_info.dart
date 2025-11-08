import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:icons_font/iconsfont_icons.dart';
import 'package:shared/shared.dart';
import 'package:transporter/src/features/returns/widgets/section_row.dart';
import 'package:transporter/src/features/returns/widgets/trip_operation.dart';
import 'package:shared/src/components/plate_number.dart';

class TripInfo extends HookConsumerWidget {
  const TripInfo({
    super.key,
    required this.trip,
  });
  final ReturnTripModel trip;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final PlateHandler hndlr = PlateHandler();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Trip ${trip.id?.toString()}',
          style: context.textTheme.headlineMedium!.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                backgroundColor: Colors.transparent,
                isScrollControlled: true,
                builder: (context) {
                  return Padding(
                    padding: 5.hPadding,
                    child: SafeArea(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        spacing: 8,
                        children: [
                          TripOperation(trip: trip),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    context.theme.scaffoldBackgroundColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              onPressed: () => Navigator.pop(context),
                              child: Text(
                                'إلغاء',
                                style: context.textTheme.bodyLarge!.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
            icon: Icon(IconsFont.edit),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: 16.24.symetric,
          margin: 16.allPadding,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            spacing: 12,
            crossAxisAlignment: CrossAxisAlignment.start,
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
                          color: trip.isPaid == 1 ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                title: Text(
                  trip.id?.toString() ?? '--',
                  style: context.textTheme.headlineMedium!.copyWith(
                    color: Colors.black,
                    // fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                subtitle: Text(trip.returnJobRequest?.toString() ?? '--'),
              ),
              Divider(),
              SectionRow(
                title: 'رقم الحاوية',
                value: trip.containerNumber ?? '---',
              ),
              SectionRow(
                title: 'حجم الحاوية',
                value: trip.containerSize == null
                    ? '---'
                    : ('${trip.containerSize} قدم'),
              ),
              SectionRow(
                title: 'تاريخ اخذ الحاوية',
                value: trip.takenDate == null ? '---' : ('${trip.takenDate}'),
              ),
              Divider(),

              SectionRow(
                title: 'السائق',
                value: trip.driver?.split('/').first ?? '--',
              ),
              Row(
                children: [
                  Expanded(
                    child: SectionRow(
                      title: 'رقم الهاتف',
                      value: trip.driver?.split('/').last ?? '--',
                    ),
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: context.width * .3,
                    ),
                    child: FittedBox(
                      child: PlateNumber(
                        color: Colors.black,
                        plateNumber: handlePlate(hndlr),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SectionRow(
                          title: 'بداية الطريق',
                          value: trip.truckRelation?.city?.country ?? '--',
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: 12.allPadding,
                    decoration: BoxDecoration(
                      color: trip.truckRelation?.status == 'Available'
                          ? Color(0xFF298F93)
                          : Colors.grey.shade200,
                      borderRadius: 25.cRadius,
                    ),
                    child: Text(
                      trip.truckRelation?.status == 'Available'
                          ? 'متوفرة'
                          : 'غير متوفرة',
                      style: context.textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.w900,
                        color: trip.truckRelation?.status == 'Available'
                            ? Colors.white
                            : Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              Divider(),
              SectionRow(
                title: 'اسم الرصيف',
                value: trip.berth?.berthName ?? '---',
              ),
              SectionRow(
                title: 'المنفذ',
                value: trip.berth?.port ?? '---',
              ),
              SectionRow(
                title: 'مشغل المنفذ',
                value: trip.berth?.terminalOperatorName ?? '---',
              ),
              Divider(),
              SectionRow(
                title: 'مخول الطباعة',
                value: trip.printingAgent?.name ?? '--',
              ),
              SectionRow(
                title: 'رقم الهاتف',
                value: trip.printingAgent?.mobile ?? '--',
              ),
            ],
          ),
        ),
      ),
    );
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
