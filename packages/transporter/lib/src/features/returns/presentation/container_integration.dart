import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shared/shared.dart';
import 'package:sub_app_core/generator/annotations/generate_route.dart';
import 'package:transporter/src/features/returns/providers/merge_containers_provider.dart';
import 'package:transporter/src/features/returns/widgets/section_row.dart';
import 'package:transporter/src/features/works/components/suggestable_text_field.dart';

@GenerateRoute(
  routeName: "Container Integration",
  routePath: "/container-integration",
)
class ContainerIntegration extends HookConsumerWidget {
  const ContainerIntegration({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var state = ref.watch(mergeContainersProvider);
    var secondContainer = useState<Map<String, dynamic>>({});
    final formkey = GlobalKey<FormState>();
    ReturnTripModel? trip = GoRouterState.of(context).extra as ReturnTripModel?;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'دمج الحاويات',
          style: context.textTheme.bodyLarge!.copyWith(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: 16.allPadding,
          child: Column(
            children: [
              Container(
                padding: 16.allPadding,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 16,
                  children: [
                    Text(
                      'اختر حاوية',
                      style: context.textTheme.bodyLarge!.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Container(
                      padding: 16.allPadding,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xFFD4DCE7),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SectionRow(
                            title: 'رقم الحاوية',
                            value: trip!.containerNumber ?? '---',
                          ),
                          SectionRow(
                            title: 'حجم الحاوية',
                            value: trip!.containerSize ?? '---',
                          ),
                          SectionRow(
                            title: 'الرصيف',
                            value: trip.berth!.berthName ?? '---',
                          ),

                          16.hGap,
                        ],
                      ),
                    ),
                    Text(
                      'ابحث عن حاويات أخرى مقاس ${trip.containerSize} قدمًا من نفس الرصيف.',
                    ),
                    SuggestableTextField(
                      label: 'البحث عن حاويات اخرى',
                      keyToView: 'container_number',
                      initialValue: {},
                      suggestionBuilder: (value, base) {
                        var data = JobRequest.fromJson(value);
                        return base(
                          ListTile(
                            title: Text(
                              '${data.name}',
                              style: context.textTheme.bodyLarge!.copyWith(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                            subtitle: Text(
                              '${data.name}',
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
                        secondContainer.value = value;
                      },
                      style: SuggestableTextFieldStyle.fullScreen,
                      showCheckbox: true,

                      queryParameters: {
                        "first_container_id": trip.id,
                        "load_av": true,
                      },
                      prob: LinkProb(
                        modelName: '/search-return-merge-containers',
                        fieldName: '12',
                      ),
                    ),
                  ],
                ),
              ),

              16.hGap,
              Container(
                padding: 16.allPadding,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  spacing: 12,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Iconsax.danger5,
                          color: Colors.orange,
                          size: 22,
                        ),
                        const SizedBox(width: 8),
                        const Text(
                          'ملاحظات مهمة',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      '- تأكد من أن الحاويتين من نفس الرصيف ولم يتم ارسالهما.\n'
                      '- بمجرد الدمج لا يمكن فصل الحاويتين مرة أخرى.',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                      ),
                    ),
                    const Text(
                      '- لا يُسمح باسترداد المبلغ بمجرد ربط الرحلة المدمجة أو إرسالها.',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
              20.hGap,
              ElevatedButton(
                onPressed: () {
                  final data = {
                    'jobRequest': trip.jobRequest,
                    'containerNumber': trip.containerNumber!,
                    'secondContainerNumber': trip.secondContainerNumber,
                  };
                  print(' بيانات الرحلة:');
                  data.forEach((key, value) {
                    print('➡️ $key: $value');
                  });
                  ref
                      .read(mergeContainersProvider.notifier)
                      .setInformation(
                        jobRequest: trip.jobRequest,
                        containerNumber: trip.containerNumber!,
                        secondContainerNumber:
                            secondContainer.value['container_number'],
                      );
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                  backgroundColor: context.theme.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: Text(
                  'اتمام عملية الدمج',
                  style: context.textTheme.bodyLarge!.copyWith(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              5.hGap,
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                  backgroundColor: context.theme.scaffoldBackgroundColor,
                  foregroundColor: context.theme.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                    side: BorderSide(
                      color: context.theme.primaryColor,
                      width: 1,
                    ),
                  ),
                ),

                child: Text(
                  'الغاء',
                  style: context.textTheme.bodyLarge!.copyWith(
                    color: context.theme.primaryColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
