import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:masarak/extentions.dart';
import 'package:masarak/models/network_state/network_state.dart';
import 'package:masarak/models/user_model/user_model.dart';
import 'package:masarak/pages/home/providers/user_info_provider.dart';
import 'package:masarak/pages/profile/widgets/profile_row.dart';
import 'package:masarak/responsive.dart';
import 'package:masarak/widgets/dialogs/logout_dialog.dart';
import 'package:masarak/widgets/profile_avatar.dart';

class ProfilePage extends HookConsumerWidget {
  const ProfilePage({super.key});
  static const String route = '/profile';
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var infoState = ref.watch(userInfoProvider);
    var scrollCnt = useScrollController();
    var backTop = useState(false);
    scrollCnt.addListener(() {
      // print(scrollCnt.offset);
      backTop.value = scrollCnt.offset > 400 ? true : false;
    });
    return Scaffold(
      floatingActionButton: AnimatedCrossFade(
        firstChild: SizedBox(),
        secondChild: Padding(
          padding: const EdgeInsets.all(16.0),
          child: FloatingActionButton(
            onPressed: () {
              scrollCnt.animateTo(
                0,
                duration: Durations.extralong1,
                curve: Curves.easeInOut,
              );
            },
            child: Icon(
              Icons.arrow_upward,
            ),
          ),
        ),
        crossFadeState: !backTop.value
            ? CrossFadeState.showFirst
            : CrossFadeState.showSecond,
        duration: Durations.long1,
      ),
      appBar: AppBar(
        forceMaterialTransparency: true,
        actions: [
          TextButton.icon(
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(
                Colors.red.withOpacity(
                  .1,
                ),
              ),
              foregroundColor: WidgetStatePropertyAll(
                Colors.red,
              ),
            ),
            onPressed: () => LogoutDialog.show(context),
            icon: Icon(
              Iconsax.logout,
            ),
            label: Text(
              'تسجيل الخروج',
            ),
          ),
          16.wGap,
        ],
      ),
      body: switch (infoState) {
        NetworkStateInitial<UserModel>() => SizedBox(),
        NetworkStateLoading<UserModel>() => SizedBox(),
        NetworkStateEmpty<UserModel>() => SizedBox(),
        NetworkStateLoaded<UserModel>() => Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: !Responsive.isMobile(context)
                    ? Responsive.mobileThreshold
                    : double.infinity,
              ),
              child: ListView(
                controller: scrollCnt,
                padding: 16.0.symetric,
                children: [
                  ProfileAvatar(
                    infoState: infoState.res,
                    radius: Responsive.isMobile(context)
                        ? context.width * .15
                        : 100,
                  ),
                  36.hGap,
                  Divider(),
                  24.hGap,
                  Row(
                    children: [
                      Expanded(
                        child: ProfileRow(
                          title: 'الاسم الاول',
                          value: infoState.res.firstName ?? '',
                        ),
                      ),
                      Expanded(
                        child: ProfileRow(
                          title: 'الاسم الاخير',
                          value: infoState.res.lastName ?? '',
                        ),
                      ),
                    ],
                  ),
                  ProfileRow(
                    title: 'البريد الالكتروني',
                    value: infoState.res.email ?? '',
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('الصلاحيات'),
                  ),
                  GridView.extent(
                    maxCrossAxisExtent: 350,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      ...?infoState.res.roles?.map((e) => Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: 12.cRadius,
                              side: BorderSide(
                                color: context.theme.primaryColor,
                              ),
                            ),
                            color: context.theme.scaffoldBackgroundColor,
                            elevation: 8,
                            shadowColor: Colors.grey.withOpacity(
                              .1,
                            ),
                            child: Padding(
                              padding: 8.16.symetric,
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: context.width.cRadius,
                                      color: context.theme.primaryColor
                                          .withOpacity(
                                        .1,
                                      ),
                                    ),
                                    // radius: ,
                                    child: Padding(
                                      padding: const EdgeInsets.all(18.0),
                                      child: Icon(
                                        Iconsax.shield,
                                        size: 45,
                                      ),
                                    ),
                                  ),
                                  16.hGap,
                                  Text(
                                    e,
                                  ),
                                ],
                              ),
                            ),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
        NetworkStateError<UserModel>() => SizedBox(),
      },
    );
  }
}
