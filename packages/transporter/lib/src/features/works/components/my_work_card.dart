// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shared/shared.dart';
import 'package:transporter/providers/app_context_provider.dart';
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
          color: context.theme.primaryColor.withAlpha(30),
          borderRadius: BorderRadius.circular(
            12,
          ),
        ),
        child: Padding(
          padding: 8.0.symetric,
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    jobRequest?.orderNumber ?? '---',
                    style: context.textTheme.bodyLarge!.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  Spacer(),
                  Text(
                    jobRequest?.importType ?? '',
                    style: context.textTheme.bodyLarge!.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Iconsax.info_circle),
                  ),
                ],
              ),
              Divider(),
              Row(
                spacing: 8,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'وكيل التخليص',
                          style: context.textTheme.bodyLarge!.copyWith(
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          jobRequest?.clearanceAgent?.split('/').first ?? '--',
                          style: context.textTheme.bodyLarge!.copyWith(
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'الرصيف',
                          style: context.textTheme.bodyLarge!.copyWith(
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          jobRequest?.arabicBerth ?? '--',
                          style: context.textTheme.bodyLarge!.copyWith(
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'العدد',
                          style: context.textTheme.bodyLarge!.copyWith(
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          jobRequest?.containerList?.length?.toString() ?? '0',
                          style: context.textTheme.bodyLarge!.copyWith(
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'نوع العملية',
                          style: context.textTheme.bodyLarge!.copyWith(
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          jobRequest?.operation ?? '---',
                          style: context.textTheme.bodyLarge!.copyWith(
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Divider(),
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: Text(
                  'العمليات',
                  style: context.textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
                ),
              ),
              Row(
                children: [
                  TextButton.icon(
                    onPressed: () {
                      // showModalBottomSheet(
                      //   context: context,
                      //   isScrollControlled: true,
                      //   builder: (context) =>
                      //       WorkViewDetails(jobRequest: jobRequest!),
                      // );
                      var appKey = ref.read(appCtxProvider);
                      if (appKey.currentState != null) {
                        // showModalBottomSheet(
                        //   context: appKey.currentState!.context,
                        //   isScrollControlled: true,
                        //   builder: (context) => ReturnTripOperations(trip: trip),
                        // );

                        Navigator.of(appKey.currentState!.context).push(
                          MaterialPageRoute(
                            builder: (ctx) =>
                                WorkViewDetails(jobRequest: jobRequest!),
                          ),
                        );
                      }
                    },
                    icon: Icon(Iconsax.info_circle),
                    label: Text('التفاصيل'),
                  ),
                  // if(jobRequest.)
                  // TextButton.icon(
                  //   onPressed: () {},
                  //   icon: Icon(Iconsax.truck),
                  //   label: Text('ربط السائقين'),
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
