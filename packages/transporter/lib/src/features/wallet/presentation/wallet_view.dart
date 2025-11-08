// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared/shared.dart';
import 'package:sub_app_core/generator/annotations/generate_route.dart';
import 'package:transporter/src/features/wallet/providers/wallet_provider.dart';
import 'package:transporter/src/widgets/loading_widget.dart';
import 'package:transporter/src/widgets/transaction_tile.dart';
import '../../../widgets/patterned_card.dart';

@GenerateRoute(
  routeName: "Transporter wallet page",
  routePath: "/wallet-transporter",
)
class WalletView extends HookConsumerWidget {
  const WalletView({super.key});
  static const String route = '/wallet';
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var wallet = ref.watch(walletProvider);

    // var segments = ['الايداع', 'السحب'];
    return RefreshIndicator.adaptive(
      onRefresh: () async {
        ref.invalidate(walletProvider);
      },
      child: Scaffold(
        body: switch (wallet) {
          Loading<WalletResponse, void>() => LoadingWidget(),

          Loaded<WalletResponse, void>() => ListView(
            children: [
              // WalletInfo(
              //   currentBalance: 2000000,
              //   depositBalance: wallet.data.deposit ?? 0,
              //   withdrawBalance: wallet.data.withdraw ?? 0,
              // ),
              16.hGap,
              Padding(
                padding: 16.0.symetric,
                child: PatternedCard(
                  iswallt: true,
                ),
              ),
              40.hGap,
              Padding(
                padding: 16.0.symetric,
                child: Row(
                  children: [
                    Text(
                      'الحركات النقدية',
                      textAlign: TextAlign.start,
                      style: context.textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Spacer(),
                    TextButton(
                      onPressed: () {
                        context.push('/transactions-view');
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
              // 16.hGap,
              // DefaultTabController(
              //   length: segments.length,
              //   child: TabBar(
              //     dividerHeight: 0,
              //     labelColor: Colors.white,
              //     unselectedLabelColor: Colors.grey,
              //     labelStyle: context.textTheme.bodyLarge!.copyWith(
              //       fontWeight: FontWeight.bold,
              //     ),
              //     indicatorSize: TabBarIndicatorSize.tab,
              //     indicatorPadding: 16.0.symetric,
              //     indicator: BoxDecoration(
              //       color: context.theme.primaryColor,
              //       borderRadius: BorderRadius.circular(24),
              //     ),
              //     tabs: segments.map((e) => Tab(text: e)).toList(),
              //   ),
              // ),
              16.hGap,

              ...wallet.data.transactionsData?.data?.indexed.map(
                    (value) {
                      return TransactionTile(data: value.$2, index: value.$1);
                    },
                  ).toList() ??
                  [SizedBox()],
              // TransactionTile(
              //   title: 'تعزيز رصيد في مسارك',
              //   subTitle: '2025/1/1',
              //   value: 100,
              //   index: 0,
              // ),
              // TransactionTile(
              //   title: 'سحب رصيد من مسارك',
              //   subTitle: '2025/1/1',
              //   value: -100,
              //   index: 1,
              // ),
              // TransactionTile(
              //   // title: 'تعزيز رصيد في مسارك',
              //   // subTitle: '2025/1/1',
              //   // value: 100000,

              //   // index: 2,
              // ),
            ],
          ),

          _ => SizedBox(),
        },
      ),
    );
  }
}
