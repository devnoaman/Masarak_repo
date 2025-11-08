// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared/shared.dart';
import 'package:transporter/src/features/returns/widgets/section_row.dart';
import 'package:transporter/src/features/works/providers/update_unique_identifier.dart';

class EditUniqueCustomIdentifier extends HookConsumerWidget {
  const EditUniqueCustomIdentifier({
    super.key,
    required this.trip,
    this.tripUid,
  });
  final ConnectedTrip trip;
  final String? tripUid;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var cnt = useTextEditingController();
    var isLoading = useState(false);
    ref.watch(updateUniqueIdentifierProvider);
    var ntf = ref.read(updateUniqueIdentifierProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'تعديل الرقم الجمركي',
          style: context.textTheme.bodyLarge!.copyWith(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: 15.hPadding,
          child: Container(
            padding: 16.16.symetric,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Column(
              spacing: 24,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: 16.allPadding,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Color(0xFFD4DCE7),
                  ),
                  child: SectionRow(
                    title: 'الرقم الجمركي',
                    value: trip.uniqueIdentifierCustomsNumber!,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ادخل الرقم الجمركي الموحد الجديد',
                      style: context.textTheme.bodyLarge!.copyWith(
                        color: Colors.black45,
                        fontWeight: FontWeight.w400,
                      ),
                    ),

                    TextFormField(
                      controller: cnt,
                      autofocus: true,
                      textInputAction: TextInputAction.done,

                      style: context.textTheme.bodyLarge!.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                      ),
                      onFieldSubmitted: (newValue) async {
                        // Navigator.of(condtext).pop(newValue);
                        isLoading.value = true;
                        var st = await ntf.setIdentifier(
                          tripUid: tripUid!,
                          uniqueIdentifierNumber: cnt.text,
                        );
                        if (st) {
                          Navigator.of(context).pop(cnt.text);
                        } else {
                          isLoading.value = false;
                        }
                      },
                      decoration: InputDecoration(
                        hintText: 'ادخل الرقم الجديد',
                        hintStyle: context.textTheme.bodyLarge!.copyWith(
                          color: Colors.black38,
                          fontWeight: FontWeight.w400,
                        ),
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

                        contentPadding: 16.19.symetric,

                        // suffixIcon: Padding(
                        //   padding: const EdgeInsets.all(8.0),
                        //   child: isLoading.value
                        //       ? SizedBox(
                        //           width: 45,
                        //           height: 45,
                        //           child: Center(
                        //             child: CircularProgressIndicator.adaptive(
                        //               backgroundColor: Colors.white,
                        //             ),
                        //           ),
                        //         )
                        //       : SizedBox(
                        //           width: 45,
                        //           height: 45,
                        //           child: Center(
                        //             child: IconButton.filled(
                        //               style: ButtonStyle(
                        //                 backgroundColor: WidgetStatePropertyAll(
                        //                   context.theme.primaryColor,
                        //                 ),
                        //               ),
                        //               onPressed: () async {
                        //                 isLoading.value = true;
                        //                 // ntf.set(
                        //                 //   tripUid: tripUid!,
                        //                 //   uniqueIdentifierNumber: cnt.text,
                        //                 // );
                        //                 var st = await ntf.setIdentifier(
                        //                   tripUid: tripUid!,
                        //                   uniqueIdentifierNumber: cnt.text,
                        //                 );
                        //                 if (st) {
                        //                   Navigator.of(context).pop(cnt.text);
                        //                 } else {
                        //                   isLoading.value = false;
                        //                 }
                        //                 // Navigator.of(context).pop(cnt.text);
                        //               },
                        //               icon: Icon(
                        //                 Iconsax.tick_circle,
                        //                 color: Colors.white,
                        //               ),
                        //             ),
                        //           ),
                        //         ),
                        // ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            20,
                          ),

                          borderSide: BorderSide(
                            width: 1.5,
                            color: Colors.black38,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () async {
                    isLoading.value = true;
                    // ntf.set(
                    //   tripUid: tripUid!,
                    //   uniqueIdentifierNumber: cnt.text,
                    // );
                    var st = await ntf.setIdentifier(
                      tripUid: tripUid!,
                      uniqueIdentifierNumber: cnt.text,
                    );
                    if (st) {
                      Navigator.of(context).pop(cnt.text);
                    } else {
                      isLoading.value = false;
                    }
                    // Navigator.of(context).pop(cnt.text);
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 45),
                    backgroundColor: context.theme.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: isLoading.value
                      ? Center(
                          child: CircularProgressIndicator.adaptive(
                            backgroundColor: Colors.white,
                          ),
                        )
                      : Text(
                          'حفظ التغيير',
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
        ),
      ),
    );
  }
}
