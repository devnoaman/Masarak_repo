// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shared/shared.dart';
import 'package:sub_app_core/generator/annotations/generate_route.dart';
import 'package:transporter/src/features/returns/providers/returns_filter_provider.dart';
import 'package:transporter/src/features/returns/providers/returns_provider.dart';
import 'package:transporter/src/features/returns/widgets/returned_container.dart';
import 'package:transporter/src/features/returns/widgets/returns_filter.dart';
import 'package:transporter/src/widgets/loading_widget.dart';

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

    // return ListView();
    return SizedBox(
      child: switch (returns) {
        Loading<List<ReturnTripModel>, void>() => LoadingWidget(),
        Empty<List<ReturnTripModel>, void>() => Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Iconsax.note,
                color: context.theme.primaryColor,
              ),
              16.hGap,
              Text(
                'لا توجد بيانات ',
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
                    // color: Colors.white,
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
              // TextFormField(),
              Padding(
                padding: 24.8.symetric,
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        'رحلات عودة الفارغ',
                        textAlign: TextAlign.start,
                        style: context.textTheme.bodyLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    IconButton.filled(
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          filters.isEmpty
                              ? context.theme.primaryColor.withAlpha(45)
                              : context.theme.primaryColor,
                        ),
                        foregroundColor: WidgetStatePropertyAll(
                          !filters.isEmpty
                              ? Colors.white
                              : context.theme.primaryColor,
                        ),
                      ),
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          backgroundColor:
                              context.theme.scaffoldBackgroundColor,
                          builder: (context) => ReturnsFilter(),
                        );
                      },
                      icon: Icon(
                        Iconsax.filter,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: PaginatedList<ReturnTripModel>(
                  items: returns.data,

                  padding: 16.0.symetric,
                  isRecentSearch: false,
                  // isLastPage: true,
                  isLastPage: !(notifier.res?.nextPageUrl != null),
                  onRemove: null,
                  deleteIcon: SizedBox(),
                  onLoadMore: (index) {
                    ref.read(returnsProvider.notifier).fetchNext();
                  },

                  builder: (item, index) {
                    var trip = returns.data[index];

                    return ReturnedContainer(trip: trip);
                  },
                ),
              ),
            ],
          ),
        ),

        // ListView(
        //   padding: 16.0.symetric,
        //   children: [...returns.data.map((e) => ReturnedContainer(trip: e))],
        // ),
        Error<List<ReturnTripModel>, void>() => SizedBox(),

        _ => SizedBox(),
      },
    );
  }
}
