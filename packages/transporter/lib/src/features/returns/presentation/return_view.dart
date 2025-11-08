// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:easy_debouncer/easy_debouncer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shared/shared.dart';
import 'package:sub_app_core/generator/annotations/generate_route.dart';
import 'package:transporter/providers/app_context_provider.dart';
import 'package:transporter/src/features/returns/presentation/returns_filter_screen.dart';
import 'package:transporter/src/features/returns/providers/returns_filter_provider.dart';
import 'package:transporter/src/features/returns/providers/returns_provider.dart';
import 'package:transporter/src/features/returns/widgets/returned_container.dart';
import 'package:transporter/src/widgets/loading_widget.dart';
import 'package:shared/src/svgmanag.dart';

@GenerateRoute(
  routeName: "Transporter return page",
  routePath: "/return-transporter",
)
class ReturnView extends HookConsumerWidget {
  const ReturnView({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var returns = ref.watch(returnsProvider);
    var notifier = ref.watch(returnsProvider.notifier);
    var filters = ref.watch(returnsFilterDataProvider);

    final searchController = useTextEditingController(
      text: filters.tripName,
    );
    // final searchQuery = useState<String>('');

    Widget searchAndFilterBar(BuildContext context, WidgetRef ref) {
      return Padding(
        padding: 16.allPadding,
        child: Row(
          spacing: 10,
          children: [
            Expanded(
              child: Container(
                padding: 16.0.symetric,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: TextField(
                  controller: searchController,
                  textDirection: TextDirection.rtl,
                  onChanged: (value) {
                    Debouncer.debounce(
                      'return-trip-tag',
                      Durations.long2,
                      () {
                        ref
                            .read(returnsFilterDataProvider.notifier)
                            .copyWith(tripName: value);
                      },
                    );
                    // searchQuery.value = value.trim();
                  },
                  decoration: InputDecoration(
                    icon: Icon(Icons.search, color: Colors.black),
                    hintText: 'بحث',
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Colors.white,
              ),
              child: IconButton(
                onPressed: () {
                  final appKey = ref.read(appCtxProvider);
                  if (appKey.currentState != null) {
                    Navigator.of(appKey.currentState!.context).push(
                      MaterialPageRoute(
                        builder: (ctx) => const ReturnsFilterScreen(),
                      ),
                    );
                  }
                },
                icon: Badge(
                  smallSize: 10,
                  largeSize: 10,
                  isLabelVisible: !filters.isEmpty,
                  child: Icon(
                    Iconsax.setting_4,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: Column(
        children: [
          searchAndFilterBar(context, ref),
          Expanded(
            child: switch (returns) {
              Loading<List<ReturnTripModel>, void>() => LoadingWidget(),
              Empty<List<ReturnTripModel>, void>() => Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.string(SvgManag.NoData, height: 200),
                    Text(
                      'لا توجد بيانات لعرضها ',
                      style: context.textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'حاول مرة اخرى',
                      style: context.textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    16.hGap,
                    TextButton.icon(
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          context.theme.primaryColor.withAlpha(20),
                        ),
                      ),
                      onPressed: () {
                        ref.invalidate(returnsFilterDataProvider);
                      },
                      icon: Icon(
                        Iconsax.filter_remove,
                        color: context.theme.primaryColor,
                      ),
                      label: Text(
                        'تفريغ الفلترة',
                        style: context.textTheme.bodyLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: context.theme.primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Loaded<List<ReturnTripModel>, void>() => RefreshIndicator(
                onRefresh: () async {
                  notifier.refresh();
                },
                child: Column(
                  children: [
                    Expanded(
                      child: Builder(
                        builder: (context) {
                          return PaginatedList<ReturnTripModel>(
                            items: returns.data,
                            padding: 16.0.symetric,
                            isRecentSearch: false,
                            isLastPage: !(notifier.res?.nextPageUrl != null),
                            onRemove: null,
                            deleteIcon: SizedBox(),
                            onLoadMore: (index) {
                              ref.read(returnsProvider.notifier).fetchNext();
                            },
                            builder: (item, index) {
                              return ReturnedContainer(trip: item);
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Error<List<ReturnTripModel>, void>() => SizedBox(),

              _ => SizedBox(),
            },
          ),
        ],
      ),
    );
  }
}
