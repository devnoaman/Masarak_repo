// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shared/shared.dart';
import 'package:transporter/src/features/works/providers/update_unique_identifier.dart';

class EditUniqueCustomIdentifier extends HookConsumerWidget {
  const EditUniqueCustomIdentifier({
    super.key,
    this.tripUid,
  });
  final String? tripUid;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var cnt = useTextEditingController();
    var isLoading = useState(false);
    ref.watch(updateUniqueIdentifierProvider);
    var ntf = ref.read(updateUniqueIdentifierProvider.notifier);
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: context.width,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                8.hGap,
                Text(
                  'ادخل الرقم الجمركي الموحد',
                  style: context.textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                8.hGap,
                //
                TextFormField(
                  controller: cnt,
                  autofocus: true,
                  textInputAction: TextInputAction.done,

                  style: context.textTheme.bodyLarge!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                  ),
                  onFieldSubmitted: (newValue) async {
                    // Navigator.of(context).pop(newValue);
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
                    fillColor: context.theme.primaryColor.withAlpha(
                      20,
                    ),
                    hintText: 'ادخل الرقم الجديد',
                    hintStyle: context.textTheme.bodyLarge!.copyWith(
                      color: Colors.white70,
                      fontWeight: FontWeight.w900,
                    ),
                    contentPadding: EdgeInsets.all(16),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: isLoading.value
                          ? SizedBox(
                              width: 45,
                              height: 45,
                              child: Center(
                                child: CircularProgressIndicator.adaptive(
                                  backgroundColor: Colors.white,
                                ),
                              ),
                            )
                          : SizedBox(
                              width: 45,
                              height: 45,
                              child: Center(
                                child: IconButton.filled(
                                  style: ButtonStyle(
                                    backgroundColor: WidgetStatePropertyAll(
                                      context.theme.primaryColor,
                                    ),
                                  ),
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
                                  icon: Icon(
                                    Iconsax.tick_circle,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                    ),

                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        45,
                      ),
                      borderSide: BorderSide(color: context.theme.primaryColor),
                    ),
                  ),
                ),
                8.hGap,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
