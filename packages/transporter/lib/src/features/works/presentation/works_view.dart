// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shared/shared.dart';
import 'package:sliver_tools/sliver_tools.dart';
import 'package:sub_app_core/generator/annotations/generate_route.dart';
import 'package:transporter/providers/beams_provider.dart';
import 'package:transporter/src/features/notifications/presentation/notifications_view.route.dart';
import 'package:transporter/src/features/works/components/my_work_card.dart';
import 'package:transporter/src/features/works/components/response_filter.dart';
import 'package:transporter/src/features/works/providers/filters_provider.dart';
import 'package:transporter/src/features/works/providers/works_provider.dart';
import 'package:transporter/src/widgets/loading_widget.dart';

@GenerateRoute(
  routeName: "Transporter works page",
  routePath: "/works-transporter",
)
class WorksView extends HookConsumerWidget {
  const WorksView({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var works = ref.watch(worksProvider);
    var filters = ref.watch(filterDataProvider);
    ref.watch(busherProvider);
    return Scaffold(
      body: SizedBox(
        width: context.width,
        child: switch (works) {
          Initial<List<JobRequest>, void>() => SizedBox(),
          Loading<List<JobRequest>, void>() => LoadingWidget(),
          Loaded<List<JobRequest>, void>() => RefreshIndicator.adaptive(
            onRefresh: () async {
              ref.invalidate(worksProvider);
            },
            child: CustomScrollView(
              slivers: [
                SliverPinnedHeader(
                  child: Container(
                    color: context.theme.scaffoldBackgroundColor,
                    child: Padding(
                      padding: 16.12.symetric,
                      child: Row(
                        spacing: 10,
                        children: [
                          // Expanded(
                          //   child: Text(
                          //     'اعمالي',
                          //     textAlign: TextAlign.start,
                          //     style: context.textTheme.bodyLarge!.copyWith(
                          //       fontWeight: FontWeight.bold,
                          //       color: Colors.white,
                          //     ),
                          //   ),
                          // ),
                          Expanded(
                            child: Container(
                              padding: 16.hPadding,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(18),
                              ),
                              child: TextField(
                                // controller: searchController,
                                textDirection: TextDirection.rtl,
                                onChanged: (value) {
                                  // Debouncer.debounce(
                                  //   'return-trip-tag',
                                  //   Durations.long2,
                                  //   () {
                                  //     ref
                                  //         .read(returnsFilterDataProvider.notifier)
                                  //         .copyWith(tripName: value);
                                  //   },
                                  // );
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
                              // style: ButtonStyle(
                              //   backgroundColor: WidgetStatePropertyAll(
                              //     Colors.white,
                              //   ),
                              //   shape: WidgetStatePropertyAll(
                              //     RoundedRectangleBorder(
                              //       borderRadius: BorderRadius.circular(15),
                              //     ),
                              //   ),
                              // ),
                              onPressed: () {
                                showModalBottomSheet(
                                  context: context,
                                  isScrollControlled: true,
                                  backgroundColor:
                                      context.theme.scaffoldBackgroundColor,
                                  builder: (context) => ResponseFilter(),
                                );
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
                    ),
                  ),
                ),
                ...works.data.map(
                  (e) => SliverToBoxAdapter(
                    child: MyWorkCard(jobRequest: e),
                  ),
                ),
              ],
            ),
          ),
          _ => SizedBox(),
        },
      ),
    );
  }
}
// حساب العميل
// 07703218566
//  if (connectedTrip?.containerDetails?.containerNumber !=
//                         null) ...[
//                       connectedTrip?.containerDetails?.containerSize ?? '---',
//                       '---',

//                       connectedTrip?.containerDetails?.containerNumber ?? '---',
//                       connectedTrip?.containerDetails?.containerType ?? '---',
//                       connectedTrip?.containerDetails?.billOfLading ?? '---',
//                     ],

// if (jobRequest.connectedTrips?.firstWhere(
//                       (e) => e.containerDetails?.containerNumber != null,
//                       orElse: () => ConnectedTrip(),
//                     ) !=
//                     null)
