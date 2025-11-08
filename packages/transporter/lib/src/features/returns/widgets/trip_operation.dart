import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared/shared.dart';
import 'package:transporter/src/features/returns/presentation/container_integration.route.dart';
import 'package:transporter/src/features/returns/presentation/edit_empty_return.route.dart';
import 'package:transporter/src/features/returns/presentation/edit_printing_agent.route.dart';
import 'package:transporter/src/features/returns/widgets/return_cancel_trip.dart';
import 'package:transporter/src/features/returns/widgets/send_return_trip.dart';
import '../../returns/presentation/loading_container_view.route.dart';

class TripOperation extends StatelessWidget {
  final ReturnTripModel trip;
  const TripOperation({super.key, required this.trip});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.theme.scaffoldBackgroundColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          12.hGap,
          Text(
            'العمليات على الرحلة',
            style: context.textTheme.bodyLarge!.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.white54,
            ),
          ),
          Text(
            'هل انت متأكد انك تريد القيام بهذا؟',
            style: context.textTheme.bodyLarge!.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.white54,
            ),
          ),

          Divider(
            color: Colors.white12,
          ),
          _buildAction(context, 'تحميل حاوية', () {
            context.push(LoadingContainerViewRoute.instance.path, extra: trip);
          }),
          Divider(
            color: Colors.white12,
          ),
          _buildAction(context, 'تعديل مخول الطباعة', () {
            context.push(EditPrintingAgentRoute.instance.path, extra: trip);
          }),
          Divider(
            color: Colors.white12,
          ),
          _buildAction(context, 'تعديل رحلة عودة فارغة', () {
            context.push(EditEmptyReturnRoute.instance.path, extra: trip);
          }),
          Divider(
            color: Colors.white12,
          ),

          _buildAction(context, 'اطلاق عودة فارغ', () async {
            showDialog(
              context: context,
              builder: (ctx) => AlertDialog(
                contentPadding: EdgeInsets.zero,
                backgroundColor: Colors.white,
                content: SendReturnTrip(
                  trip: trip,
                ),
              ),
            );
          }),
          Divider(
            color: Colors.white12,
          ),
          _buildAction(context, 'ربط الحاويات', () {
            context.push(ContainerIntegrationRoute.instance.path, extra: trip);
          }),
          Divider(
            color: Colors.white12,
          ),
          _buildAction(
            context,
            'إلغاء الرحلة',
            () {
              showDialog(
                context: context,
                builder: (ctx) => AlertDialog(
                  contentPadding: EdgeInsets.zero,
                  backgroundColor: Colors.white,
                  content: CancelTrip(
                    trip: trip,
                  ),
                ),
              );
            },
            color: Colors.red,
          ),
        ],
      ),
    );
  }

  Future<bool?> customDialog({
    required BuildContext context,
    String? title,
    Widget? content,
    String cancelText = 'إلغاء',
    String confirmText = 'تأكيد',
    Color confirmColor = Colors.red,
    VoidCallback? onConfirm,
  }) {
    return showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: title != null ? Center(child: Text(title)) : null,
        content: content,
        actionsAlignment: MainAxisAlignment.center,
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: Text(
              cancelText,
              style: const TextStyle(color: Colors.black),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context, true);
              if (onConfirm != null) onConfirm();
            },
            child: Text(
              confirmText,
              style: TextStyle(color: confirmColor),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAction(
    BuildContext context,
    String title,
    VoidCallback onTap, {
    Color color = Colors.white,
  }) {
    return ListTile(
      title: Center(
        child: Text(
          title,
          style: context.textTheme.bodyLarge!.copyWith(
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
      ),
      onTap: onTap,
    );
  }
}
