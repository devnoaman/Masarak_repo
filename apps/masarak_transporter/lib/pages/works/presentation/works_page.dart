// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:masarak_transporter/extentions.dart';

class WorksPage extends HookConsumerWidget {
  const WorksPage({super.key});
  static const String route = '/works';
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return RefreshIndicator.adaptive(
      onRefresh: () async {},
      child: ListView(
        children: [
          Padding(
            padding: 24.0.symetric,
            child: Text(
              'اعمالي',
              textAlign: TextAlign.start,
              style: context.textTheme.bodyLarge!.copyWith(
                fontWeight: FontWeight.bold,
                // color: Colors.white,
              ),
            ),
          ),
          WorksCard(),
          WorksCard(),
          WorksCard(),
        ],
      ),
    );
  }
}

class WorksCard extends StatelessWidget {
  const WorksCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      // padding: const EdgeInsets.all(8.0),
      padding: 24.8.symetric,
      child: RawMaterialButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),

        // decoration: BoxDecoration(
        //   color: Colors.white,
        //   borderRadius: BorderRadius.circular(
        //     12,
        //   ),
        // ),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: context.theme.primaryColor),
            // image: DecorationImage(
            // image: AssetImage(
            //   'assets/images/pattern.png',
            // ),
            // fit: BoxFit.cover,
            // opacity: .8,
            // ),
            color: context.theme.primaryColor.withOpacity(.06),
            borderRadius: BorderRadius.circular(12),
          ),
          clipBehavior: Clip.hardEdge,
          child: Column(
            children: [
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Container(
              //       // decoration: BoxDecoration(
              //       //   color: Colors.teal,
              //       //   borderRadius: BorderRadiusDirectional.only(
              //       //     bottomEnd: Radius.circular(
              //       //       12,
              //       //     ),
              //       //   ),
              //       // ),
              //       child: Padding(
              //         padding: 16.8.symetric,
              //         child: Text('رقم اذن التسليم: ${4563342}'),
              //       ),
              //     ),
              //     // Padding(
              //     //   padding: 16.0.symetric,
              //     //   child: Text(''),
              //     // ),
              //   ],
              // ),

              // Divider(),
              CardWorkRow(title: 'رقم اذن التسليم', value: '${4563342}'),
              CardWorkRow(title: 'وكيل التخليص', value: 'نعمان منذر'),
              CardWorkRow(title: 'العدد', value: '3'),
              CardWorkRow(title: 'الرصيف', value: 'رصيف ١١'),
              CardWorkRow(title: 'نوع العملية', value: 'استيراد'),
              CardWorkRow(title: 'النمط', value: 'حاويات'),
              Row(
                children: [
                  Spacer(),
                  // RawMaterialButton(
                  //   fillColor: context.theme.primaryColor,
                  //   focusElevation: 0,
                  //   constraints: BoxConstraints(),
                  //   highlightElevation: 0,
                  //   hoverElevation: 0,
                  //   padding: EdgeInsets.zero,
                  //   elevation: 0,
                  //   onPressed: () {},
                  //   shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadiusDirectional.only(
                  //       topStart: Radius.circular(
                  //         12,
                  //       ),
                  //     ),
                  //   ),
                  //   child: Padding(
                  //     padding: 16.8.symetric,
                  //     child: Text('4563342'),
                  //   ),
                  // ),
                  GestureDetector(
                    onTap: () {
                      print('pressed');
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: context.theme.primaryColor,
                        borderRadius: BorderRadiusDirectional.only(
                          topStart: Radius.circular(12),
                        ),
                      ),
                      child: Padding(
                        padding: 16.8.symetric,
                        child: Row(
                          children: [
                            Text('ربط السائقين'),
                            8.wGap,
                            Icon(Icons.arrow_forward),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardWorkRow extends StatelessWidget {
  const CardWorkRow({super.key, required this.title, required this.value});
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: 16.8.symetric,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text(title), Text(value)],
      ),
    );
  }
}
