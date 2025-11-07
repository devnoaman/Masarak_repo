// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shared/shared.dart';
import 'package:sub_app_core/generator/annotations/generate_route.dart';
import 'package:transporter/src/features/wallet/providers/wallet_provider.dart';
import 'package:transporter/src/widgets/loading_widget.dart';

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

    var segments = ['الايداع', 'السحب'];
    return RefreshIndicator.adaptive(
      onRefresh: () async {
        ref.invalidate(walletProvider);
      },
      child: switch (wallet) {
        Loading<WalletResponse, void>() => LoadingWidget(),

        Loaded<WalletResponse, void>() => ListView(
          children: [
            WalletInfo(
              currentBalance: 2000000,
              depositBalance: wallet.data.deposit ?? 0,
              withdrawBalance: wallet.data.withdraw ?? 0,
            ),
            16.hGap,
            Padding(
              padding: 16.0.symetric,
              child: Text(
                'الحركات النقدية',
                textAlign: TextAlign.start,
                style: context.textTheme.bodyLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            16.hGap,
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
    );
  }
}

class TransactionTile extends StatelessWidget {
  const TransactionTile({
    super.key,
    // required this.value,
    // required this.title,
    this.index,
    // this.subTitle,
    required this.data,
  });
  // final int value;
  final int? index;
  // final String title;
  // final String? subTitle;
  final TransactionData data;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: 0.4.symetric,
      child: ListTile(
        tileColor: index != null && index!.isEven
            ? context.theme.primaryColor.withOpacity(.1)
            : null,
        title: Text(
          data.meta?.name ?? '-',
          style: context.textTheme.bodyLarge!.copyWith(
            color: Colors.white,
          ),
        ),
        // subtitle: subTitle == null ? null : Text(subTitle!),
        trailing: Text(
          data.amount ?? '',
          // style: ,
        ),
        leadingAndTrailingTextStyle: context.textTheme.bodyLarge!.copyWith(
          fontWeight: FontWeight.bold,
          color: (data.type == "withdraw" ? Colors.red : Colors.green),
        ),
        leading: Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            // color: (value.isNegative ? Colors.red : Colors.green).withOpacity(
            //   .1,
            // ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Icon(
              data.type == "withdraw"
                  ? Iconsax.money_send
                  : Iconsax.money_recive,
              color: (data.type == "withdraw" ? Colors.red : Colors.green),
            ),
          ),
        ),
      ),
    );
  }
}

class WalletInfo extends StatelessWidget {
  const WalletInfo({
    super.key,
    required this.withdrawBalance,
    required this.depositBalance,
    required this.currentBalance,
  });
  final int withdrawBalance;
  final int depositBalance;
  final int currentBalance;
  @override
  Widget build(BuildContext context) {
    print(((withdrawBalance / currentBalance) * 100));
    return Container(
      margin: 16.0.symetric,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(24.0)),
        // image: DecorationImage(
        //   // image: AssetImage('assets/images/pattern.png'),
        //   fit: BoxFit.cover,
        // ),
        color: context.theme.primaryColor.withAlpha(30),
        // color: Color(0xff63D4B9).withAlpha(75),
        // color: color ?? cardBackgroundColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Row(
          children: [
            Expanded(
              // flex: 2,
              child: Container(
                // color: Colors.red,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    OperationWidget(
                      title: 'الرصيد المتبقي',
                      balance: depositBalance + withdrawBalance,
                      color: Colors.white,
                    ),
                    OperationWidget(
                      title: 'الرصيد المودع',
                      balance: depositBalance,
                      color: Colors.green,
                    ),
                    OperationWidget(
                      title: 'الرصيد المسحوب',
                      balance: withdrawBalance,
                      color: Colors.red,
                    ),
                    // OperationWidget(),
                    // OperationWidget(),
                  ],
                ),
              ),
            ),
            SizedBox(
              // height: cnt.maxHeight,
              height: context.width * .35,
              width: context.width * .35,
              // color: Colors.red,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned.fill(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircularProgressIndicator(
                        backgroundColor: context.theme.canvasColor,
                        value: (1 - (depositBalance / currentBalance)),
                        strokeWidth: 12,
                        color: Colors.green,
                        strokeCap: StrokeCap.round,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 26,
                    left: 26,
                    right: 26,
                    bottom: 26,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircularProgressIndicator(
                        value: (1 - (withdrawBalance / currentBalance)),
                        backgroundColor: context.theme.canvasColor,
                        strokeWidth: 12,
                        color: Colors.red,
                        strokeCap: StrokeCap.round,
                      ),
                    ),
                  ),
                  // Positioned.fill(
                  //   child: Container(
                  //     color: Colors.red,
                  //     // width: constraints.maxHeight,
                  //     // height: constraints.maxHeight,
                  //     // child: CircularProgressIndicator(
                  //     //   value: .7,
                  //     //   strokeWidth: constraints.maxWidth * .2,
                  //     // ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OperationWidget extends StatelessWidget {
  const OperationWidget({
    super.key,
    required this.title,
    required this.balance,
    this.color,
  });
  final String title;
  final Color? color;

  final int balance;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: 0.8.symetric,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: context.textTheme.labelLarge!.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Text(
            balance.toFormatedPrice,
            style: context.textTheme.headlineSmall!.copyWith(
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}
