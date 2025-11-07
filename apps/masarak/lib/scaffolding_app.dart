// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:masarak/Responsive.dart';
import 'package:masarak/extentions.dart';
import 'package:masarak/pages/home/widgets/header_widget.dart';
import 'package:masarak/providers/app_context_provider.dart';
import 'package:masarak/widgets/menu.dart';
import 'package:masarak/widgets/my_bottom_nav_bar.dart';

class ScaffoldingApp extends HookConsumerWidget {
  const ScaffoldingApp({
    super.key,
    required this.child,
  });
  static const String route = '/';
  final Widget child;

  // final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    var menuExpanded = useState(true);
    var statePath = GoRouterState.of(context).fullPath;
    log(statePath.toString());
    var appKey = ref.read(appContextProvider);

    return PopScope(
      canPop: statePath == route,
      onPopInvokedWithResult: (didPop, result) {
        log(didPop.toString());
        if (didPop == false) {
          context.go(route);
        }
      },
      child: Scaffold(
        key: appKey,
        appBar: (Responsive.isDesktop(context))
            ? null
            : AppBar(
                // scrolledUnderElevation: 0,
                forceMaterialTransparency: true,
                // surfaceTintColor: Colors.transparent,
                // foregroundColor: Colors.transparent,
                centerTitle: true,
                leading: Builder(builder: (context) {
                  return InkWell(
                    onTap: () => Scaffold.of(context).openDrawer(),
                    child: const Padding(
                      padding: EdgeInsets.all(3.0),
                      child: Icon(
                        Iconsax.menu,
                        // color: Colors.grey,
                        size: 25,
                      ),
                    ),
                  );
                }),
                title: SvgPicture.asset(
                  'assets/svg/masark.svg',
                  width: 120,
                  // height: 55,
                  fit: BoxFit.fitWidth,
                  color: context.theme.primaryColor,
                ),
              ),
        drawer: SizedBox(
          width: context.width * .7,
          child: Menu(),
        ),
        // drawer: !Responsive.isDesktop(context)
        //     ? SizedBox(
        //         width: context.width * .7,
        //         child: Menu(),
        //       )
        //     : null,
        bottomNavigationBar:
            (Responsive.isDesktop(context)) ? null : MyBottomNavigationBar(),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    if (Responsive.isDesktop(context))
                      AnimatedContainer(
                        height: MediaQuery.of(context).size.height,
                        // width: context.width * .2,
                        width: menuExpanded.value ? context.width * .2 : 75,
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
                      child: Column(
                        children: [
                          Padding(
                            padding: 16.0.symetric,
                            child: Header(),
                          ),
                          Expanded(child: child),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
