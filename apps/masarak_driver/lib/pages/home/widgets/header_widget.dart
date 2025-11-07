import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';
import 'package:masarak_driver/pages/auth/presentation/login_page.dart';
import 'package:masarak_driver/responsive.dart';
import 'package:masarak_driver/services/storage/email_password_storage.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
    // required this.scaffoldKey,
  });

  // final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return (!Responsive.isDesktop(context))
        ? SizedBox()
        : SizedBox(
            // color: Colors.red,
            height: 55,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Spacer(),
                ConstrainedBox(
                  constraints: BoxConstraints(maxHeight: 45, maxWidth: 45),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton.filled(
                      iconSize: 12,
                      padding: const EdgeInsets.all(8.0),
                      onPressed: () {
                        AuthInfo.clearAll();
                        context.push(LoginPage.route);
                      },
                      icon: Icon(
                        Iconsax.logout,
                        // size: 16,
                      ),
                    ),
                  ),
                ),
                CircleAvatar(
                  // radius: 45,
                  child: Text('N'),
                ),
                // SvgPicture.asset(
                //   'assets/svg/masark.svg',
                //   width: 120,
                //   // height: 55,
                //   fit: BoxFit.fitWidth,
                //   color: context.theme.primaryColor,
                // )
              ],
            ),
            // child: Stack(
            //   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     if (!Responsive.isDesktop(context))
            //       Padding(
            //         padding: const EdgeInsets.only(right: 0),
            //         child: InkWell(
            //           onTap: () =>

            //               // ScaffoldMessenger.of(context).

            //               Scaffold.of(context).openDrawer(),
            //           child: const Padding(
            //             padding: EdgeInsets.all(3.0),
            //             child: Icon(
            //               Iconsax.menu,
            //               // color: Colors.grey,
            //               size: 25,
            //             ),
            //           ),
            //         ),
            //       ),
            //     if (!Responsive.isDesktop(context))
            //       Center(
            //         child: Padding(
            //           padding: const EdgeInsets.only(right: 0),
            //           child: SvgPicture.asset(
            //             'assets/svg/masark.svg',
            //             width: 120,
            //             // height: 55,
            //             fit: BoxFit.fitWidth,
            //             color: context.theme.primaryColor,
            //           ),
            //         ),
            //       ),

            //     // if (!Responsive.isMobile(context))
            //     //   Expanded(
            //     //     flex: 4,
            //     //     child: TextField(
            //     //       decoration: InputDecoration(
            //     //         filled: true,
            //     //         fillColor: cardBackgroundColor,
            //     //         enabledBorder: const OutlineInputBorder(
            //     //           borderSide: BorderSide(color: Colors.transparent),
            //     //         ),
            //     //         border: OutlineInputBorder(
            //     //           borderRadius: BorderRadius.circular(12.0),
            //     //         ),
            //     //         focusedBorder: OutlineInputBorder(
            //     //           borderRadius: BorderRadius.circular(12.0),
            //     //           borderSide: BorderSide(
            //     //             color: Theme.of(context).primaryColor,
            //     //           ),
            //     //         ),
            //     //         contentPadding: const EdgeInsets.symmetric(
            //     //           vertical: 5,
            //     //         ),
            //     //         hintText: 'Search',
            //     //       ),
            //     //     ),
            //     //   ),
            //   ],
            // ),
          );
  }
}
