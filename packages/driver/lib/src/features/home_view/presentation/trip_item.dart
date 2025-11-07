// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:driver/src/features/home_view/widgets/home_widget_frame.dart';
import 'package:driver/src/widgets/raw_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lottie/lottie.dart';
import '../widgets/expnsion_tile_children.dart';
import '../model/driver_info/driver_info.dart';
import 'package:flutter/services.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:shared/shared.dart';

import 'map_view.dart';
import 'package:driver/src/features/home_view/model/mapdto.dart';

class TripItem extends StatefulWidget {
  const TripItem({super.key, required this.driverInfo});
  final DriverInfo? driverInfo;

  @override
  State<TripItem> createState() => _TripItemState();
}

class _TripItemState extends State<TripItem> {
  int? selectedContainer;

  @override
  Widget build(BuildContext context) {
    return widget.driverInfo == null ||
            widget.driverInfo!.driverStatus == 'Available'
        ? SizedBox(
            height: context.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset('assets/lottie/car-loading.json'),
                8.hGap,
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.green.withAlpha(45),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'في انتظار استلام رحلة',
                      style: context.textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.w900,
                        color: Colors.green,
                      ),
                    ),
                  ),
                ),
                16.hGap,
                Text(
                  'لم يتم حجز رحلة لك بعد',
                  style: context.textTheme.headlineSmall!.copyWith(
                    fontWeight: FontWeight.w900,
                    color: context.theme.primaryColor,
                  ),
                ),
              ],
            ),
          )
        : Padding(
            padding: 16.0.symetric,
            child: Column(
              spacing: 2,
              children: [
                4.hGap,
                GestureDetector(
                  onTap:
                      (widget.driverInfo?.activeQueueIndex?.globalQueueNumber !=
                          null)
                      ? () {
                          setState(() {
                            selectedContainer = 0;
                          });
                        }
                      : null,
                  child: Container(
                    decoration: BoxDecoration(
                      color: selectedContainer == 0
                          ? Color(0xff63D4B9)
                          : Colors.white,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                // الساحة الابتدائية
                                ListTile(
                                  title: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'السائق الحالي',
                                        style: context.textTheme.labelLarge!
                                            .copyWith(
                                              //fontWeight: FontWeight.w400,
                                              color: Colors.black,
                                            ),
                                      ),
                                      Text(
                                        'الساحة الابتدائية',
                                        style: context.textTheme.headlineSmall!
                                            .copyWith(
                                              color: Colors.black,
                                            ),
                                      ),
                                    ],
                                  ),
                                  trailing: Text(
                                    widget
                                                .driverInfo
                                                ?.activeQueueIndex
                                                ?.globalQueueNumber !=
                                            null
                                        ? '${widget.driverInfo!.activeQueueIndex!.globalQueueNumber!.toFormatedPrice}'
                                        : 'لا يوجد دور',
                                    style: context.textTheme.headlineMedium!
                                        .copyWith(
                                          color: context
                                              .theme
                                              .scaffoldBackgroundColor,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                8.hGap,
                GestureDetector(
                  onTap:
                      (widget
                              .driverInfo
                              ?.preGateQueueIndex
                              ?.globalQueueNumber !=
                          null)
                      ? () {
                          setState(() {
                            selectedContainer = 1;
                          });
                        }
                      : null,
                  child: Container(
                    decoration: BoxDecoration(
                      color: selectedContainer == 1
                          ? context.theme.primaryColor
                          : Colors.white,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                //الساحة الاستباقية
                                ListTile(
                                  title: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'السائق الحالي',
                                        style: context.textTheme.labelLarge!
                                            .copyWith(
                                              color: Colors.black,
                                            ),
                                      ),
                                      Text(
                                        'الساحة الاستباقية',
                                        style: context.textTheme.headlineSmall!
                                            .copyWith(
                                              color: Colors.black,
                                            ),
                                      ),
                                    ],
                                  ),
                                  trailing: Text(
                                    widget
                                                .driverInfo
                                                ?.preGateQueueIndex
                                                ?.globalQueueNumber !=
                                            null
                                        ? '${widget.driverInfo!.preGateQueueIndex!.globalQueueNumber!.toFormatedPrice}'
                                        : 'لا يوجد دور',
                                    style: context.textTheme.headlineMedium!
                                        .copyWith(
                                          color: context
                                              .theme
                                              .scaffoldBackgroundColor,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                8.hGap,
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: HomeWidgetFrame(
                    children: [
                      RawListTile(
                        title: 'معرف الرحلة',
                        subTitle: widget.driverInfo?.trip?.name ?? '--',
                        action: TileActionButton(
                          trailingIcon: Iconsax.copy,
                          onTrailingTab: () async {
                            await Clipboard.setData(
                              ClipboardData(
                                text: widget.driverInfo?.trip?.name ?? '',
                              ),
                            ).then((_) {
                              showTopSnackBar(
                                Overlay.of(context),
                                CustomSnackBar.success(
                                  message: 'تم نسخ معرف الرحلة',
                                  iconPositionLeft: 12,
                                  backgroundColor: context.theme.primaryColor,
                                  icon: Icon(Iconsax.tick_circle),
                                ),
                              );
                            });
                          },
                        ),
                      ),
                      RawListTile(
                        title: 'اسم المنفذ',
                        subTitle:
                            widget.driverInfo?.trip?.portName ?? 'لا يوجد',
                      ),
                      RawListTile(
                        title: 'الرصيف',
                        subTitle: widget.driverInfo?.trip?.berthName ?? '',
                      ),
                      RawListTile(
                        title: 'حجم الحاوية المعادة للرصيف',
                        subTitle:
                            widget.driverInfo?.trip?.returnContainerSize ?? '',
                      ),
                      Center(
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              width: context.width,
                              height: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    'https://t4.ftcdn.net/jpg/03/15/55/09/360_F_315550977_RDdTnzhBygR8GFLTiGLZadFIG4N2ZjHr.jpg',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: context.theme.primaryColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              onPressed: () {
                                final name =
                                    widget
                                        .driverInfo
                                        ?.tripCheckPoints
                                        ?.first
                                        .checkPoint ??
                                    '';
                                final dto = Mapdto(checkpointname: name);
                                context.push('/map-screen', extra: dto);
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'الخارطة',
                                    style: context.textTheme.bodyLarge!
                                        .copyWith(color: Colors.black),
                                  ),
                                  SizedBox(width: 5),
                                  Icon(Iconsax.send_2, size: 20),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      // HomeWidgetFrame(children: children)
                      if (widget.driverInfo?.trip?.printingAgent != null)
                        HomeWidgetFrame.shrink(
                          children: [
                            RawListTile(
                              title: 'مخول الطباعة',
                              subTitle:
                                  widget
                                      .driverInfo
                                      ?.trip
                                      ?.printingAgent
                                      ?.name ??
                                  '--',
                            ),
                            RawListTile(
                              title: 'رقم الهاتف',
                              subTitle:
                                  widget
                                      .driverInfo
                                      ?.trip
                                      ?.printingAgent
                                      ?.mobile ??
                                  '---',
                              action: TileActionButton(
                                trailingIcon: Iconsax.copy,
                                onTrailingTab: () async {
                                  await Clipboard.setData(
                                    ClipboardData(
                                      text:
                                          widget
                                              .driverInfo
                                              ?.trip
                                              ?.printingAgent
                                              ?.mobile ??
                                          '',
                                    ),
                                  ).then((_) {
                                    showTopSnackBar(
                                      Overlay.of(context),
                                      CustomSnackBar.success(
                                        message: 'تم نسخ رقم الهاتف الرحلة',
                                        iconPositionLeft: 12,
                                        backgroundColor:
                                            context.theme.primaryColor,
                                        icon: Icon(Iconsax.tick_circle),
                                      ),
                                    );
                                  });
                                },
                              ),
                            ),
                          ],
                        ),

                      if (widget.driverInfo?.trip?.transportationAgent != null)
                        HomeWidgetFrame.shrink(
                          children: [
                            RawListTile(
                              title: 'مخول النقل',
                              subTitle:
                                  widget.driverInfo?.trip?.transportationAgent
                                      ?.split('/')
                                      .first ??
                                  '',
                            ),
                            RawListTile(
                              title: 'رقم الهاتف',
                              subTitle:
                                  widget.driverInfo?.trip?.transportationAgent
                                      ?.split('/')
                                      .last ??
                                  '',
                              action: TileActionButton(
                                trailingIcon: Iconsax.copy,
                                onTrailingTab: () async {
                                  await Clipboard.setData(
                                    ClipboardData(
                                      text:
                                          widget
                                              .driverInfo
                                              ?.trip
                                              ?.transportationAgent
                                              ?.split('/')
                                              .last ??
                                          '',
                                    ),
                                  ).then((_) {
                                    showTopSnackBar(
                                      Overlay.of(context),
                                      CustomSnackBar.success(
                                        message: 'تم نسخ رقم الهاتف الرحلة',
                                        iconPositionLeft: 12,
                                        backgroundColor:
                                            context.theme.primaryColor,
                                        icon: Icon(Iconsax.tick_circle),
                                      ),
                                    );
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                    ],
                  ),
                ),
                8.hGap,
              ],
            ),
          );
  }
}

// class CircleIndex extends StatelessWidget {
//   const CircleIndex({super.key, this.index});
//   final int? index;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 36,
//       height: 36,
//       decoration: BoxDecoration(
//         // shape: BoxShape.circle,
//         borderRadius: BorderRadius.circular(12),
//         color: context.theme.primaryColor,
//       ),
//       child: Center(
//         child: Text(
//           '${index ?? ''}',
//           style: context.textTheme.bodyLarge!.copyWith(
//             fontWeight: FontWeight.w900,
//             color: Colors.white,
//           ),
//         ),
//       ),
//     );
//   }
// }

class TileActionButton extends StatelessWidget {
  const TileActionButton({
    super.key,
    required this.trailingIcon,
    required this.onTrailingTab,
  });

  final IconData? trailingIcon;
  final VoidCallback? onTrailingTab;

  @override
  Widget build(BuildContext context) {
    return IconButton.filledTonal(
      icon: Icon(trailingIcon),
      onPressed: onTrailingTab,
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(
          // context.theme.scaffoldBackgroundColor.withAlpha(20),
          Color(0xffEBEAF2),
        ),
        foregroundColor: WidgetStatePropertyAll(
          onTrailingTab == null
              ? Colors.grey
              : context.theme.scaffoldBackgroundColor,
        ),
      ),
    );
  }
}
