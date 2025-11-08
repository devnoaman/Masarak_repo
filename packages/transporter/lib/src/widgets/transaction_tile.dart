// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

class TransactionTile extends StatelessWidget {
  const TransactionTile({
    super.key,
    // required this.value,
    // required this.title,
    this.index,
    // this.subTitle,
    required this.data,
  });
  // final int value;
  final int? index;
  // final String title;
  // final String? subTitle;
  final TransactionData data;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: 16.4.symetric,
      child: ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(20),
        child: Material(
          child: ListTile(
            tileColor: Colors.white,
            title: Text(
              data.meta?.tripName ?? '-',
              style: context.textTheme.headlineSmall!.copyWith(
                color: context.theme.scaffoldBackgroundColor,
                fontSize: 28,
                fontWeight: FontWeight.w400,
              ),
            ),
            subtitle: Column(
              children: [
                Text(
                  data.meta?.name ?? '-',
                  style: context.textTheme.bodyLarge!.copyWith(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  data.meta?.description ?? '-',
                  style: context.textTheme.bodyLarge!.copyWith(
                    color: Color(0xFF333333),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            trailing: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.start,

              children: [
                Text(
                  data.amount ?? '',
                  // style: ,
                ),
                // Expanded(
                //   child: Text(
                //     // data.amount ?? '',
                //     // style: ,
                //     data.createdAt!.toIso8601String(),
                //     maxLines: 2,
                //     overflow: TextOverflow.ellipsis,
                //     textAlign: TextAlign.start,
                //   ),
                // ),
                Text(
                  data.createdAt == null
                      ? '-'
                      // : data.createdAt!.ymdDate
                      : data.createdAt!.ymdDate,
                  style: context.textTheme.bodySmall,
                  textAlign: TextAlign.end,
                ),
                Expanded(
                  child: Text(
                    data.createdAt == null ? '' : data.createdAt!.hms,
                    style: context.textTheme.bodySmall,
                  ),
                ),
              ],
            ),
            leadingAndTrailingTextStyle: context.textTheme.bodyLarge!.copyWith(
              fontWeight: FontWeight.bold,
              color: (data.type == "withdraw" ? Colors.red : Colors.green),
            ),
            // leading: Container(
            //   width: 45,
            //   height: 45,
            //   decoration: BoxDecoration(
            //     // color: (value.isNegative ? Colors.red : Colors.green).withOpacity(
            //     //   .1,
            //     // ),
            //     borderRadius: BorderRadius.circular(8),
            //   ),
            //   child: Center(
            //     child: Icon(
            //       data.type == "withdraw"
            //           ? Iconsax.money_send
            //           : Iconsax.money_recive,
            //       color: (data.type == "withdraw" ? Colors.red : Colors.green),
            //     ),
            //   ),
            // ),
          ),
        ),
      ),
    );
  }
}

// class WalletInfo extends StatelessWidget {
//   const WalletInfo({
//     super.key,
//     required this.withdrawBalance,
//     required this.depositBalance,
//     required this.currentBalance,
//   });
//   final int withdrawBalance;
//   final int depositBalance;
//   final int currentBalance;
//   @override
//   Widget build(BuildContext context) {
//     print(((withdrawBalance / currentBalance) * 100));
//     return Container(
//       margin: 16.0.symetric,
//       decoration: BoxDecoration(
//         borderRadius: const BorderRadius.all(Radius.circular(24.0)),
//         // image: DecorationImage(
//         //   // image: AssetImage('assets/images/pattern.png'),
//         //   fit: BoxFit.cover,
//         // ),
//         color: context.theme.primaryColor.withAlpha(30),
//         // color: Color(0xff63D4B9).withAlpha(75),
//         // color: color ?? cardBackgroundColor,
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(24.0),
//         child: Row(
//           children: [
//             Expanded(
//               // flex: 2,
//               child: Container(
//                 // color: Colors.red,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     OperationWidget(
//                       title: 'الرصيد المتبقي',
//                       balance: depositBalance + withdrawBalance,
//                       color: Colors.white,
//                     ),
//                     OperationWidget(
//                       title: 'الرصيد المودع',
//                       balance: depositBalance,
//                       color: Colors.green,
//                     ),
//                     OperationWidget(
//                       title: 'الرصيد المسحوب',
//                       balance: withdrawBalance,
//                       color: Colors.red,
//                     ),
//                     // OperationWidget(),
//                     // OperationWidget(),
//                   ],
//                 ),
//               ),
//             ),
//             SizedBox(
//               // height: cnt.maxHeight,
//               height: context.width * .35,
//               width: context.width * .35,
//               // color: Colors.red,
//               child: Stack(
//                 alignment: Alignment.center,
//                 children: [
//                   Positioned.fill(
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: CircularProgressIndicator(
//                         backgroundColor: context.theme.canvasColor,
//                         value: (1 - (depositBalance / currentBalance)),
//                         strokeWidth: 12,
//                         color: Colors.green,
//                         strokeCap: StrokeCap.round,
//                       ),
//                     ),
//                   ),
//                   Positioned(
//                     top: 26,
//                     left: 26,
//                     right: 26,
//                     bottom: 26,
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: CircularProgressIndicator(
//                         value: (1 - (withdrawBalance / currentBalance)),
//                         backgroundColor: context.theme.canvasColor,
//                         strokeWidth: 12,
//                         color: Colors.red,
//                         strokeCap: StrokeCap.round,
//                       ),
//                     ),
//                   ),
//                   // Positioned.fill(
//                   //   child: Container(
//                   //     color: Colors.red,
//                   //     // width: constraints.maxHeight,
//                   //     // height: constraints.maxHeight,
//                   //     // child: CircularProgressIndicator(
//                   //     //   value: .7,
//                   //     //   strokeWidth: constraints.maxWidth * .2,
//                   //     // ),
//                   //   ),
//                   // ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class OperationWidget extends StatelessWidget {
//   const OperationWidget({
//     super.key,
//     required this.title,
//     required this.balance,
//     this.color,
//   });
//   final String title;
//   final Color? color;

//   final int balance;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: 0.8.symetric,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             title,
//             style: context.textTheme.labelLarge!.copyWith(
//               fontWeight: FontWeight.bold,
//               color: Colors.white,
//             ),
//           ),
//           Text(
//             balance.toFormatedPrice,
//             style: context.textTheme.headlineSmall!.copyWith(
//               fontWeight: FontWeight.bold,
//               color: color,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
