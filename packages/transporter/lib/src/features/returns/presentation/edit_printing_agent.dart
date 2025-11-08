import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared/shared.dart';
import 'package:sub_app_core/generator/annotations/generate_route.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:transporter/src/features/returns/providers/edit_printing_agent_provider.dart';
import 'package:transporter/src/features/returns/widgets/section_row.dart';
import 'package:transporter/src/features/works/components/suggestable_text_field.dart';

@GenerateRoute(
  routeName: "Edit printing agent",
  routePath: "/edit-printing-agent",
)
class EditPrintingAgent extends HookConsumerWidget {
  const EditPrintingAgent({super.key});

  void sendData() {}

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ReturnTripModel? trip = GoRouterState.of(context).extra as ReturnTripModel?;
    var printingAgent = useState<Map<String, dynamic>>({});
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'تعديل مخول الطباعة',
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
        child: Container(
          padding: 16.allPadding,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            spacing: 24,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'مخول الطباعة',
                    style: context.textTheme.bodyLarge!.copyWith(
                      color: Color(0xFF333333),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SuggestableTextField(
                    label: 'مخول الطباعة',
                    keyToView: 'name',
                    initialValue: {
                      "id": trip?.printingAgent?.id ?? '---',
                      "name": trip?.printingAgent?.name ?? '--',
                    },
                    onSelected: (value) {
                      print('selected printing agent : $value');

                      printingAgent.value = value;
                    },
                    style: SuggestableTextFieldStyle.fullScreen,
                    showCheckbox: true,
                    prob: LinkProb(
                      modelName: '/search-printing-agents',
                      fieldName: '',
                    ),
                    onSave: (selectedItem) async {
                      final result = await ref
                          .read(editPrintingAgentProvider.notifier)
                          .setInformation(
                            tripId: trip?.tripName,
                            printingAgentId: selectedItem['id'],
                          );
                      if (result) {
                        printingAgent.value = selectedItem;

                        Navigator.of(context).pop();
                      }
                    },
                  ),
                ],
              ),
              SectionRow(
                title: 'رقم الهاتف',
                value:
                    printingAgent.value['mobile'] ??
                    trip?.printingAgent?.mobile ??
                    '---',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
