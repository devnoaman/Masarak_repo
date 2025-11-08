// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shared/shared.dart';
import 'package:transporter/src/features/works/components/operation_tile.dart';

class ReturnTripOperations extends HookConsumerWidget {
  const ReturnTripOperations({
    super.key,
    required this.trip,
  });
  final ReturnTripModel trip;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('العمليات على الرحلة'),
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Hero(
            tag: trip.id ?? UniqueKey(),
            child: Material(
              color: Colors.transparent,

              child: ListTile(
                tileColor: context.theme.primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(
                    12,
                  ),
                ),
                leading: Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: context.theme.scaffoldBackgroundColor,
                  ),
                ),
                title: Text(trip.id?.toString() ?? '--'),
                subtitle: Text(trip.returnJobRequest?.toString() ?? '--'),
              ),
            ),
          ),
          16.hGap,
          Text(
            'اختر العملية المطلوبة',
            style: context.textTheme.bodyLarge!.copyWith(
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
          ),
          16.hGap,
          OperationTile(
            title: 'تحديث المعلومات',
            onTilePress: () {},
            icon: Iconsax.edit,
          ),
        ],
      ),
    );
  }
}
