import 'package:api_client/api_client.dart';
import 'package:driver/src/features/home_view/presentation/trip_item.dart';
import 'package:driver/src/features/home_view/provider/driver_info_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lottie/lottie.dart';
import 'package:shared/shared.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sub_app_core/generator/annotations/generate_route.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
//import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/driver_info/driver_info.dart';

@GenerateRoute(routeName: "Home screen driver", routePath: "/home-driver-app")
class HomeView extends HookConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var driverInfo = ref.watch(driverInfoProvider);
    final controller = useAnimationController(
      duration: const Duration(seconds: 2),
    )..repeat(reverse: true);

    // var stream = useStream(AuthManager.instance.authManagerStream);
    final stream = useMemoized(() => AuthManager.instance.authManagerStream);
    useEffect(
      () {
        // 3. Create the subscription
        final subscription = stream.listen((event) {
          switch (event.type) {
            case AuthManagerEventType.refreshFailed:
              showTopSnackBar(
                Overlay.of(context),
                CustomSnackBar.error(
                  message: 'انتهت صلاحية الجلسة ، يرجى تسجيل الدخول',
                ),
                onDismissed: () {
                  AuthManager.instance.logout(
                    path: '',
                    decoder: (data) {},
                    callApi: false,
                  );

                  context.go('/login');
                },
              );

            // case AuthManagerEventType.tokenExpired:

            default:
          }

          // --------------------------------
        });

        // 4. Return a function that cancels the subscription
        //    This runs when the widget is disposed.
        return subscription.cancel;
      },
      [stream], // The effect will re-run if 'stream' changes
    );

    final animation = Tween<double>(begin: 4.0, end: 15.0).animate(controller);

    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: context.width,
        child: Padding(
          padding: EdgeInsets.all(0),
          child: RefreshIndicator.adaptive(
            onRefresh: () async {
              ref.read(driverInfoProvider.notifier).get();
            },
            child: ListView(
              children: [
                12.hGap,
                switch (driverInfo) {
                  Initial<DriverInfo, String>() =>
                    // Loaded<DriverInfo, String>() =>
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [
                          Lottie.asset('assets/lottie/car-loading.json'),
                          const SizedBox(height: 16),
                          Text(
                            'في انتظار استلام الرحلة',
                            style: context.textTheme.bodyLarge!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            'لم يتم حجز رحلة',
                            style: context.textTheme.bodyLarge!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),

                  Loading<DriverInfo, String>() => TripItemSkeleton(),

                  Loaded<DriverInfo, String>() => TripItem(
                    driverInfo: driverInfo.data,
                  ),
                  Error<DriverInfo, String>() => SizedBox(
                    height: context.height * .8,

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Lottie.asset('assets/lottie/car-loading.json'),

                        Text(
                          driverInfo.e ?? 'حدث خطأ ما يرجى اعادة المحاولة',
                          style: context.textTheme.bodyLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            ref.read(driverInfoProvider.notifier).get();
                          },
                          child: Text('اعادة التحميل'),
                        ),
                      ],
                    ),
                  ),
                  _ => SizedBox(),
                },
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class StatsWidget extends StatelessWidget {
  const StatsWidget({
    super.key,
    required this.title,
    required this.value,
    required this.icon,
    required this.color,
  });
  final String title;
  final String value;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: color.withOpacity(.1),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            CircleAvatar(radius: 30, backgroundColor: color, child: Icon(icon)),
            8.wGap,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  textAlign: TextAlign.start,
                  style: context.textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                    // color: Colors.white,
                  ),
                ),
                Text(
                  value,
                  textAlign: TextAlign.start,
                  style: context.textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class LoadingDialog extends StatelessWidget {
  const LoadingDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Center(
                    child: Column(
                      children: [
                        SpinKitWave(
                          itemBuilder: (BuildContext context, int index) {
                            return DecoratedBox(
                              decoration: BoxDecoration(
                                color: index.isEven
                                    ? context.theme.primaryColor
                                    : context.theme.colorScheme.secondary,
                              ),
                            );
                          },
                        ),
                        16.hGap,
                        Text(
                          'يتم تأكيد مرور الشاحنة',
                          style: context.textTheme.bodyLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('يرجى الانتظار'),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class SuccessDialog extends StatelessWidget {
  const SuccessDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Center(
                    child: Column(
                      children: [
                        Lottie.asset(
                          'assets/lottie/success.json',
                          // repeat: false,
                          width: 85,
                        ),
                        16.hGap,
                        Text(
                          'تم تأكيد مرور الشاحنة',
                          style: context.textTheme.bodyLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class TripItemSkeleton extends StatelessWidget {
  const TripItemSkeleton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(height: 8),
          _buildBox(),
          const SizedBox(height: 8),
          _buildBox(),
          const SizedBox(height: 8),
          _buildDetailsBox(context),
        ],
      ),
    );
  }

  Widget _buildBox() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                ListTile(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _shimmerBox(width: double.infinity, height: 20),
                      const SizedBox(height: 8),
                      _shimmerBox(width: 150, height: 20),
                    ],
                  ),
                  trailing: _shimmerBox(width: 60, height: 20),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDetailsBox(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // العناصر العلوية من نوع تفاصيل
          ...List.generate(3, (index) {
            return Column(children: [_detailsRow(), const SizedBox(height: 8)]);
          }),

          const SizedBox(height: 12),

          // صورة قبل أول Divider
          Center(
            child: Shimmer.fromColors(
              baseColor: Colors.grey.shade300,
              highlightColor: Colors.grey.shade100,
              child: Container(
                width: 300,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),

          const SizedBox(height: 16),
          const Divider(),

          // باقي التفاصيل
          ...List.generate(4, (index) {
            return Column(
              children: [
                _detailsRow(),
                const SizedBox(height: 8),
                if (index == 1 || index == 3) const Divider(),
              ],
            );
          }),
        ],
      ),
    );
  }

  Widget _detailsRow() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _shimmerBox(width: 160, height: 18),
          _shimmerBox(width: 100, height: 18),
        ],
      ),
    );
  }

  Widget _shimmerBox({double width = 100, double height = 14}) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      period: const Duration(milliseconds: 1500),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
