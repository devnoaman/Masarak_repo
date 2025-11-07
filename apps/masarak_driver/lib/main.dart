import 'package:api_client/api_client.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:masarak_driver/app/router/router.dart';
import 'package:masarak_driver/const.dart';
import 'package:masarak_driver/firebase_options.dart';
import 'package:masarak_driver/network/api/endpoints.dart';
import 'package:masarak_driver/pages/home/controllers/get_server_url_controller.dart';
import 'package:masarak_driver/pages/notifications/providers/sqflite_provider.dart';
import 'package:masarak_driver/pusher_service.dart';
import 'package:masarak_driver/services/sqflite_service.dart';
import 'package:masarak_driver/services/storage/theme_storage.dart';
import 'package:pusher_beams/pusher_beams.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

import 'providers/beams_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  Configuration.baseUrl = Endpoints.baseUrl;
  // prepare server url

  // await GetServerUrlController().call();

  Configuration.refreshUrl = Endpoints.refreshToken;
  if (kDebugMode) {
    WakelockPlus.enable();
  }
  WidgetsFlutterBinding.ensureInitialized(); // Add this line
  // dev
  // await PusherService.init('5e06a5dc-6cf7-4bc1-9db5-026ebb36d468');
  // masarak
  // await PusherService.init('fd990511-0ba8-4220-96cf-88b58791298a');

  // PusherService
  // await PusherBeams.instance.setDeviceInterests(['hello', 'all-users']);
  // print(await PusherBeams.instance.getDeviceInterests());

  runApp(
    ProviderScope(
      overrides: [
        // frequencyProvider.notifier.read(Node).initTable()
        // routerProvider.overrideWithValue(RouterService()),
        sqliteDBProvider.overrideWithValue(SqfliteService()),

        // })
      ],

      child: const MyApp(),
    ),
  );
}

class MyApp extends HookConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.read(routerProvider);

    // final theme = ref.read(themeProvider);
    var theme = useState(ThemeMode.system);
    ThemeStorage.listen((value) {
      print('theme is :$value');
      theme.value = value!;
      // ref.invalidateSelf();
    });
    return MaterialApp.router(
      title: 'Masarak Driver',
      routerConfig: router,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English
        Locale('ar'), // A
      ],
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light, // theme.value,
      locale: Locale('ar'),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          foregroundColor: Colors.white,
        ),
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
        primaryColor: MaterialColor(primaryColorCode, <int, Color>{
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
        }),
        // scaffoldBackgroundColor: const Color(0xFF171821),
        scaffoldBackgroundColor: const Color(0xFF2F2F7F),
        // scaffoldBackgroundColor: const Color(0xFFF8FAFC),
        fontFamily: 'Wahran',
        brightness: Brightness.light,
      ),
      // darkTheme: ThemeData(
      //   pageTransitionsTheme: const PageTransitionsTheme(
      //     builders: {
      //       TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
      //       TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
      //       TargetPlatform.macOS: FadeUpwardsPageTransitionsBuilder(),
      //     },
      //   ),
      //   // colorSchemeSeed: const Color(primaryColorCode),
      //   colorScheme: ColorScheme.fromSeed(
      //     seedColor: const Color(primaryColorCode),
      //     brightness: Brightness.dark,
      //   ),
      //   primaryColor: MaterialColor(primaryColorCode, <int, Color>{
      //     50: const Color(primaryColorCode).withOpacity(0.1),
      //     100: const Color(primaryColorCode).withOpacity(0.2),
      //     200: const Color(primaryColorCode).withOpacity(0.3),
      //     300: const Color(primaryColorCode).withOpacity(0.4),
      //     400: const Color(primaryColorCode).withOpacity(0.5),
      //     500: const Color(primaryColorCode).withOpacity(0.6),
      //     600: const Color(primaryColorCode).withOpacity(0.7),
      //     700: const Color(primaryColorCode).withOpacity(0.8),
      //     800: const Color(primaryColorCode).withOpacity(0.9),
      //     900: const Color(primaryColorCode).withOpacity(1.0),
      //   }),
      //   // scaffoldBackgroundColor: const Color(0xFF171821),
      //   scaffoldBackgroundColor: const Color(0xFF11001c),
      //   appBarTheme: AppBarTheme(backgroundColor: const Color(0xFF11001c)),
      //   canvasColor: const Color(0xFF11001c),
      //   fontFamily: 'Wahran',
      //   brightness: Brightness.dark,
      // ),

      // home: DashBoard(),
    );
  }
}

//add connection page in this code
//add UI in different page..
// حساب العميل
// 07703218566
