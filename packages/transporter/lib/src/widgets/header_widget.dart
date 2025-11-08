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
      child: switch (me) {
        // Initial<UserModel, void>() => SizedBox(),

        // Loading<UserModel, void>() => SizedBox(),
        Loaded<UserModel, void>() => Padding(
          padding: 16.0.symetric,
          child: Material(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(20),
            ),
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                width: context.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.grey[300],
                        ),
                        16.wGap,
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'مرحباً',
                                style: context.textTheme.labelLarge,
                              ),
                              Text(
                                me.data.name ?? '',
                                style: context.textTheme.headlineLarge,
                              ),
                              8.hGap,
                            ],
                          ),
                        ),
                      ],
                    ),
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
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                        padding: 8.4.symetric,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            30,
                                          ),
                                          color:
                                              (me.data.roles != null &&
                                                  me.data.roles!.isNotEmpty &&
                                                  me.data.roles!.first.id ==
                                                      e.id)
                                              ? context.theme.primaryColor
                                              : context
                                                    .theme
                                                    .scaffoldBackgroundColor,
                                        ),
                                        child: Text(
                                          e.name ?? '----',
                                          style: context.textTheme.labelLarge!
                                              .copyWith(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ),
                                      8.wGap,
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
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
    );
  }
}
