import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hive_ce/hive.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:masarak/app/router/router.dart';
import 'package:masarak/const.dart';
import 'package:masarak/providers/sqflite_provider.dart';
import 'package:masarak/services/sqflite_service.dart';
import 'package:masarak/services/storage/static_setting_model.dart';
import 'package:masarak/services/storage/theme_storage.dart';
import 'package:masarak/widgets/overlay_screen.dart';
import 'package:wakelock_plus/wakelock_plus.dart';
// import 'package:hive_ce/hive_ce.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kDebugMode) {
    WakelockPlus.enable();
  }
  await Hive.initFlutter();
  await Hive.openBox('staticSetting');
  runApp(
    ProviderScope(
      overrides: [
        sqliteDBProvider.overrideWithValue(SqfliteService()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends HookConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    OverlayScreen? overlayScreen;

    final router = ref.read(routerProvider);
    // final theme = ref.read(themeProvider);
    // final appKey = ref.read(appContextProvider);

    var theme = useState(ThemeMode.system);
    ThemeStorage.listen(
      (value) {
        print('theme is :$value');
        theme.value = value!;
        // ref.invalidateSelf();
      },
    );
    return MaterialApp.router(
      title: 'Masarak',
      // key: appKey,
      builder: (context, child) {
        return Overlay(
          initialEntries: [
            OverlayEntry(
              builder: (context) {
// Create an instance of `OverlayScreen` to be accessed globally
                overlayScreen = OverlayScreen.of(context);
                return child ?? const SizedBox();
              },
            ),
          ],
        );
        // return Stack(
        //   children: [
        //     child!,
        //     Positioned(
        //       top: 15,
        //       child: Container(
        //         color: Colors.red,
        //         height: 50,
        //         width: MediaQuery.of(context).size.width,
        //         child: const Center(child: Text("HI I AM AN OVERLAY")),
        //       ),
        //     ),
        //   ],
        // );
      },

      routerConfig: router,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale(
          'en',
        ), // English
        Locale(
          'ar',
        ), // Spanish
      ],
      debugShowCheckedModeBanner: false,
      themeMode: theme.value,
      locale: Locale(
        'ar',
      ),
      theme: ThemeData(
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: {
            TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
            TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
            TargetPlatform.macOS: FadeUpwardsPageTransitionsBuilder(),
          },
        ),
        // colorSchemeSeed: const Color(primaryColorCode),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(primaryColorCode),
        ),
        primaryColor: MaterialColor(
          primaryColorCode,
          <int, Color>{
            50: const Color(primaryColorCode).withOpacity(0.1),
            100: const Color(primaryColorCode).withOpacity(0.2),
            200: const Color(primaryColorCode).withOpacity(0.3),
            300: const Color(primaryColorCode).withOpacity(0.4),
            400: const Color(primaryColorCode).withOpacity(0.5),
            500: const Color(primaryColorCode).withOpacity(0.6),
            600: const Color(primaryColorCode).withOpacity(0.7),
            700: const Color(primaryColorCode).withOpacity(0.8),
            800: const Color(primaryColorCode).withOpacity(0.9),
            900: const Color(primaryColorCode).withOpacity(1.0),
          },
        ),
        // scaffoldBackgroundColor: const Color(0xFF171821),
        scaffoldBackgroundColor: const Color(
          0xFFF8FAFC,
        ),
        fontFamily: 'Alexandria',
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: {
            TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
            TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
            TargetPlatform.macOS: FadeUpwardsPageTransitionsBuilder(),
          },
        ),
        // colorSchemeSeed: const Color(primaryColorCode),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(primaryColorCode),
          brightness: Brightness.dark,
        ),
        primaryColor: MaterialColor(
          primaryColorCode,
          <int, Color>{
            50: const Color(primaryColorCode).withOpacity(0.1),
            100: const Color(primaryColorCode).withOpacity(0.2),
            200: const Color(primaryColorCode).withOpacity(0.3),
            300: const Color(primaryColorCode).withOpacity(0.4),
            400: const Color(primaryColorCode).withOpacity(0.5),
            500: const Color(primaryColorCode).withOpacity(0.6),
            600: const Color(primaryColorCode).withOpacity(0.7),
            700: const Color(primaryColorCode).withOpacity(0.8),
            800: const Color(primaryColorCode).withOpacity(0.9),
            900: const Color(primaryColorCode).withOpacity(1.0),
          },
        ),
        // scaffoldBackgroundColor: const Color(0xFF171821),
        scaffoldBackgroundColor: const Color(
          0xFF11001c,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: const Color(
            0xFF11001c,
          ),
        ),
        canvasColor: const Color(
          0xFF11001c,
        ),
        fontFamily: 'Alexandria',
        brightness: Brightness.dark,
      ),
      // home: DashBoard(),
    );
  }
}
//add connection page in this code
//add UI in different page..
