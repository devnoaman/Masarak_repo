import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared/shared.dart';

class PlateNumber extends StatelessWidget {
  const PlateNumber({super.key, required this.plateNumber, this.color});

  final String plateNumber;
  final Color? color;
  isKurdistan(String plate) {
    var reg = RegExp(r'^(21|22|23|24)[A-Z]\d+$');
    print('plate${reg.hasMatch(plate)}');
    return reg.hasMatch(plate);
  }

  isIraq2024(String plate) {
    var reg = RegExp(r'^(1[1-9]|2[5-9])[A-Z]\d+$');
    print('plate${reg.hasMatch(plate)}');
    return reg.hasMatch(plate);
  }

  isIraq2008(String plate) {
    var reg = RegExp(
      r'^\s*([a-zA-Z\u0621-\u064A]\s*[0-9]|[0-9]\s*[a-zA-Z\u0621-\u064A])\s*$',
    );
    var regEnd = RegExp(r'^\d+\s*[a-zA-Z\u0621-\u064A]\s*$');
    var hasMatch = reg.hasMatch(plate) || regEnd.hasMatch(plate);
    return hasMatch;
  }

  @override
  Widget build(BuildContext context) {
    isKurdistan(plateNumber);
    isIraq2008(plateNumber);
    return Directionality(
      textDirection: TextDirection.ltr,
      child: isKurdistan(plateNumber)
          ? KurdistanPlate(plateNumber: plateNumber, color: color)
          : isIraq2024(plateNumber)
          ? Iraq2024Plate(plateNumber: plateNumber, color: color)
          : isIraq2008(plateNumber.trim())
          ? Iraq2008Plate(plateNumber: plateNumber, color: color)
          : Row(
              children: [
                DecoratedBox(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: context.textTheme.bodyLarge!.color ?? Colors.black,
                    ),
                    borderRadius: 12.cRadius,
                  ),
                  child: Padding(
                    padding: 8.4.allPadding,
                    child: Text(
                      plateNumber,
                      textDirection: TextDirection.ltr,
                      style: Theme.of(
                        context,
                      ).textTheme.titleMedium!.copyWith(color: color),
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}

class Iraq2008Plate extends HookConsumerWidget {
  const Iraq2008Plate({super.key, required this.plateNumber, this.color});
  final Color? color;

  final String plateNumber;
  String convertArabicToEnglish(String input) {
    // Define a map for transliteration
    Map<String, String> arabicToEnglish = {
      'ا': 'a', 'ب': 'b', 'ت': 't', 'ث': 'th', 'ج': 'j',
      'ح': 'h', 'خ': 'kh', 'د': 'd', 'ذ': 'dh', 'ر': 'r',
      'ز': 'z', 'س': 's', 'ش': 'sh', 'ص': 's', 'ض': 'd',
      'ط': 't', 'ظ': 'z', 'ع': 'a', 'غ': 'gh', 'ف': 'f',
      'ق': 'q', 'ك': 'k', 'ل': 'l', 'م': 'm', 'ن': 'n',
      'ه': 'h', 'و': 'w', 'ي': 'y',
      // Add more mappings as needed
    };

    // Initialize an empty string to build the converted text
    String converted = '';

    // Iterate over each character in the input string
    for (int i = 0; i < input.length; i++) {
      String char = input[i];

      // Check if the character exists in the map, if yes, append its English equivalent
      if (arabicToEnglish.containsKey(char)) {
        converted += arabicToEnglish[char]!;
      } else {
        // If the character is not in the map, just append it as is
        converted += char;
      }
    }

    return converted;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: 8.cRadius,
        ),
        child: Row(
          children: [
            SizedBox(
              height: 45,
              child: FittedBox(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text('I', style: Theme.of(context).textTheme.titleLarge),
                      Text('R', style: Theme.of(context).textTheme.titleLarge),
                      Text('A', style: Theme.of(context).textTheme.titleLarge),
                      Text('Q', style: Theme.of(context).textTheme.titleLarge),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              color: context.textTheme.bodyLarge!.color,
              width: 1,
              height: 45,
            ),
            Padding(
              padding: 16.0.symetric,
              child: Column(
                children: [
                  Text(
                    plateNumber,
                    textDirection: TextDirection.ltr,
                    style: Theme.of(
                      context,
                    ).textTheme.titleMedium!.copyWith(color: color),
                  ),
                  Text(
                    convertArabicToEnglish(plateNumber),
                    textDirection: TextDirection.ltr,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.normal,
                      color: color,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Iraq2024Plate extends StatelessWidget {
  const Iraq2024Plate({super.key, required this.plateNumber, this.color});

  final String plateNumber;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        border: Border.all(
          color: context.textTheme.bodyLarge!.color ?? Colors.black,
        ),
        borderRadius: 8.cRadius,
      ),
      child: Row(
        children: [
          SizedBox(
            height: 34,
            child: FittedBox(
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          'I',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        Text(
                          'R',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        Text(
                          'Q',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            // color: Colors.black,
            color: context.textTheme.bodyLarge!.color,

            width: 1,
            height: 34,
          ),
          // 8.wGap,
          Padding(
            padding: 16.0.symetric,
            child: Text(
              plateNumber,
              textAlign: TextAlign.center,
              style: Theme.of(
                context,
              ).textTheme.titleLarge!.copyWith(color: color),
            ),
          ),
        ],
      ),
    );
  }
}

class KurdistanPlate extends StatelessWidget {
  const KurdistanPlate({super.key, required this.plateNumber, this.color});

  final String plateNumber;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: context.textTheme.bodyLarge!.color ?? Colors.black,
        ),
        borderRadius: 8.cRadius,
      ),
      child: Row(
        children: [
          SizedBox(
            height: 45,
            child: FittedBox(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text('I', style: Theme.of(context).textTheme.titleLarge),
                    Text('R', style: Theme.of(context).textTheme.titleLarge),
                    Text('Q', style: Theme.of(context).textTheme.titleLarge),
                    Text('KR', style: Theme.of(context).textTheme.titleLarge),
                  ],
                ),
              ),
            ),
          ),
          Container(
            color: context.textTheme.bodyLarge!.color ?? Colors.black,
            width: 1,
            height: 45,
          ),
          // 8.wGap,
          Padding(
            padding: 16.0.symetric,
            child: Text(
              plateNumber,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
        ],
      ),
    );
  }
}
