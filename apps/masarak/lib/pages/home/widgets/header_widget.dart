import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:masarak/extentions.dart';
import 'package:masarak/models/network_state/network_state.dart';
import 'package:masarak/models/user_model/user_model.dart';
import 'package:masarak/pages/home/home_page.dart';
import 'package:masarak/pages/home/providers/user_info_provider.dart';
import 'package:masarak/pages/profile/presentation/profile_page.dart';
import 'package:masarak/responsive.dart';
import 'package:masarak/widgets/dialogs/logout_dialog.dart';
import 'package:masarak/widgets/profile_avatar.dart';
import 'package:masarak/widgets/shimmer_loading.dart';

class Header extends ConsumerWidget {
  const Header({
    super.key,
    // required this.scaffoldKey,
  });

  // final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var routeState = GoRouterState.of(context).fullPath;
    var infoState = ref.watch(userInfoProvider);

    return (!Responsive.isDesktop(context))
        ? SizedBox()
        : SizedBox(
            // color: Colors.red,
            height: 55,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (routeState != HomePage.route)
                  BackButton(
                    onPressed: () {
                      context.go(HomePage.route);
                    },
                  ),
                Spacer(),
                Tooltip(
                  message: 'تسجيل الخروج',
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxHeight: 45,
                      maxWidth: 45,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton.filled(
                        iconSize: 12,
                        padding: const EdgeInsets.all(8.0),
                        // onPressed: () {
                        //   AuthInfo.clearAll();
                        //   context.push(LoginPage.route);
                        // },
                        onPressed: () => LogoutDialog.show(context),
                        icon: Icon(
                          Iconsax.logout,
                          // size: 16,
                        ),
                      ),
                    ),
                  ),
                ),
                // CircleAvatar(
                //   // radius: 45,
                //   child: Text(
                //     'N',
                //   ),
                // ),
                Tooltip(
                  message: 'معلومات الحساب',
                  child: Padding(
                    padding: 0.4.symetric,
                    child: switch (infoState) {
                      NetworkStateLoading<UserModel>() => ShimmerWrapper(
                          isLoading: true,
                          child: ShimmerLoading(
                            child: CircleAvatar(
                              radius: 35,
                            ),
                          ),
                        ),
                      NetworkStateLoaded<UserModel>() => InkWell(
                          onTap: () {
                            context.push(
                              ProfilePage.route,
                            );
                          },
                          child: ProfileAvatar(
                            infoState: infoState.res, radius: 35,

                            // currentTime: currentTime,
                          ),
                        ),
                      NetworkStateError<UserModel>() => SizedBox(),
                      _ => SizedBox(),
                    },
                  ),
                ),
                // ProfileAvatar(infoState: infoState)
                // SvgPicture.asset(
                //   'assets/svg/masark.svg',
                //   width: 120,
                //   // height: 55,
                //   fit: BoxFit.fitWidth,
                //   color: context.theme.primaryColor,
                // )
              ],
            ),
            // child: Stack(
            //   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     if (!Responsive.isDesktop(context))
            //       Padding(
            //         padding: const EdgeInsets.only(right: 0),
            //         child: InkWell(
            //           onTap: () =>

            //               // ScaffoldMessenger.of(context).

            //               Scaffold.of(context).openDrawer(),
            //           child: const Padding(
            //             padding: EdgeInsets.all(3.0),
            //             child: Icon(
            //               Iconsax.menu,
            //               // color: Colors.grey,
            //               size: 25,
            //             ),
            //           ),
            //         ),
            //       ),
            //     if (!Responsive.isDesktop(context))
            //       Center(
            //         child: Padding(
            //           padding: const EdgeInsets.only(right: 0),
            //           child: SvgPicture.asset(
            //             'assets/svg/masark.svg',
            //             width: 120,
            //             // height: 55,
            //             fit: BoxFit.fitWidth,
            //             color: context.theme.primaryColor,
            //           ),
            //         ),
            //       ),

            //     // if (!Responsive.isMobile(context))
            //     //   Expanded(
            //     //     flex: 4,
            //     //     child: TextField(
            //     //       decoration: InputDecoration(
            //     //         filled: true,
            //     //         fillColor: cardBackgroundColor,
            //     //         enabledBorder: const OutlineInputBorder(
            //     //           borderSide: BorderSide(color: Colors.transparent),
            //     //         ),
            //     //         border: OutlineInputBorder(
            //     //           borderRadius: BorderRadius.circular(12.0),
            //     //         ),
            //     //         focusedBorder: OutlineInputBorder(
            //     //           borderRadius: BorderRadius.circular(12.0),
            //     //           borderSide: BorderSide(
            //     //             color: Theme.of(context).primaryColor,
            //     //           ),
            //     //         ),
            //     //         contentPadding: const EdgeInsets.symmetric(
            //     //           vertical: 5,
            //     //         ),
            //     //         hintText: 'Search',
            //     //       ),
            //     //     ),
            //     //   ),
            //   ],
            // ),
          );
  }
}
