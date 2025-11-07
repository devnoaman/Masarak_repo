import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:masarak_transporter/Responsive.dart';
import 'package:masarak_transporter/extentions.dart';
import 'package:masarak_transporter/model/health_model.dart';
import 'package:masarak_transporter/pages/home/providers/check_points_provider.dart';
import 'package:masarak_transporter/widgets/custom_card.dart';

class ActivityDetailsCard extends ConsumerWidget {
  const ActivityDetailsCard({super.key});

  final List<HealthModel> healthDetails = const [
    HealthModel(
      icon: 'assets/svg/thermometer.svg',
      value: "32.6°C",
      title: "Temperature",
    ),
    HealthModel(icon: 'assets/svg/wind.svg', value: "84%", title: "Humidity"),
    HealthModel(
      icon: 'assets/svg/soil.svg',
      value: "238.3",
      title: "Soil Moisture Level",
    ),
    HealthModel(
      icon: 'assets/svg/sun.svg',
      value: "176.7",
      title: "Irradiance",
    ),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(checkPoinstProvider);

    return state.checkPoints.isEmpty
        ? state.isLoading
              ? SizedBox(
                  width: context.width,
                  height: context.height,
                  child: Center(child: CircularProgressIndicator.adaptive()),
                )
              : SizedBox()
        : Column(
            children: [
              Row(
                children: [
                  Text(
                    'البوابات ',
                    style: context.textTheme.headlineMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              16.hGap,
              GridView.builder(
                itemCount: state.checkPoints.length,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: Responsive.isMobile(context) ? 2 : 4,
                  crossAxisSpacing: !Responsive.isMobile(context) ? 15 : 12,
                  mainAxisSpacing: 12.0,
                ),
                itemBuilder: (context, i) {
                  return CustomCard(
                    color: context.theme.primaryColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // SvgPicture.asset(healthDetails[i].icon),
                        Padding(
                          padding: const EdgeInsets.only(top: 15, bottom: 4),
                          child: Text(
                            state.checkPoints[i].checkPointname ?? '',
                            style: const TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        // Text(
                        //   healthDetails[i].title,
                        //   style: const TextStyle(
                        //       fontSize: 13,
                        //       color: Colors.grey,
                        //       fontWeight: FontWeight.normal),
                        // ),
                      ],
                    ),
                  );
                },
              ),
            ],
          );
  }
}
