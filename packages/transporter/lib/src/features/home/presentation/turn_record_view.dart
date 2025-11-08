import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shared/shared.dart';
import 'package:sub_app_core/generator/annotations/generate_route.dart';

@GenerateRoute(routeName: "Turn Record View", routePath: "/turn-record-view")
class TurnRecordView extends HookConsumerWidget {
  const TurnRecordView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var index = useState(0);
    final tabController = useTabController(initialLength: 2);

    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'سجل الدور',
            style: context.textTheme.bodyLarge!.copyWith(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Iconsax.search_normal)),
          ],
        ),
        body: Column(
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
                  controller: tabController,
                  onTap: (value) {
                    index.value = value;
                  },
                  labelColor: Colors.white,
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
                    Tab(text: 'الساحة الاستباقية'),
                    Tab(text: 'الساحة الاساسية'),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Text('لا يوجد بيانات'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DriverTurn extends StatelessWidget {
  final String name;
  final String phone;
  final String plateNumber;
  final String currentNumber;

  const DriverTurn({
    super.key,
    required this.name,
    required this.phone,
    required this.plateNumber,
    required this.currentNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: 16.8.symetric,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Material(
          child: ListTile(
            tileColor: Colors.white,
            // leading:
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: context.textTheme.headlineSmall!.copyWith(
                    color: Colors.black,
                  ),
                ),
                Text(
                  phone,
                  style: context.textTheme.headlineSmall!.copyWith(
                    color: Color(0xFF333333),
                  ),
                ),
                ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: context.width * .3,
                  ),
                  child: FittedBox(
                    child: PlateNumber(
                      plateNumber: plateNumber,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            trailing: Container(
              width: 108,
              height: 54,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: Text(
                      currentNumber,
                      style: context.textTheme.headlineMedium!.copyWith(
                        color: context.theme.scaffoldBackgroundColor,
                        fontSize: 40,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Text(
                    'الرقم الحالي',
                    style: context.textTheme.labelLarge!.copyWith(
                      color: Color(0xFF333333),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
