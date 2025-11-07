import 'package:driver/src/features/checks/components/check_widget.dart';
import 'package:driver/src/features/checks/provider/checkspointprovider.dart';
import 'package:driver/src/features/home_view/model/driver_info/driver_info.dart';
import 'package:driver/src/features/home_view/provider/driver_info_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:driver/src/features/home_view/model/mapdto.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shared/shared.dart';
import 'package:sub_app_core/generator/annotations/generate_route.dart';

@GenerateRoute(
  routeName: "Checks screen driver",
  routePath: "/cheks-view-driver-app",
)
class ChecksView extends HookConsumerWidget {
  const ChecksView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var chicksPoints = ref.watch(chicksPointProvider);
    var cnt = useTabController(initialLength: 3);
    var index = useState(0);
    var chicksPointsNotifier = ref.read(chicksPointProvider.notifier);

    return Scaffold(
      body: switch (chicksPoints) {
        Initial<List<TripCheckPoint>, String>() => SizedBox(),
        Empty<List<TripCheckPoint>, String>() => SizedBox(),

        Loading<List<TripCheckPoint>, String>() => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SpinKitFadingCube(color: context.theme.primaryColor),
              24.hGap,
              Text(
                'جاري تحميل البيانات',
                style: context.textTheme.bodyLarge!.copyWith(
                  fontWeight: FontWeight.w900,
                  color: context.theme.primaryColor,
                ),
              ),
            ],
          ),
        ),

        Loaded<List<TripCheckPoint>, String>() => Builder(
          builder: (BuildContext context) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  child: Container(
                    width: context.width,
                    decoration: BoxDecoration(
                      color: context.theme.scaffoldBackgroundColor.lighter(5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TabBar(
                      controller: cnt,
                      labelColor: Colors.white,
                      onTap: (value) {
                        index.value = value;
                      },
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
                        Tab(text: 'قيد الانتظار'),
                        Tab(text: 'تم عبورها'),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: _buildCheckList(
                    [
                      chicksPoints.data,
                      chicksPointsNotifier.pendingChecks,
                      chicksPointsNotifier.passedChecks,
                    ][index.value],
                  ),
                ),
              ],
            );
          },
        ),

        Error<List<TripCheckPoint>, String>() => Center(
          child: Text(
            'حدث خطأ ما يرجى اعادة المحاولة',
            style: context.textTheme.bodyMedium!.copyWith(
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
      },
    );
  }

  Widget _buildCheckList(List<TripCheckPoint> list) {
    if (list.isEmpty) {
      return Center(
        child: Text(
          'لا توجد نقاط لعرضها',
          style: TextStyle(color: Colors.white),
        ),
      );
    }

    return ListView.separated(
      padding: EdgeInsets.only(top: 12, bottom: 16, left: 16, right: 16),
      itemCount: list.length,
      itemBuilder: (context, index) {
        return CheckWidget(check: list[index]);
      },
      separatorBuilder: (context, index) => SizedBox(height: 2),
    );
  }
}
