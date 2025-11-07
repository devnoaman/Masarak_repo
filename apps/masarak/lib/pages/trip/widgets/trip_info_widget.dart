// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart' hide Stepper, Step, StepState, StepStyle;
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:masarak/extentions.dart';
import 'package:masarak/pages/trip/models/trip_info_res/trip_info_res.dart';
import 'package:masarak/pages/trip/providers/trip_info_provider.dart';
import 'package:masarak/pages/trip/widgets/my_stepper.dart';
import 'package:masarak/widgets/plate_number.dart';

class TripInfoWidget extends HookConsumerWidget {
  const TripInfoWidget({
    super.key,
    required this.info,
    required this.controller,
  });
  final TripInfoRes info;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var cnt = useTabController(initialLength: 2);
    var pge = usePageController();
    return Column(
      children: [
        16.hGap,
        Text(
          'تم العثور على رحلة بالمعلومات التالية،',
          style: context.textTheme.bodyLarge,
        ),
        16.hGap,
        TabBar(
          controller: cnt,
          onTap: (value) {
            pge.animateToPage(
              value,
              duration: Durations.medium4,
              curve: Curves.easeInOut,
            );
          },
          tabs: [
            Tab(
              text: 'التفاصيل',
            ),
            Tab(
              text: 'حالة تقدم الرحلة',
            ),
          ],
        ),
        Expanded(
          child: PageView(
            onPageChanged: (value) {
              cnt.animateTo(value);
            },
            controller: pge,
            // scrollDirection: Axis.vertical,
            children: [
              RefreshIndicator(
                onRefresh: () async {
                  ref.watch(trinpInfoProvider.notifier).search(controller.text);
                },
                child: ListView(
                  padding: 16.8.symetric,
                  keyboardDismissBehavior:
                      ScrollViewKeyboardDismissBehavior.onDrag,
                  children: [
                    16.hGap,
                    TripSectionCard(
                      title: 'معلومات الرحلة',
                      elements: [
                        SectionElement(
                          title: 'الاسم',
                          value: info.message?.data?.trip?.name ?? '',
                        ),
                        SectionElement(
                          title: 'المالك',
                          value: info.message?.data?.trip?.owner ?? '',
                        ),
                        SectionElement(
                          title: 'تاريخ الانشاء',
                          value: (info.message?.data?.trip?.creation == null)
                              ? ''
                              : (DateTime.tryParse(info.message?.data?.trip
                                          ?.creation as String)
                                      ?.ddMMyyyyDate ??
                                  ''),
                        ),
                        SectionElement(
                          title: 'تاريخ التعديل',
                          value: (info.message?.data?.trip?.modified == null)
                              ? ''
                              : (DateTime.tryParse(info.message?.data?.trip
                                          ?.modified as String)
                                      ?.ddMMyyyyDate ??
                                  ''),
                        ),
                        SectionElement(
                          title: 'عدل بواسطة',
                          value: info.message?.data?.trip?.modifiedBy ?? '',
                        ),
                      ],
                    ),
                    TripSectionCard(
                      title: 'معلومات الرصيف',
                      elements: [
                        SectionElement(
                          title: 'اسم المنفذ',
                          value: info.message?.data?.trip?.portName ?? '--',
                        ),
                        SectionElement(
                          title: 'اسم الرصيف',
                          value: info.message?.data?.trip?.berthName ?? '',
                        ),
                        SectionElement(
                          title: 'معلومات الرصيف',
                          value: info.message?.data?.trip?.berth ?? '',
                        ),
                      ],
                    ),
                    TripSectionCard(
                      title: 'معلومات الشحنة',
                      elements: [
                        SectionElement(
                          title: 'نوع الشحنة',
                          value: info.message?.data?.trip?.cargoType ?? '--',
                        ),
                        SectionElement(
                          title: 'معرف الشاحنة',
                          value: info.message?.data?.trip?.truck ?? '',
                        ),
                        SectionElement(
                          title: 'رقم الشاحنة',
                          valueWidget: PlateNumber(
                            plateNumber:
                                info.message?.data?.trip?.truckNumber ?? '',
                          ),
                        ),
                        SectionElement(
                          title: 'الطابور',
                          value: info.message?.data?.trip?.queue ?? '--',
                        ),
                        SectionElement(
                          title: 'رقم الحاوية',
                          value:
                              info.message?.data?.trip?.containerNumber ?? '--',
                        ),
                        SectionElement(
                          title: 'حجم الحاوية',
                          value:
                              info.message?.data?.trip?.returnContainerSize ??
                                  '--',
                        ),
                      ],
                    ),
                    // driver
                    TripSectionCard(
                      title: 'معلومات السائق',
                      elements: [
                        SectionElement(
                          title: 'اسم السائق',
                          value: info.message?.data?.trip?.driverName ?? '--',
                        ),
                        SectionElement(
                          title: 'البوابة الحالية',
                          value:
                              info.message?.data?.trip?.currentCheckPoint ?? '',
                        ),
                        SectionElement(
                          title: 'الإجراء الحالي',
                          value:
                              info.message?.data?.trip?.currentProcedure ?? '',
                        ),
                      ],
                    ),

                    75.hGap,
                  ],
                ),
              ),
              SizedBox(
                child: RefreshIndicator(
                  onRefresh: () async {
                    ref
                        .watch(trinpInfoProvider.notifier)
                        .search(controller.text);
                  },
                  child: Stepper(
                    controlsBuilder: (context, details) {
                      return Row();
                    },
                    key: UniqueKey(),
                    expandeAll: true,

                    ///
                    steps: [
                      ...?info.message?.data?.trip?.tripCheckpoints?.map(
                        (e) => Step(
                          // step:StepStyle.,
                          state: e.exitTime != null
                              ? StepState.complete
                              : e.enteredTime != null
                                  ? StepState.editing
                                  : StepState.indexed,
                          isActive: e.exitTime != null,
                          title: Text(e.checkPoint
                                  ?.split('-')[0]
                                  .replaceAll(RegExp(r'\s\d.*'), '') ??
                              '--'),
                          // subtitle: Text('data'),
                          subtitle: e.enteredTime == null
                              ? null
                              : e.exitTime == null
                                  ? null
                                  :

                                  // e.exitTime?.toString() ??
                                  //     'لم تخرج بعد'

                                  Text(
                                      DateTime.parse(e.exitTime!).toStringDate,
                                    ),
                          content: Card(
                            elevation: 8,
                            shadowColor: Colors.black.withOpacity(
                              .1,
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                  12,
                                ),
                                side: e.exitTime != null
                                    ? BorderSide(
                                        color: context.theme.primaryColor,
                                      )
                                    : BorderSide.none),
                            color: context.theme.colorScheme.onPrimary,
                            child: SizedBox(
                              width: context.width,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // StepRow(
                                    //   title: 'اسم البوابة',
                                    //   value: e.checkPoint ?? '--',
                                    // ),
                                    StepRow(
                                      title: 'وقت الدخول',
                                      value: e.enteredTime == null ||
                                              e.enteredTime!.isEmpty
                                          ? 'لم تدخل بعد'
                                          : DateTime.parse(e.enteredTime!).hms,
                                    ),
                                    StepRow(
                                      title: 'وقت الخروج',
                                      value: e.enteredTime == null &&
                                              e.exitTime == null
                                          ? '--'
                                          : e.exitTime == null
                                              ? '---'
                                              :

                                              // e.exitTime?.toString() ??
                                              //     'لم تخرج بعد'

                                              DateTime.parse(e.exitTime!).hms,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Step(
                        title: Text(
                          '',
                        ),
                        state: StepState.editing,
                        content: SizedBox(
                          height: 75,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class StepRow extends StatelessWidget {
  const StepRow({
    super.key,
    required this.title,
    required this.value,
  });
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: .8.symetric,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: context.textTheme.bodyLarge,
          ),
          16.wGap,
          Expanded(
            child: Text(
              textAlign: TextAlign.end,
              value,
              style: context.textTheme.bodyLarge,
            ),
          ),
        ],
      ),
    );
  }
}

class SectionElement {
  final String? title;
  final String? value;

  ///this will replace value
  final Widget? valueWidget;
  SectionElement({
    this.title,
    this.value,
    this.valueWidget,
  });
}

class TripSectionCard extends StatelessWidget {
  const TripSectionCard({
    super.key,
    this.title,
    this.elements,
  });
  final String? title;
  final List<SectionElement>? elements;

  @override
  Widget build(BuildContext context) {
    if (elements == null || elements!.isEmpty) return SizedBox();
    return Padding(
      padding: .8.symetric,
      child: Card(
        color: context.theme.colorScheme.onPrimary,
        elevation: 8,
        shadowColor: Colors.black.withOpacity(
          .1,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (title != null)
                Text(
                  title!,
                  style: context.textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: context.theme.primaryColor,
                  ),
                ),
              if (elements != null && elements!.isNotEmpty) Divider(),
              if (elements != null && elements!.isNotEmpty)
                ...elements!.map(
                  (e) => Padding(
                    padding: .4.symetric,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            e.title ?? '',
                            style: context.textTheme.bodyLarge,
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: e.valueWidget ??
                              Text(
                                textAlign: TextAlign.end,
                                e.value ?? '',
                                style: context.textTheme.bodyLarge,
                              ),
                        ),
                      ],
                    ),
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
