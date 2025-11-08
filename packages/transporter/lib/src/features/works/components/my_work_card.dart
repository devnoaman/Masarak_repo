// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shared/shared.dart';
import 'package:transporter/providers/app_context_provider.dart';
import 'package:transporter/src/features/works/components/work_info.dart';
import 'package:transporter/src/features/works/presentation/work_view_details.dart';

class MyWorkCard extends HookConsumerWidget {
  const MyWorkCard({
    super.key,
    required this.jobRequest,
  });
  final JobRequest? jobRequest;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: 16.8.symetric,
      child: Container(
        decoration: BoxDecoration(
          // color: context.theme.primaryColor.withAlpha(30),
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            12,
          ),
        ),
        child: Padding(
          padding: 16.allPadding,
          child: Column(
            spacing: 8,
            children: [
              Row(
                children: [
                  WorkInfo(
                    title: 'رقم اذن التسليم',
                    value: jobRequest?.orderNumber ?? '---',
                  ),
                  Spacer(),
                  Container(
                    padding: 16.8.symetric,
                    decoration: BoxDecoration(
                      color: context.theme.scaffoldBackgroundColor,
                      borderRadius: 30.cRadius,
                    ),
                    child: Text(
                      jobRequest?.importType ?? '',
                      style: context.textTheme.bodyLarge!.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                spacing: 8,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 4,
                      children: [
                        WorkInfo(
                          title: 'وكيل التخليص',
                          value:
                              jobRequest?.clearanceAgent?.split('/').first ??
                              '--',
                        ),
                        Row(
                          children: [
                            WorkInfo(
                              title: 'الرصيف',
                              value: jobRequest?.arabicBerth ?? '--',
                            ),
                            SizedBox(
                              width: context.width * 0.1,
                            ),
                            WorkInfo(
                              title: 'العدد',
                              value:
                                  jobRequest?.containerList?.length
                                      .toString() ??
                                  '0',
                            ),
                          ],
                        ),
                        WorkInfo(
                          title: 'نوع العملية',
                          value: jobRequest?.operation ?? '---',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  var appKey = ref.read(appCtxProvider);
                  if (appKey.currentState != null) {
                    Navigator.of(appKey.currentState!.context).push(
                      MaterialPageRoute(
                        builder: (ctx) =>
                            WorkViewDetails(jobRequest: jobRequest!),
                      ),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 45),
                  backgroundColor: context.theme.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text(
                  'التفاصيل',
                  style: context.textTheme.bodyLarge!.copyWith(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 45),
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(
                      color: context.theme.scaffoldBackgroundColor,
                      width: 1,
                    ),
                  ),
                ),
                child: Text(
                  'ربط السائقين',
                  style: context.textTheme.bodyLarge!.copyWith(
                    color: context.theme.scaffoldBackgroundColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
