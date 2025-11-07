// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lottie/lottie.dart';
import 'package:shared/shared.dart';
import 'package:sub_app_core/generator/annotations/generate_route.dart';
import 'package:transporter/src/features/wallet/providers/wallet_provider.dart';
import 'package:transporter/src/widgets/header_widget.dart';
import 'package:transporter/src/widgets/plate_number.dart';

@GenerateRoute(
  routeName: "Transporter home page",
  routePath: "/home-transporter",
)
class HomeView extends HookConsumerWidget {
  static const String route = '/';

  const HomeView({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    SizedBox _height(BuildContext context) => SizedBox(height: 20);

    var segments = ['الساحة الاستباقية', 'الاساسي'];
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
                SizedBox(height: 5),
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
                _height(context),
                // const ActivityDetailsCard(),
                // Text('الرصيد الحالي'),
                Padding(padding: 16.0.symetric, child: PatternedCard()),

                _height(context),
                // 12.hGap,
                Padding(
                  padding: 16.0.symetric,
                  child: Text(
                    'احصائيات',
                    textAlign: TextAlign.start,
                    style: context.textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                _height(context),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: 16.0.symetric,
                    child: Row(
                      spacing: 8,
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
                _height(context),
                Padding(
                  padding: 16.0.symetric,
                  child: Text(
                    'سجل الدور',
                    textAlign: TextAlign.start,
                    style: context.textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                _height(context),
                DefaultTabController(
                  length: segments.length,
                  child: TabBar(
                    dividerHeight: 0,
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.grey,
                    labelStyle: context.textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorPadding: 16.0.symetric,
                    indicator: BoxDecoration(
                      color: context.theme.primaryColor,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    tabs: segments.map((e) => Tab(text: e)).toList(),
                  ),
                ),
                _height(context),
                ListTile(
                  tileColor: context.theme.primaryColor.withOpacity(.1),
                  leading: CircleAvatar(child: Text('1')),
                  title: Text(
                    'صباح ناصر  / 07855223625',
                    style: context.textTheme.bodyLarge!.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  trailing: ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: context.width * .3),
                    child: FittedBox(
                      child: PlateNumber(
                        plateNumber: '11A1234',
                        color: Colors.white,
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
                _height(context),
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
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: color.withAlpha(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: color.withAlpha(25),
              child: Icon(
                icon,
                color: color,
              ),
            ),
            8.wGap,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  textAlign: TextAlign.start,
                  style: context.textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  value,
                  textAlign: TextAlign.start,
                  style: context.textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class PatternedCard extends HookConsumerWidget {
  const PatternedCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var wallet = ref.watch(walletProvider);

    return SizedBox(
      child: switch (wallet) {
        // Initial<WalletResponse, void>() => SizedBox(),
        Loading<WalletResponse, void>() => Center(
          child: CircularProgressIndicator(),
        ),

        Loaded<WalletResponse, void>() => Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(24)),
            // image: DecorationImage(
            //   image: AssetImage('assets/images/pattern.png'),
            //   fit: BoxFit.cover,
            // ),
            color: Color(0xff2F3083),
            // color: color ?? cardBackgroundColor,
          ),
          child: Column(
            children: [
              24.hGap,
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: Padding(
                  padding: 16.0.symetric,
                  child: Center(
                    child: Text(
                      'رصيد المحفظة',
                      textAlign: TextAlign.start,
                      style: context.textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: 8.24.symetric,
                child: Text(
                  ((wallet.data.deposit ?? 0) + (wallet.data.withdraw ?? 0))
                      .toFormatedPrice,
                  style: context.textTheme.headlineLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 40,
                  ),
                ),
              ),
              Wrap(
                alignment: WrapAlignment.center,
                // scrollDirection: Axis.horizontal,
                // dragStartBehavior: DragStartBehavior.down,
                // shrinkWrap: true,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TransactionButton(
                    title: 'اجمالي الايداعات',
                    value: (wallet.data.deposit ?? 0).toFormatedPrice,
                    icon: Iconsax.money_recive,
                  ),
                  8.wGap,
                  TransactionButton(
                    title: 'اجمالي الدفوعات',
                    value: (wallet.data.withdraw ?? 0).toFormatedPrice,
                    icon: Iconsax.money_send,
                  ),
                ],
              ),
              24.hGap,
            ],
          ),
        ),

        _ => SizedBox(),
      },
    );
  }
}

class TransactionButton extends StatelessWidget {
  const TransactionButton({
    super.key,
    required this.title,
    required this.value,
    required this.icon,
    this.onTap,
  });
  final String title;
  final String value;
  final IconData icon;
  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(
          // Colors.white,
          context.theme.canvasColor,
        ),
      ),
      onPressed: () {},
      icon: CircleAvatar(
        child: Icon(
          icon,
          color: Colors.white,
        ),
        backgroundColor: Color(0xff2F3083),
      ),
      label: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: context.textTheme.labelSmall!.copyWith(
              fontWeight: FontWeight.bold,
              // fontSize: 40,
            ),
          ),
          Text(
            value,
            style: context.textTheme.bodyLarge!.copyWith(
              fontWeight: FontWeight.bold,
              // fontSize: 40,
            ),
          ),
        ],
      ),
    );
  }
}

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
