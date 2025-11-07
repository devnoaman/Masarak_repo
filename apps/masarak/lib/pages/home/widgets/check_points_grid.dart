import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:masarak/Responsive.dart';
import 'package:masarak/extentions.dart' hide NumDurationExtensions;
import 'package:masarak/models/network_state/network_state.dart';
import 'package:masarak/pages/home/models/check_point.dart';
import 'package:masarak/pages/home/providers/check_points_provider.dart';
import 'package:masarak/widgets/custom_card.dart';
import 'package:masarak/widgets/loader/shimmered_widget.dart';
import 'package:masarak/widgets/shimmer_loading.dart';

class CheckPointsGrid extends ConsumerWidget {
  const CheckPointsGrid({super.key});

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    final state = ref.watch(checkPoinstProvider);

    return switch (state) {
      // NetworkStateInitial<List<CheckPoint>>() => ,

      NetworkStateLoading<List<CheckPoint>>() => ShimmerWrapper(
          isLoading: true,
          child: SizedBox(
            width: context.width,
            height: context.height,
            child: Column(
              children: [
                Row(
                  children: [
                    ShimmerLoading(
                      child: Text(
                        'البوابات ',
                        style: context.textTheme.headlineMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                16.hGap,
                GridView(
                  // itemCount: state.res.length,
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: Responsive.isMobile(context) ? 2 : 4,
                      crossAxisSpacing: !Responsive.isMobile(context) ? 15 : 12,
                      mainAxisSpacing: 12.0),
                  children: [
                    ...List.generate(
                      4,
                      (i) => ShimmerLoading(
                        child: ShimmeredSpace(
                          width: context.width,
                          height: context.height,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      NetworkStateEmpty<List<CheckPoint>>() => SizedBox(
          child: Text('ليس لديك بوابات مرتبطة بعد'),
        ),
      NetworkStateLoaded<List<CheckPoint>>() => Column(
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
              itemCount: state.res.length,
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: Responsive.isMobile(context) ? 2 : 4,
                  crossAxisSpacing: !Responsive.isMobile(context) ? 15 : 12,
                  mainAxisSpacing: 12.0),
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
                          state.res[i].checkPointname ?? '',
                          style: const TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
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
        ),
      NetworkStateError<List<CheckPoint>>() => Column(
          children: [
            Text(
              'ليس هناك اي بوابات مرتبطة مع هذا الحساب ',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      _ => SizedBox()
    };

    //  state.checkPoints.isEmpty
    //     ? state.isLoading
    //         ?
    //         : SizedBox(
    //             child: state.errorMessage != null && state.statusCode != null
    //                 ? SizedBox()
    //                 : ,
    //           )
    //     : ;
  }
}

// class ApiKeyConnection extends HookConsumerWidget {
//   const ApiKeyConnection({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final apiKey = useTextEditingController();
//     final securityKey = useTextEditingController();
//     final user = ref.watch(checkTokenProvider);
//     // ref.listen(checkTokenProvider, (p, n) {
//     //   if (n.isLoading == false && n.errorMessage == null) {
//     //     context.pop();
//     //   }
//     // });
//     // final api = useTextEditingController();
//     // final secret = useTextEditingController();
//     final securePassword = useState(true);
//     return Center(
//       child: SizedBox(
//         width: Responsive.mobileThreshold,
//         child: Padding(
//           padding: 16.8.allPadding,
//           child: SingleChildScrollView(
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 // SvgPicture.asset('assets/svg/masark.svg')
//                 //     .animate(delay: 500.milliseconds)
//                 //     .fade()
//                 //     .slideY(),
//                 // Text(
//                 //   'اهلا بك في مسارك',
//                 //   style: TextStyle(
//                 //     fontWeight: FontWeight.bold,
//                 //   ),
//                 // ).animate(delay: 500.milliseconds).fade().slideY(),
//                 24.hGap,
//                 Card(
//                   color: Colors.white,
//                   child: Padding(
//                     padding: 16.8.allPadding,
//                     child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Text(
//                               "ربط مع النظام الاساسي",
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             // IconButton(
//                             //   onPressed: () {
//                             //     showApi.value = !showApi.value;
//                             //   },
//                             //   icon: Icon(
//                             //     Iconsax.setting_2,
//                             //   ),
//                             // )
//                           ],
//                         ),
//                         24.hGap,
//                         Row(
//                           children: [
//                             Text(
//                               'مفتاح API',
//                               textAlign: TextAlign.start,
//                             ),
//                           ],
//                         )
//                             .animate(
//                               delay: 500.milliseconds,
//                             )
//                             .fade()
//                             .slideY(),
//                         8.hGap,
//                         TextFormField(
//                           controller: apiKey,
//                           decoration: InputDecoration(
//                             hintText: 'ادخل مفتاح API',
//                             // suffixIcon: Icon(
//                             //   Iconsax.message,
//                             // ),
//                             prefixIcon: Icon(
//                               Iconsax.message,
//                             ),
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(
//                                 12,
//                               ),
//                             ),
//                           ),
//                         ).animate(delay: 500.milliseconds).fade(),
//                         8.hGap,
//                         Row(
//                           children: [
//                             Text(
//                               'كلمة السر',
//                               textAlign: TextAlign.start,
//                             ),
//                           ],
//                         ).animate(delay: 500.milliseconds).fade().slideY(),
//                         8.hGap,
//                         TextFormField(
//                           controller: securityKey,
//                           obscureText: securePassword.value,
//                           decoration: InputDecoration(
//                             hintText: 'ادخل كلمة السر',
//                             suffixIcon: IconButton(
//                               onPressed: () {
//                                 securePassword.value = !securePassword.value;
//                               },
//                               icon: Icon(
//                                 securePassword.value
//                                     ? Iconsax.eye_slash
//                                     : Iconsax.eye,
//                               ),
//                             ),
//                             prefixIcon: Icon(
//                               Iconsax.lock,
//                             ),
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(
//                                 12,
//                               ),
//                             ),
//                           ),
//                         ).animate(delay: 500.milliseconds).fade(),
//                         // if (showApi.value) 16.hGap,
//                         // if (showApi.value)
//                         //   Row(
//                         //     children: [
//                         //       Text(
//                         //         'مفتاح API',
//                         //         textAlign: TextAlign.start,
//                         //       ),
//                         //     ],
//                         //   )
//                         //       .animate(delay: 500.milliseconds)
//                         //       .fade()
//                         //       .slideY(),
//                         // if (showApi.value) 8.hGap,
//                         // if (showApi.value)
//                         //   TextFormField(
//                         //     controller: api,
//                         //     obscureText: securePassword.value,
//                         //     decoration: InputDecoration(
//                         //       hintText: 'ادخل مفتاح API',
//                         //       suffixIcon: IconButton(
//                         //         onPressed: () {
//                         //           securePassword.value =
//                         //               !securePassword.value;
//                         //         },
//                         //         icon: Icon(
//                         //           securePassword.value
//                         //               ? Iconsax.eye_slash
//                         //               : Iconsax.eye,
//                         //         ),
//                         //       ),
//                         //       prefixIcon: Icon(
//                         //         Iconsax.lock,
//                         //       ),
//                         //       border: OutlineInputBorder(
//                         //         borderRadius: BorderRadius.circular(
//                         //           12,
//                         //         ),
//                         //       ),
//                         //     ),
//                         //   ).animate(delay: 500.milliseconds).fade(),
//                         // if (showApi.value) 16.hGap,
//                         // if (showApi.value)
//                         //   Row(
//                         //     children: [
//                         //       Text(
//                         //         'كلمة سر API',
//                         //         textAlign: TextAlign.start,
//                         //       ),
//                         //     ],
//                         //   )
//                         //       .animate(delay: 500.milliseconds)
//                         //       .fade()
//                         //       .slideY(),
//                         // if (showApi.value) 8.hGap,
//                         // if (showApi.value)
//                         //   TextFormField(
//                         //     controller: secret,
//                         //     obscureText: securePassword.value,
//                         //     decoration: InputDecoration(
//                         //       hintText: 'ادخل كلمة سر API',
//                         //       suffixIcon: IconButton(
//                         //         onPressed: () {
//                         //           securePassword.value =
//                         //               !securePassword.value;
//                         //         },
//                         //         icon: Icon(
//                         //           securePassword.value
//                         //               ? Iconsax.eye_slash
//                         //               : Iconsax.eye,
//                         //         ),
//                         //       ),
//                         //       prefixIcon: Icon(
//                         //         Iconsax.lock,
//                         //       ),
//                         //       border: OutlineInputBorder(
//                         //         borderRadius: BorderRadius.circular(
//                         //           12,
//                         //         ),
//                         //       ),
//                         //     ),
//                         //   ).animate(delay: 500.milliseconds).fade(),

//                         16.hGap,
//                         RawMaterialButton(
//                           fillColor: const Color(
//                             0xff13c56b,
//                           ),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(
//                               12,
//                             ),
//                           ),
//                           onPressed: () async {
//                             if (apiKey.text.isEmpty ||
//                                 securityKey.text.isEmpty) {
//                               // Navigator.of(context).pop();
//                             } else {
//                               var v = await ref
//                                   .read(checkTokenProvider.notifier)
//                                   .validate(
//                                     apiKey: apiKey.text,
//                                     passKey: securityKey.text,
//                                   );
//                               if (v == true) {
//                                 if (context.mounted) {
//                                   Navigator.of(context).pop();
//                                 }
//                               }
//                               // Navigator.of(context).pop(
//                               //     'token ${apiKey.text}:${securityKey.text}');
//                             }
//                           },
//                           child: Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: user.isLoading
//                                 ? CircularProgressIndicator.adaptive()
//                                 : Text(
//                                     'تسجيل ',
//                                   ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ).animate(delay: 500.milliseconds).scaleY().fade(),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
