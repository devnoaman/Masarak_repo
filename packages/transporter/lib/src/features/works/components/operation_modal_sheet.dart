// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shared/shared.dart';
import 'package:transporter/src/features/works/components/operation_tile.dart';

enum TripOperations {
  uniqueIdentifierCustomsNumber,
  truckDriverEdit,
  editReturn,
  // editPrintAgent,
  closeTrip,
  closeReturnTrip,
}

class OperationModalSheet extends StatelessWidget {
  const OperationModalSheet({
    super.key,
    required this.tripStatus,
  });
  final String tripStatus;
  bool isFullyEditable(String status) {
    var editables = [
      "On Queue",
      "Ready To Enter",
    ];

    if (editables.contains(status)) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.theme.scaffoldBackgroundColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        // spacing: 8,
        children: [
          8.hGap,
          Text(
            'اختر احد الاجراءات',
            style: context.textTheme.bodyLarge!.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.white54,
              fontSize: 16,
            ),
          ),
          Text(
            ' هل انت متأكد من القيام بهذا؟',
            style: context.textTheme.bodyLarge!.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.white54,
              fontSize: 12,
            ),
          ),
          const Divider(
            color: Colors.white12,
          ),
          OperationTile(
            title: 'تعديل الرقم الجمركي',
            onTilePress: () {
              Navigator.of(
                context,
              ).pop(TripOperations.uniqueIdentifierCustomsNumber);
            },
            icon: Iconsax.edit,
          ),

          const Divider(
            color: Colors.white12,
          ),
          if (isFullyEditable(tripStatus))
            OperationTile(
              title: 'تعديل السائق/الشاحنة',
              onTilePress: () {
                Navigator.of(
                  context,
                ).pop(TripOperations.truckDriverEdit);
              },
              icon: Iconsax.truck,
            ),

          const Divider(
            color: Colors.white12,
          ),
          if (isFullyEditable(tripStatus))
            OperationTile(
              title: 'تحرير عودة الفارغ',
              onTilePress: () {
                Navigator.of(
                  context,
                ).pop(TripOperations.editReturn);
              },
              icon: Iconsax.refresh,
            ),

          // if (isFullyEditable(tripStatus))
          //   OperationTile(
          //     title: 'تعديل مخول الطباعة',
          //     onTilePress: () {
          //       Navigator.of(
          //         context,
          //       ).pop(TripOperations.editPrintAgent);
          //     },
          //     icon: Iconsax.printer,
          //   ),
          const Divider(
            color: Colors.white12,
          ),
          if (isFullyEditable(tripStatus))
            OperationTile(
              title: 'الغاء رحلة عودة الفارغ',
              onTilePress: () {
                Navigator.of(
                  context,
                ).pop(TripOperations.closeReturnTrip);
              },

              color: Colors.red,
              icon: Iconsax.close_circle,
            ),

          const Divider(
            color: Colors.white12,
          ),
          if (isFullyEditable(tripStatus))
            OperationTile(
              title: 'الغاء الرحلة',
              onTilePress: () {
                Navigator.of(
                  context,
                ).pop(TripOperations.closeTrip);
              },
              icon: Iconsax.close_circle,
              color: Colors.red,
            ),
        ],
      ),
    );
  }
}
