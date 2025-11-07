// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:masarak_transporter/Responsive.dart';
import 'package:masarak_transporter/extentions.dart';
import 'package:masarak_transporter/pages/home/home_page.dart';
import 'package:masarak_transporter/pages/wallet/presentation/wallet_page.dart';
import 'package:masarak_transporter/pages/works/presentation/works_page.dart';
import 'package:masarak_transporter/widgets/menu.dart';

class ScaffoldingApp extends HookConsumerWidget {
  ScaffoldingApp({super.key, required this.child});
  static const String route = '/';
  final Widget child;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var menuExpanded = useState(true);
    return Scaffold(
      key: _scaffoldKey,
      appBar: (Responsive.isDesktop(context))
          ? null
          : AppBar(
              centerTitle: true,
              leading: InkWell(
                onTap: () =>
                    // ScaffoldMessenger.of(context).
                    _scaffoldKey.currentState?.openDrawer(),
                child: const Padding(
                  padding: EdgeInsets.all(3.0),
                  child: Icon(
                    Iconsax.menu,
                    // color: Colors.grey,
                    size: 25,
                  ),
                ),
              ),
              title: SvgPicture.asset(
                'assets/svg/masark.svg',
                width: 120,
                // height: 55,
                fit: BoxFit.fitWidth,
                color: context.theme.primaryColor,
              ),
            ),
      drawer: !Responsive.isDesktop(context)
          ? SizedBox(width: context.width * .7, child: Menu())
          : null,
      bottomNavigationBar: !Responsive.isDesktop(context)
          ? BottomNavigationBar(
              onTap: (value) {
                switch (value) {
                  case 0:
                    context.go(HomePage.route);
                    break;
                  case 1:
                    context.go(WalletPage.route);

                    break;
                  case 2:
                    context.go(WorksPage.route);

                    break;
                  default:
                    break;
                }
              },
              items: [
                BottomNavigationBarItem(
                  label: 'الرئيسية',
                  icon: Icon(Iconsax.home),
                ),
                BottomNavigationBarItem(
                  label: 'المحفظة',
                  icon: Icon(Iconsax.money),
                ),
                BottomNavigationBarItem(
                  label: 'اعمالي',
                  icon: Icon(Iconsax.ship),
                ),
              ],
            )
          : null,
      body: SafeArea(
        child: Column(
          children: [
            // Header(),
            Expanded(
              child: Row(
                children: [
                  if (Responsive.isDesktop(context))
                    AnimatedContainer(
                      height: MediaQuery.of(context).size.height,
                      // width: context.width * .2,
                      width: menuExpanded.value
                          ? context.width * .2
                          : context.width * .04,
                      duration: 500.ms,
                      child: Menu(
                        onToggle: (value) {
                          print(value);
                          menuExpanded.value = !value;
                        },
                        // isExpanded: false,
                      ),
                    ),
                  Expanded(
                    // flex: 8,
                    child: child,
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
