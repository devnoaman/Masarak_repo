// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shared/shared.dart';
import 'package:transporter/src/features/wallet/providers/wallet_provider.dart';
import 'package:shared/src/svgmanag.dart';

class PatternedCard extends HookConsumerWidget {
  PatternedCard({super.key, this.iswallt = false});

  bool iswallt;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var wallet = ref.watch(walletProvider);

    return SizedBox(
      child: switch (wallet) {
        // Initial<WalletResponse, void>() => SizedBox(),
        Loading<WalletResponse, void>() => Center(
          child: CircularProgressIndicator(),
        ),

        Loaded<WalletResponse, void>() => Stack(
          children: [
            Container(
              width: context.width,
              height: 215,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                // image: DecorationImage(
                //   image: AssetImage('assets/images/pattern.png'),
                //   fit: BoxFit.cover,
                // ),
                gradient: LinearGradient(
                  colors: [Color(0xFF255B77), Color(0xFF35AC9E)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                // to add vector later
                // image: const DecorationImage(
                //   image: AssetImage('assets/images/Vector.png'),
                //   fit: BoxFit.cover,
                // ),
              ),
              child: iswallt
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        40.hGap,
                        Align(
                          alignment: AlignmentDirectional.centerStart,
                          child: Padding(
                            padding: 16.0.symetric,
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
                        Padding(
                          padding: 16.0.symetric,
                          child: Text(
                            ((wallet.data.deposit ?? 0) +
                                    (wallet.data.withdraw ?? 0))
                                .toFormatedPrice,
                            style: context.textTheme.headlineLarge!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 36,
                            ),
                          ),
                        ),
                        16.hGap,
                      ],
                    )
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        40.hGap,
                        Align(
                          alignment: AlignmentDirectional.centerStart,
                          child: Padding(
                            padding: 16.0.symetric,
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
                        Padding(
                          padding: 16.0.symetric,
                          child: Text(
                            ((wallet.data.deposit ?? 0) +
                                    (wallet.data.withdraw ?? 0))
                                .toFormatedPrice,
                            style: context.textTheme.headlineLarge!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 36,
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
                              icon: Iconsax.card_receive,
                            ),
                            24.wGap,
                            TransactionButton(
                              title: 'اجمالي الدفوعات',
                              value:
                                  (wallet.data.withdraw ?? 0).toFormatedPrice,
                              icon: Iconsax.card_send,
                            ),
                          ],
                        ),
                        16.hGap,
                      ],
                    ),
            ),
            Positioned(
              top: 32,
              left: 16,
              child: SvgPicture.string(
                SvgManag.logoWhite,
              ),
            ),
          ],
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
    return Column(
      children: [
        TextButton.icon(
          onPressed: () {},
          icon: Icon(
            icon,
            color: Colors.white,
            size: 20,
          ),
          label: Text(
            title,
            style: context.textTheme.labelLarge!.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              // fontSize: 40,
            ),
          ),
        ),
        Text(
          value,
          style: context.textTheme.headlineMedium!.copyWith(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
