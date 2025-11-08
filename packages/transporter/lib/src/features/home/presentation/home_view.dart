// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: no_leading_underscores_for_local_identifiers
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lottie/lottie.dart';
import 'package:shared/shared.dart';
import 'package:sub_app_core/generator/annotations/generate_route.dart';
import 'package:transporter/src/widgets/header_widget.dart';
import 'package:transporter/src/widgets/patterned_card.dart';
import 'package:shared/src/components/plate_number.dart';

@GenerateRoute(
  routeName: "Transporter home page",
  routePath: "/home-transporter",
)
class HomeView extends HookConsumerWidget {
  static const String route = '/';

  const HomeView({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // var segments = ['الساحة الاستباقية', 'الاساسي'];
    // var segment = useState(segments.entries.first.key);

    return Scaffold(
      // floatingActionButton: FloatingActionButton.extended(
      //     onPressed: () async {
      //       // context.push(ConfirmCrossingPage.route);
      //       var res = await showDialog<String?>(
      //         context: context,
      //         builder: (context) => Center(
      //           child: Center(child: BarcodeScannerWithScanWindow()),
      //         ),
      //       );
      //       if (res != null && context.mounted) {
      //         showDialog(
      //           context: context,
      //           builder: (ctx) => LoadingDialog().animate().scale(),
      //         );
      //         Future.delayed(5000.milliseconds).then(
      //           (_) {
      //             context.pop();
      //             showDialog(
      //               context: context,
      //               builder: (context) => SuccessDialog().animate().scale(),
      //             );
      //             Future.delayed(5000.milliseconds).then(
      //               (_) {
      //                 context.pop();
      //               },
      //             );
      //           },
      //         );
      //       }
      //     },
      //     icon: Icon(
      //       Iconsax.scan_barcode,
      //     ),
      //     label: Text(
      //       'تأكيد مرور شاحنة',
      //     )),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: context.width,
        child: Padding(
          padding: EdgeInsets.all(0),
          // padding: EdgeInsets.symmetric(
          //     horizontal: Responsive.isMobile(context) ? 15 : 18),
          child: RefreshIndicator.adaptive(
            onRefresh: () async {
              //TODO connect this to api
            },
            child: ListView(
              children: [
                16.hGap,
                // if (!Responsive.isDesktop(context))
                //   Padding(
                //     padding: 16.0.symetric,
                //     child: SizedBox(
                //       child: Column(
                //         children: [
                //           Row(
                //             children: [
                //               CircleAvatar(
                //                 radius: 34,
                //                 child: Text(
                //                   'ج',
                //                   style: context.textTheme.bodyLarge!.copyWith(
                //                     fontWeight: FontWeight.bold,
                //                   ),
                //                 ),
                //               ),
                //               8.wGap,
                //               Column(
                //                 crossAxisAlignment: CrossAxisAlignment.start,
                //                 children: [
                //                   Text('مرحبا'),
                //                   Text(
                //                     'جهاد احمد جاغوب',
                //                     style: context.textTheme.bodyLarge!
                //                         .copyWith(fontWeight: FontWeight.bold),
                //                   ),
                //                 ],
                //               ),
                //             ],
                //           ),
                //           Divider(),
                //         ],
                //       ),
                //     ),
                //   ),
                Header(),

                // Row(
                //   children: [
                //     Column(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       children: [
                //         Text(
                //           'مرحبا',
                //           style: context.textTheme.bodyLarge!.copyWith(
                //             fontWeight: FontWeight.bold,
                //           ),
                //         ),
                //         Text(
                //           'جهاد احمد جاغوب',
                //           style: context.textTheme.headlineLarge!.copyWith(
                //             fontWeight: FontWeight.bold,
                //           ),
                //         ),
                //       ],
                //     ),
                //   ],
                // ),
                // Divider(),
                16.hGap,
                // const ActivityDetailsCard(),
                // Text('الرصيد الحالي'),
                Padding(padding: 16.0.symetric, child: PatternedCard()),
                24.hGap,
                // 12.hGap,
                // Padding(
                //   padding: 16.0.symetric,
                //   child: Text(
                //     'احصائيات',
                //     textAlign: TextAlign.start,
                //     style: context.textTheme.bodyLarge!.copyWith(
                //       fontWeight: FontWeight.bold,
                //       color: Colors.white,
                //     ),
                //   ),
                // ),
                // _height(context),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: 16.0.symetric,
                    child: Row(
                      spacing: 16,
                      children: [
                        StatsWidget(
                          title: 'عدد الرحلات الكلي',
                          value: '12',
                          color: Color(0xff63D4B9),
                          icon: Iconsax.car,
                        ),
                        // 8.wGap,
                        StatsWidget(
                          title: 'تحميل حاوية',
                          value: '12',
                          color: Color(0xff69B9E7),
                          icon: Iconsax.send,
                        ),
                        // 8.wGap,
                        StatsWidget(
                          title: 'اعادة حاوية',
                          value: '12',
                          color: Color(0xff8A98E9),
                          icon: Iconsax.received,
                        ),
                        StatsWidget(
                          title: 'الرحلات المزدوجة',
                          value: '12',
                          color: Color(0xffA799E8),
                          icon: Iconsax.truck,
                        ),
                        StatsWidget(
                          title: 'بضائع عامة',
                          value: '12',
                          color: Color(0xffC797D9),
                          icon: Iconsax.truck,
                        ),
                      ],
                    ),
                  ),
                ),

                // GridView.builder(
                //   itemCount: 2,
                //   shrinkWrap: true,
                //   physics: const ScrollPhysics(),
                //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                //     crossAxisCount: Responsive.isMobile(context) ? 2 : 4,
                //     crossAxisSpacing: !Responsive.isMobile(context) ? 15 : 12,
                //     mainAxisSpacing: 12.0,
                //   ),
                //   itemBuilder: (context, i) {
                //     // return CustomCard(
                //     //   color: context.theme.primaryColor,
                //     //   child: Column(
                //     //     mainAxisAlignment: MainAxisAlignment.center,
                //     //     crossAxisAlignment: CrossAxisAlignment.center,
                //     //     children: [
                //     //       // SvgPicture.asset(healthDetails[i].icon),
                //     //       Padding(
                //     //         padding:
                //     //             const EdgeInsets.only(top: 15, bottom: 4),
                //     //         child: Text(
                //     //           'dsd',
                //     //           style: const TextStyle(
                //     //               fontSize: 18,
                //     //               color: Colors.white,
                //     //               fontWeight: FontWeight.w600),
                //     //         ),
                //     //       ),
                //     //       // Text(
                //     //       //   healthDetails[i].title,
                //     //       //   style: const TextStyle(
                //     //       //       fontSize: 13,
                //     //       //       color: Colors.grey,
                //     //       //       fontWeight: FontWeight.normal),
                //     //       // ),
                //     //     ],
                //     //   ),
                //     // );

                //     return PatternedCard();
                //   },
                // ),

                // PatternedCard(),

                // LineChartCard(),
                24.hGap,
                Padding(
                  padding: 16.0.symetric,
                  child: Row(
                    children: [
                      Text(
                        'سجل الدور',
                        textAlign: TextAlign.start,
                        style: context.textTheme.bodyLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Spacer(),
                      TextButton(
                        onPressed: () {
                          context.push('/turn-record-view');
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: context.theme.scaffoldBackgroundColor
                              .darker(8),
                          padding: 10.4.symetric,
                          minimumSize: Size(50, 30),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        child: Text(
                          'عرض الكل',
                          style: context.textTheme.labelLarge!.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: 16.16.symetric,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Material(
                      child: ListTile(
                        tileColor: Colors.white,
                        // leading:
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'صباح ناصر ',
                              style: context.textTheme.headlineSmall!.copyWith(
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              '07855223625',
                              style: context.textTheme.headlineSmall!.copyWith(
                                color: Color(0xFF333333),
                              ),
                            ),
                            ConstrainedBox(
                              constraints: BoxConstraints(
                                maxWidth: context.width * .3,
                              ),
                              child: FittedBox(
                                child: PlateNumber(
                                  plateNumber: '11A1234',
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                        trailing: Container(
                          width: 108,
                          height: 54,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Expanded(
                                child: Text(
                                  '32',
                                  style: context.textTheme.headlineMedium!
                                      .copyWith(
                                        color: context
                                            .theme
                                            .scaffoldBackgroundColor,
                                        fontSize: 40,
                                        fontWeight: FontWeight.w400,
                                      ),
                                ),
                              ),
                              Text(
                                'الرقم الحالي',
                                style: context.textTheme.labelLarge!.copyWith(
                                  color: Color(0xFF333333),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                // CupertinoSlidingSegmentedControl<int>(
                //   groupValue: segment.value,
                //   children: segments,
                //   onValueChanged: (v) {
                //     // log(v!);
                //     segment.value = v!;
                //   },
                // ),
                // BarGraphCard(),
                // _height(context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class StatsWidget extends StatelessWidget {
  const StatsWidget({
    super.key,
    required this.title,
    required this.value,
    required this.icon,
    required this.color,
  });

  final String title;
  final String value;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75 + (95 * 0.5), // context.width * 0.3,
      height: 115 + (115 * 0.5), // context.height * 0.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: context.theme.scaffoldBackgroundColor.lighter(5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Icon(
              icon,
              color: Colors.white,
              size: 20,
            ),
            8.hGap,
            Expanded(
              child: Text(
                title,
                textAlign: TextAlign.start,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: context.textTheme.bodyLarge!.copyWith(
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ),
            4.hGap,
            Text(
              value,
              textAlign: TextAlign.start,
              style: context.textTheme.headlineLarge!.copyWith(
                fontWeight: FontWeight.w400,
                fontSize: 42,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class StatsWidget extends StatelessWidget {
//   const StatsWidget({
//     super.key,
//     required this.title,
//     required this.value,
//     required this.icon,
//     required this.color,
//   });
//   final String title;
//   final String value;
//   final IconData icon;
//   final Color color;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 116,
//       height: 136,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(20),
//         color: context.theme.scaffoldBackgroundColor.lighter(5),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Row(
//           children: [
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Icon(
//                   icon,
//                   color: Colors.white,
//                   size: 24,
//                 ),
//                 8.hGap,
//                 Text(
//                   title,
//                   textAlign: TextAlign.start,
//                   style: context.textTheme.labelLarge!.copyWith(
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white,
//                   ),
//                 ),
//                 4.hGap,
//                 Text(
//                   value,
//                   textAlign: TextAlign.start,
//                   style: context.textTheme.headlineMedium!.copyWith(
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white,
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class LoadingDialog extends StatelessWidget {
  const LoadingDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Center(
                    child: Column(
                      children: [
                        CircularProgressIndicator.adaptive(),
                        // SpinKitWave(
                        //   itemBuilder: (BuildContext context, int index) {
                        //     return DecoratedBox(
                        //       decoration: BoxDecoration(
                        //         color: index.isEven
                        //             ? context.theme.primaryColor
                        //             : context.theme.colorScheme.secondary,
                        //       ),
                        //     );
                        //   },
                        // ),
                        16.hGap,
                        Text(
                          'يتم تأكيد مرور الشاحنة',
                          style: context.textTheme.bodyLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('يرجى الانتظار'),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class SuccessDialog extends StatelessWidget {
  const SuccessDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Center(
                    child: Column(
                      children: [
                        Lottie.asset(
                          'assets/lottie/success.json',
                          // repeat: false,
                          width: 85,
                        ),
                        16.hGap,
                        Text(
                          'تم تأكيد مرور الشاحنة',
                          style: context.textTheme.bodyLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        // Text('يرجى الانتظار'),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
