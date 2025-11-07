import 'package:driver/src/features/checks/components/columned_text.dart';
import 'package:driver/src/features/checks/presentation/checks_view.dart';
import 'package:driver/src/features/home_view/model/mapdto.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shared/shared.dart';

class CheckWidget extends HookWidget {
  const CheckWidget({super.key, required this.check});
  final TripCheckPoint check;
  @override
  Widget build(BuildContext context) {
    final showDetails = useState(false);
    final isPending = check.exitTime == null;

    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            ListTile(
              title: Text(
                '${check.checkPoint}',
              ),
              subtitle: Text(
                '${check.name}',
              ),
              subtitleTextStyle: context.textTheme.labelLarge!.copyWith(
                color: Colors.black,
              ),
              titleTextStyle: context.textTheme.headlineSmall!.copyWith(
                color: Colors.black,
              ),
              trailing: Container(
                decoration: BoxDecoration(
                  color: context.theme.scaffoldBackgroundColor.darker(8),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  child: Text(
                    check.exitTime == null ? 'قيد الانتظار' : 'منجزة',
                    style: context.textTheme.bodyMedium!.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),

            Align(
              alignment: Alignment.centerRight,
              child: TextButton.icon(
                onPressed: () => showDetails.value = !showDetails.value,
                label: Text(
                  showDetails.value ? 'إخفاء' : 'التفاصيل',
                  style: context.textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: context.theme.scaffoldBackgroundColor,
                  ),
                ),
                icon: Icon(
                  showDetails.value
                      ? Iconsax.arrow_up_24
                      : Iconsax.arrow_down_14,
                  color: Colors.black,
                ),
              ),
            ),
            AnimatedCrossFade(
              firstChild: const SizedBox.shrink(),
              secondChild: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: isPending
                      ? Center(
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 300,
                                height: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      'https://t4.ftcdn.net/jpg/03/15/55/09/360_F_315550977_RDdTnzhBygR8GFLTiGLZadFIG4N2ZjHr.jpg',
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: context.theme.primaryColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                                onPressed: () {
                                  final dto = Mapdto(
                                    checkpointname: check.checkPoint!,
                                  );
                                  context.push('/map-screen', extra: dto);
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      'الخارطة',
                                      style: context.textTheme.bodyLarge!
                                          .copyWith(color: Colors.black),
                                    ),
                                    SizedBox(width: 5),
                                    Icon(Iconsax.send_2, size: 20),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      : Column(
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
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'الملاحظات',
                                    style: context.textTheme.labelMedium!
                                        .copyWith(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black,
                                        ),
                                  ),
                                  Text(
                                    check.notes ?? '---',
                                    style: context.textTheme.headlineSmall!
                                        .copyWith(
                                          color: Colors.black,
                                        ),
                                  ),
                                ],
                              ),

                              // ColumnedText(
                              //   title: 'الملاحظات',
                              //   value: check.notes ?? '---',
                              // ),
                            ),
                          ],
                        ),
                ),
              ),
              crossFadeState: showDetails.value
                  ? CrossFadeState.showSecond
                  : CrossFadeState.showFirst,
              duration: const Duration(milliseconds: 300),
            ),
          ],
        ),
      ),
    );
  }
}
