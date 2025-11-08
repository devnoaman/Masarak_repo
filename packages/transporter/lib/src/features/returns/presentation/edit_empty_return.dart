import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shared/shared.dart';
import 'package:sub_app_core/generator/annotations/generate_route.dart';
import 'package:transporter/src/features/returns/providers/edit_return_trip_provider.dart';
import 'package:transporter/src/features/works/components/suggestable_text_field.dart';

@GenerateRoute(
  routeName: "Edit empty return",
  routePath: "/edit-empty-return",
)
class EditEmptyReturn extends HookConsumerWidget {
  const EditEmptyReturn({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ReturnTripModel? trip = GoRouterState.of(context).extra as ReturnTripModel?;
    var printingAgent = useState<Map<String, dynamic>>({});
    var driver = useState<Map<String, dynamic>>({});
    var truck = useState<Map<String, dynamic>>({});
    var berthId = useState<Map<String, dynamic>>({});
    final containerSize = useState<String?>(null);
    final secondContainerSize = useState<String?>(null);

    final containerNumberController = useTextEditingController();
    final secondContainerNumberController = useTextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'تعديل رحلة عودة فارغة',
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'المخول بالطباعة',
                          style: context.textTheme.bodyLarge!.copyWith(
                            color: Colors.black45,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SuggestableTextField(
                          label: 'اختر مخول طباعة',
                          keyToView: 'name',
                          initialValue: {
                            "id": trip?.printingAgent?.id,
                            "name": trip?.printingAgent?.name,
                          },
                          onSelected: (value) {
                            print('selected pinting agent : $value');
                            printingAgent.value = value;
                          },
                          style: SuggestableTextFieldStyle.fullScreen,
                          showCheckbox: true,

                          prob: LinkProb(
                            modelName: '/search-printing-agents',
                            fieldName: '',
                          ),
                        ),
                      ],
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
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'اختر الرصيف',
                                style: context.textTheme.bodyLarge!.copyWith(
                                  color: Colors.black45,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SuggestableTextField(
                                label: 'اختر مخول الرصيف',
                                keyToView: 'id',
                                initialValue: {
                                  "id": trip?.berth?.id,
                                  "name": trip?.berth?.berthName,
                                },
                                onSelected: (value) {
                                  print('selected berthId : $value');
                                  berthId.value = value;
                                },
                                style: SuggestableTextFieldStyle.fullScreen,
                                showCheckbox: true,

                                prob: LinkProb(
                                  modelName: '/search-berths',
                                  fieldName: '',
                                ),
                              ),
                            ],
                          ),
                          16.hGap,
                          const Text(
                            'رقم الحاوية',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          myTexxtField(
                            'رقم الحاوية',
                            containerNumberController,
                          ),
                          16.hGap,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'حجم الحاوية',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                              DropdownButton<String>(
                                value: containerSize.value,
                                hint: Text('اختر حجم الحاوية'),
                                items: const [
                                  DropdownMenuItem(
                                    value: '20',
                                    child: Text('20'),
                                  ),
                                  DropdownMenuItem(
                                    value: '40',
                                    child: Text('40'),
                                  ),
                                ],
                                onChanged: (value) {
                                  containerSize.value = value!;
                                },
                              ),
                            ],
                          ),
                        ],
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
                          const Text(
                            'رقم الحاوية الثانية (اختياري)',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),

                          myTexxtField(
                            'رقم الحاوية الثانية',
                            secondContainerNumberController,
                          ),
                          16.hGap,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'حجم الحاوية',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                              DropdownButton<String>(
                                value: secondContainerSize.value,
                                hint: const Text('اختر حجم الحاوية'),
                                items: const [
                                  DropdownMenuItem(
                                    value: '20',
                                    child: Text('20'),
                                  ),
                                  DropdownMenuItem(
                                    value: '40',
                                    child: Text('40'),
                                  ),
                                ],
                                onChanged: (value) {
                                  secondContainerSize.value = value;
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'اختر سائق',
                          style: context.textTheme.bodyLarge!.copyWith(
                            color: Colors.black45,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SuggestableTextField(
                          label: 'البحث باسم السائق',
                          keyToView: 'name',
                          initialValue: {},
                          onSelected: (value) {
                            print('selected driver : $value');
                            driver.value = value;
                          },
                          style: SuggestableTextFieldStyle.fullScreen,
                          showCheckbox: true,

                          prob: LinkProb(
                            modelName: '/search-drivers',
                            fieldName: '',
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'اختر شاحنة',
                          style: context.textTheme.bodyLarge!.copyWith(
                            color: Colors.black45,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SuggestableTextField(
                          label: 'البحث برقم الشاحنة',
                          keyToView: 'plate',
                          initialValue: {},
                          onSelected: (value) {
                            print('selected truck : $value');
                            truck.value = value;
                          },
                          style: SuggestableTextFieldStyle.fullScreen,
                          showCheckbox: true,

                          prob: LinkProb(
                            modelName: '/search-trucks',
                            fieldName: '1000',
                          ),
                        ),
                      ],
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
                      '- يرجى الانتباه أثناء إدخال أرقام الحاويات والتأكد منها جيدًا قبل الإرسال.\n'
                      '- ستظل هذه الصلاحية متاحة لمدة أسبوعين فقط، وبعدها سيتم إنشاء جميع الرحلات الفارغة تلقائيًا.\n'
                      '- عند إنشاء رحلة عودة فارغة، لن يتم إرسالها تلقائيًا. يجب عليك الضغط يدويًا على "إطلاق رحلة العودة الفارغة".\n'
                      'يمكنك ربطها برحلة تحميل قبل الإرسال. ومع ذلك، بمجرد الإرسال، يُسمح بالتعديل فقط قبل أن وصول الرحلة إلى حالة "جاهز للدخول".',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                      ),
                    ),
                    const Text(
                      '- إذا تم ربط عودة الفارغ برحلة تحميل أخرى ثم تم إلغاء تلك الرحلة، فستُصبح متاحة مرة أخرى - ولكن لا يمكن استرداد المبلغ المدفوع.',
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
                    "berthid":
                        berthId.value['id'] ?? trip?.berth!.abellaId ?? '',
                    "containernumber": containerNumberController.text.isNotEmpty
                        ? containerNumberController.text
                        : (trip?.containerNumber ?? ''),
                    "containersize":
                        containerSize.value ?? (trip?.containerSize ?? ''),
                    "driver": driver.value.isNotEmpty
                        ? driver.value['id']
                        : (trip?.driver ?? ''),
                    "printingagent": printingAgent.value.isNotEmpty
                        ? printingAgent.value['id']
                        : (trip?.printingAgent?.id ?? 0),
                    "truck": truck.value.isNotEmpty
                        ? truck.value['id']
                        : (trip?.truck ?? ''),
                    "id": trip?.id ?? 0,
                  };

                  print(' بيانات الرحلة:');
                  data.forEach((key, value) {
                    print('➡️ $key: $value');
                  });
                  ref
                      .read(editReturnTripProvider.notifier)
                      .setInformation(
                        berthid:
                            berthId.value['id'] ?? trip?.berth!.abellaId ?? '',

                        containernumber:
                            containerNumberController.text.isNotEmpty
                            ? containerNumberController.text
                            : (trip?.containerNumber ?? ''),
                        containersize: containerSize.value != null
                            ? containerSize.value!
                            : (trip?.containerSize ?? ''),
                        driver: driver.value.isNotEmpty
                            ? driver.value['id']
                            : (trip?.driver ?? ''),
                        printingagent: printingAgent.value.isNotEmpty
                            ? printingAgent.value['id']
                            : trip?.printingAgent?.id ?? 0,
                        truck: truck.value.isNotEmpty
                            ? truck.value['id']
                            : (trip?.truck ?? ''),
                        id: trip!.id ?? 0,
                      );
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 45),
                  backgroundColor: context.theme.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: Text(
                  'ارسال البيانات',
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
                  minimumSize: Size(double.infinity, 45),
                  backgroundColor: context.theme.scaffoldBackgroundColor,
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

  TextField myTexxtField(String title, TextEditingController controller) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: title,
        hintStyle: TextStyle(color: Colors.black26),
        filled: true,
        fillColor: Colors.white,
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
    );
  }
}
