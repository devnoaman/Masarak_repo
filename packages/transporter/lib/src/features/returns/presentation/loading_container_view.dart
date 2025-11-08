import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared/shared.dart';
import 'package:sub_app_core/generator/annotations/generate_route.dart';
import 'package:transporter/src/features/returns/widgets/section_row.dart';
import 'package:transporter/src/features/works/components/suggestable_text_field.dart';

@GenerateRoute(
  routeName: "Loading container view",
  routePath: "/loading-container",
)
class LoadingContainerView extends HookConsumerWidget {
  const LoadingContainerView({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ReturnTripModel? trip = GoRouterState.of(context).extra as ReturnTripModel?;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'تحميل الرحلة ',
          style: context.textTheme.bodyLarge!.copyWith(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: 16.allPadding,
        child: Column(
          children: [
            Container(
              padding: 16.25.symetric,
              width: double.infinity,
              // height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Column(
                spacing: 20,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SectionRow(
                    title: 'رقم الحاوية المحملة حالياً',
                    value: trip!.containerNumber ?? '---',
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'امر التحميل',
                        style: context.textTheme.bodyLarge!.copyWith(
                          color: Color(0xFF333333),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SuggestableTextField(
                        label: 'اختر امر التحميل',
                        keyToView: 'name',

                        initialValue: null,
                        suggestionBuilder: (value, base) {
                          var jobRequest = JobRequest.fromJson(value);
                          return base(
                            ListTile(
                              title: Text(
                                '${jobRequest.name}',
                                style: context.textTheme.bodyLarge!.copyWith(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                              subtitle: Text(
                                '${jobRequest.orderNumber}',
                                style: context.textTheme.bodyLarge!.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          );
                        },
                        onSelected: (value) {
                          print('selected berth : $value');
                          // berth.value = value;
                        },
                        style: SuggestableTextFieldStyle.fullScreen,
                        showCheckbox: true,

                        prob: LinkProb(
                          modelName: '/get-job-requests',
                          fieldName: '',
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'الرقم الجمركي الموحد',
                        style: context.textTheme.bodyLarge!.copyWith(
                          color: Color(0xFF333333),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'الرقم الجمركي الموحد',
                          hintStyle: TextStyle(color: Colors.black26),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.black26),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: Colors.black26,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 45),
                backgroundColor: context.theme.primaryColor,
              ),
              child: Text(
                'حفظ',
                style: context.textTheme.bodyLarge!.copyWith(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
