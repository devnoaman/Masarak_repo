// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:masarak/extentions.dart';
import 'package:masarak/models/user_model/user_model.dart';
import 'package:masarak/providers/current_time_provider.dart';
import 'package:masarak/responsive.dart';
import 'package:masarak/widgets/loader/shimmered_widget.dart';
import 'package:masarak/widgets/profile_avatar.dart';
import 'package:masarak/widgets/shimmer_loading.dart';

class ProfileHeader extends ConsumerWidget {
  const ProfileHeader({
    super.key,
    this.infoState,
    this.onPressed,
    // required this.currentTime,
  });

  final UserModel? infoState;
  final VoidCallback? onPressed;

  // final AsyncValue<DateTime?> currentTime;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var currentTime = ref.watch(currentTimeProvider);
    // var loader = ShimmerWrapper.loadingOf(context);

    var profileData = SizedBox(
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(
          12,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  ShimmerLoading(
                    loader: CircleAvatar(
                      radius: 34,
                    ),
                    child: ProfileAvatar(
                      infoState: infoState,
                    ),
                  ),
                  8.wGap,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ShimmerLoading(
                          loader: ShimmeredSpace(
                            width: context.width * .3,
                            height: 20,
                          ),
                          child: currentTime.maybeWhen(
                            orElse: () => Text('مرحبا'),
                            data: (dateTime) => Text(
                              dateTime == null
                                  ? ''
                                  : (dateTime.hour >= 12
                                      ? 'مساء الخير '
                                      : 'صباح الخير'),
                            ),
                          ),
                        ),
                        ShimmerLoading(
                          loader: ShimmeredSpace(
                            width: context.width * .2,
                            height: 10,
                          ),
                          child: Text(
                            infoState?.fullName ?? '',
                            style: context.textTheme.bodyLarge!.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton.filled(
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) => RolesViewer(
                          roles: infoState?.roles,
                        ),
                      );
                    },
                    icon: Icon(
                      Iconsax.shield,
                    ),
                  )
                ],
              ),
              Divider()
            ],
          ),
        ),
      ),
    );
    return SizedBox(
      child: (!Responsive.isDesktop(context)) ? profileData : null,
    );
  }
}

class RolesViewer extends StatelessWidget {
  const RolesViewer({
    super.key,
    List<String>? roles,
  }) : _roles = roles;
  final List<String>? _roles;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: 16.allPadding,
      children: [
        Padding(
          padding: 16.0.symetric,
          child: Text('تصفح الصلاحيات الخاصة بك '),
        ),
        16.hGap,
        Divider(),
        ...?_roles?.map(
          (e) => ListTile(
            leading: IconButton.filled(
              onPressed: null,
              // color: context.theme.primaryColor,
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
                  context.theme.primaryColor,
                ),
                foregroundColor: WidgetStatePropertyAll(
                  Colors.white,
                ),
              ),
              icon: Icon(
                Iconsax.shield,
              ),
            ),
            title: Text(
              e,
            ),
          ),
        ),
      ],
    );
  }
}
