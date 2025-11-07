// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shared/shared.dart';
import 'package:sliver_tools/sliver_tools.dart';
import 'package:sub_app_core/generator/annotations/generate_route.dart';
import 'package:transporter/providers/beams_provider.dart';
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
    return SizedBox(
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
                    padding: 24.8.symetric,
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            'اعمالي',
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
                              builder: (context) => ResponseFilter(),
                            );
                          },
                          icon: Icon(
                            Iconsax.filter,
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
