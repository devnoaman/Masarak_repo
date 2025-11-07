import 'package:api_client/api_client.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shared/shared.dart';
import 'package:transporter/src/features/home/providers/account_provider.dart';

class Header extends HookConsumerWidget {
  const Header({
    super.key,
    // required this.scaffoldKey,
  });

  // final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var me = ref.watch(userProvider);
    return SizedBox(
      // color: Colors.red,
      // height: 55,
      child: switch (me) {
        // Initial<UserModel, void>() => SizedBox(),

        // Loading<UserModel, void>() => SizedBox(),
        Loaded<UserModel, void>() => Padding(
          padding: 16.0.symetric,
          child: Material(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(24),
            ),
            color: context.theme.primaryColor,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                width: context.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Spacer(),
                        CircleAvatar(
                          // radius: 45,
                          child: Text(me.data.name?[0] ?? ''),
                        ),
                        // SvgPicture.asset(
                        //   'assets/svg/masark.svg',
                        //   width: 120,
                        //   // height: 55,
                        //   fit: BoxFit.fitWidth,
                        //   color: context.theme.primaryColor,
                        // )
                        8.wGap,
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(me.data.name ?? ''),
                              Text(me.data.mobile ?? ''),
                            ],
                          ),
                        ),

                        ConstrainedBox(
                          constraints: BoxConstraints(
                            maxHeight: 45,
                            maxWidth: 45,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: IconButton.filled(
                              iconSize: 12,
                              padding: const EdgeInsets.all(8.0),
                              onPressed: () async {
                                // AuthInfo.clearAll();
                                // context.push(LoginPage.route);
                                await AuthManager.instance.logout(
                                  path: "/logout",
                                  decoder: (r) {},
                                );
                                context.push('/login');
                                // context.push(LoginPage.route);
                              },
                              icon: Icon(
                                Iconsax.logout,
                                // size: 16,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    if (me.data.roles != null && me.data.roles!.isNotEmpty)
                      Text('الصلاحيات'),
                    if (me.data.roles != null && me.data.roles!.isNotEmpty)
                      SizedBox(
                        width: context.width,
                        height: 45,
                        child: ListView(
                          scrollDirection: Axis.horizontal,

                          children: [
                            ...me.data.roles!.map(
                              (e) => Row(
                                children: [
                                  Container(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Container(
                                          width: 35,
                                          height: 35,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.white,
                                          ),
                                          child: Center(
                                            child: Icon(Iconsax.security),
                                          ),
                                        ),
                                        8.wGap,
                                        Text(
                                          e.name ?? '----',
                                        ),
                                      ],
                                    ),
                                  ),
                                  8.wGap,
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    // SizedBox(
                    //   width: context.width,
                    //   child: DefaultTabController(
                    //     length: me.data.roles?.length ?? 0,
                    //     child: TabBar(
                    //       isScrollable: true,
                    //       unselectedLabelColor: Colors.black,
                    //       labelColor: Colors.black,
                    //       onTap: null,
                    //       indicator: BoxDecoration(),
                    //       dividerHeight: 0,
                    //       tabs: me.data.roles!
                    //           .map(
                    //             (e) => Tab(
                    //               text: e.name ?? '----',
                    //             ),
                    //           )
                    //           .toList(),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
          ),
        ),

        _ => Text(
          me.toString(),
        ),
      },

      //  me.maybeWhen(
      //   data: (UserModel? data) {
      //     // return Text(data.toString());
      //     return;
      //   },
      //   orElse: () {
      //     return Text(me.error.toString());
      //   },
      // ),

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
