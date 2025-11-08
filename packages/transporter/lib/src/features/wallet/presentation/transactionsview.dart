import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:icons_font/iconsfont_icons.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shared/shared.dart';
import 'package:sub_app_core/generator/annotations/generate_route.dart';
import 'package:transporter/src/features/wallet/providers/transaction_provider.dart';
import 'package:transporter/src/widgets/transaction_tile.dart';
import '../providers/transaction_filter_provider.dart';
import 'package:shared/src/svgmanag.dart';

@GenerateRoute(routeName: "Transactions View", routePath: "/transactions-view")
class Transactionsview extends HookConsumerWidget {
  const Transactionsview({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var transactions = ref.watch(transactionProvider);
    var notifier = ref.watch(transactionProvider.notifier);
    final filterNotifier = ref.watch(transactionFilterDataProvider.notifier);
    var res = ref.watch(transactionFilterDataProvider);
    final tabController = useTabController(initialLength: 3);
    var index = useState(0);
    var today = DateTime.now();
    var startDate = useState<DateTime>(
      res.startDate ?? today.subtract(const Duration(days: 5)),
    );
    var endDate = useState<DateTime>(res.endDate ?? today);

    void onTab(int value) {
      index.value = value;
      int? newType;
      switch (value) {
        case 0:
          newType = 0;
          break;
        case 1:
          newType = 1;
          break;
        case 2:
          newType = 2;
          break;
      }
      filterNotifier.update(reportType: newType);
    }

    Future<void> pickDateRange() async {
      final picked = await showDateRangePicker(
        context: context,
        firstDate: DateTime(2020),
        lastDate: today.add(const Duration(days: 365)),
        initialDateRange: DateTimeRange(
          start: startDate.value,
          end: endDate.value,
        ),
        helpText: "اختر الفترة",
        confirmText: "تأكيد",
        cancelText: "إلغاء",
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
        filterNotifier.update(
          startDate: picked.start,
          endDate: picked.end,
        );
      }
    }

    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Iconsax.arrow_left,
              color: Colors.white,
            ),
            onPressed: () => Navigator.pop(context),
          ),
          centerTitle: true,
          title: Text(
            'الحركات النقدية',
            style: context.textTheme.headlineMedium!.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: 28,
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(Iconsax.search_normal_1, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(IconsFont.calender, color: Colors.white),
              onPressed: pickDateRange,
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: context.width,
                  decoration: BoxDecoration(
                    color: context.theme.scaffoldBackgroundColor.lighter(5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TabBar(
                    controller: tabController,
                    labelColor: Colors.white,
                    onTap: onTab,
                    unselectedLabelColor: Colors.white,
                    labelStyle: context.textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                    unselectedLabelStyle: context.textTheme.bodyLarge,
                    splashBorderRadius: BorderRadius.circular(20),
                    indicator: BoxDecoration(
                      color: context.theme.scaffoldBackgroundColor.darker(8),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    indicatorColor: Colors.transparent,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorPadding: EdgeInsets.all(5),
                    dividerColor: Colors.transparent,
                    tabs: [
                      Tab(text: 'الكل'),
                      Tab(text: 'الايداع'),
                      Tab(text: 'السحب'),
                    ],
                  ),
                ),
              ),
            ),

            Expanded(
              child: switch (transactions) {
                Loaded<List<TransactionData>, void>() => RefreshIndicator(
                  onRefresh: () async {
                    notifier.refresh();
                  },
                  // child: _buildTransactionsList(
                  //   transactions.data,

                  // ),
                  child: PaginatedList(
                    items: transactions.data,
                    isRecentSearch: false,
                    isLastPage: !(notifier.res?.nextPageUrl != null),
                    onRemove: null,
                    onLoadMore: (index) {
                      ref.read(transactionProvider.notifier).fetchNext();
                    },
                    builder: (item, index) {
                      return TransactionTile(
                        data: item,
                        index: index,
                      );
                    },
                  ),
                ),
                Loading() => const Center(child: CircularProgressIndicator()),
                Empty() => Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.string(SvgManag.NoData, height: 200),
                      const Text(
                        'لا توجد بيانات لعرضها',
                        style: TextStyle(color: Colors.white),
                      ),
                      const Text(
                        'حاول مرة اخرى',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                _ => const SizedBox(),
              },
            ),
          ],
        ),
      ),
    );
  }

  //   Widget _buildTransactionsList(List<TransactionData> list) {
  //     if (list.isEmpty) {
  //       return Center(
  //         child: Column(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           children: [
  //             Text(
  //               'لا توجد بيانات لعرضها',
  //               style: TextStyle(color: Colors.white),
  //             ),
  //           ],
  //         ),
  //       );
  //     }
  //     return ListView.separated(
  //       itemCount: list.length,
  //       itemBuilder: (context, index) {
  //         return TransactionTile(
  //           data: list[index],
  //           index: index,
  //         );
  //       },
  //       separatorBuilder: (context, index) => SizedBox(height: 2),
  //     );
  //   }
}
