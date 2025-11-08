import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:icons_font/iconsfont_icons.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shared/shared.dart';
import 'package:transporter/src/features/wallet/providers/date_provider.dart';
import 'package:transporter/src/features/wallet/providers/wallet_provider.dart';
import 'statistic_card.dart';
import 'package:intl/intl.dart';

class StatisticScreen extends HookConsumerWidget {
  const StatisticScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final wallet = ref.watch(walletProvider);
    final selectedDateRange = ref.watch(dateRangeProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('احصائيات'),
        centerTitle: true,
      ),
      body: Padding(
        padding: 16.hPadding,
        child: switch (wallet) {
          Loading<WalletResponse, void>() => const Center(
            child: CircularProgressIndicator(),
          ),
          Loaded<WalletResponse, void>() => Column(
            children: [
              8.hGap,
              ElevatedButton(
                onPressed: () async {
                  final picked = await showDateRangePicker(
                    context: context,
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2100),
                    initialDateRange: selectedDateRange,
                    helpText: 'اختار المدة',
                    builder: (context, child) {
                      return Theme(
                        data: context.theme.copyWith(
                          colorScheme: ColorScheme.light(
                            primary: Colors.white,
                            onPrimary: Colors.black,
                            surface: context.theme.scaffoldBackgroundColor,
                            onSurface: Colors.white,
                          ),
                          textTheme: const TextTheme(
                            bodyMedium: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        child: child!,
                      );
                    },
                  );

                  if (picked != null) {
                    ref.read(dateRangeProvider.notifier).state = picked;
                  }
                },
                style: ElevatedButton.styleFrom(
                  padding: 14.8.symetric,
                  backgroundColor: context.theme.scaffoldBackgroundColor
                      .lighter(5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      selectedDateRange == null
                          ? 'اختر المدة'
                          : '${DateFormat('d MMMM', 'ar').format(selectedDateRange.start)} - ${DateFormat('d MMMM yyyy', 'ar').format(selectedDateRange.end)}',
                      style: const TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    12.wGap,
                    Icon(
                      Iconsax.calendar_2,
                      size: 20,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              24.hGap,
              StatisticCard(
                title: 'إجمالي الإيداعات',
                amount: (wallet.data.deposit ?? 0).toFormatedPrice,
                icon: Icon(
                  IconsFont.cardRecive,
                  color: Color(0xFF007022),
                  size: 40,
                ),
                color: Color(0xFF007022),
              ),
              const SizedBox(height: 16),
              StatisticCard(
                title: 'إجمالي المدفوعات',
                amount: (wallet.data.withdraw ?? 0).toFormatedPrice,
                icon: Icon(
                  IconsFont.cardSend,
                  color: Color(0xFFFF2632),
                  size: 40,
                ),
                color: Color(0xFFFF2632),
              ),
            ],
          ),
          _ => const SizedBox(),
        },
      ),
    );
  }
}
