// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:masarak_driver/model/driver_info/driver_info.dart';
import 'package:masarak_driver/pages/home/providers/driver_info_provider.dart';
import 'package:shared/shared.dart';

class ChecksView extends HookConsumerWidget {
  static const String route = '/checks';
  const ChecksView({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var driverInfo = ref.watch(driverInfoProvider);

    return Container(
      width: context.width,
      height: context.height,
      child: switch (driverInfo) {
        Initial<DriverInfo, String>() => SizedBox(),

        Loading<DriverInfo, String>() => SizedBox(
          height: context.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // CircularProgressIndicator.adaptive(
              //   backgroundColor: context.theme.primaryColor,
              // ),
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

        Loaded<DriverInfo, String>() => Builder(
          builder: (BuildContext context) {
            var ch = driverInfo.data.tripCheckPoints;

            return switch (ch) {
              null => SizedBox(),

              [...] => ListView(
                padding: EdgeInsets.all(16),
                children: [
                  // Text('data'),

                  //...
                  ...ch.map((e) {
                    return CheckWidget(check: e);
                  }),
                  Container(), 8.hGap,
                ],
              ),
            };
          },
        ),

        Error<DriverInfo, String>() => Center(
          child: Text(driverInfo.e ?? 'حدث خطأ ما يرجى اعادة المحاولة'),
        ),
        Empty<DriverInfo, String>() => SizedBox(),
      },
    );
  }
}

class CheckWidget extends StatelessWidget {
  const CheckWidget({super.key, required this.check});
  final TripCheckPoint check;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Container(
        decoration: BoxDecoration(
          // color: Color(0xff63D4B9),
          color: Color(0xff175092),
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            ListTile(
              title: Text('${check.checkPoint}'),
              leading: CircleAvatar(child: Icon(Iconsax.arrow_square)),
              subtitle: Text('${check.name}'),
              subtitleTextStyle: context.textTheme.bodyLarge,
              titleTextStyle: context.textTheme.bodyLarge!.copyWith(
                fontWeight: FontWeight.w900,
                color: context.theme.primaryColor,
                // color: Colors.white,
              ),
              trailing: Container(
                decoration: BoxDecoration(
                  color: context.theme.primaryColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    check.exitTime == null ? 'قيد الانتظار' : 'منجزة',
                  ),
                ),
              ),
            ),

            // Text('${check.checkPoint}'),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: context.width,
                decoration: BoxDecoration(
                  color: context.theme.primaryColor,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: ColumnedText(
                              title: 'وقت الدخول',
                              value: check.enteredTime?.hms ?? '---',
                            ),
                          ),
                          Expanded(
                            child: ColumnedText(
                              title: 'وقت الخروج',
                              value: check.exitTime?.hms ?? '---',
                            ),
                          ),
                        ],
                      ),

                      // Text('${check.checkPoint}'),
                      Row(
                        children: [
                          Expanded(
                            child: ColumnedText(
                              title: 'الملاحظات',
                              value: check.notes ?? '---',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ColumnedText extends StatelessWidget {
  const ColumnedText({super.key, required this.title, required this.value});
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: context.textTheme.bodyLarge!.copyWith(
            fontWeight: FontWeight.w900,
            // color: Colors.white,
          ),
        ),
        Text(
          value,
          style: context.textTheme.bodyLarge!.copyWith(
            fontWeight: FontWeight.w900,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
