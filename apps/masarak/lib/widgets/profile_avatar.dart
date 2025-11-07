import 'package:flutter/material.dart';
import 'package:masarak/extentions.dart';
import 'package:masarak/models/user_model/user_model.dart';

class ProfileAvatar extends StatelessWidget {
  /// <i class="material-icons-round md-36">memory</i> &#x2014; material icon named "memory" (round).
  const ProfileAvatar({
    super.key,
    required this.infoState,
    this.radius,
  });

  final UserModel? infoState;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: infoState?.fullName ?? UniqueKey(),
      child: CircleAvatar(
        radius: radius ?? 34,
        child: Text(
          infoState?.fullName?[0] ?? '',
          style: context.textTheme.bodyLarge!.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
