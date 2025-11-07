import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:masarak_transporter/app/router/router.dart';
import 'package:masarak_transporter/const.dart';
import 'package:masarak_transporter/services/storage/theme_storage.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  if (kDebugMode) {
    WakelockPlus.enable();
  }
  runApp(ProviderScope(child: const MyApp()));
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
      title: 'Masarak',
      routerConfig: router,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English
        Locale('ar'), // Spanish
      ],
      debugShowCheckedModeBanner: false,
      themeMode: theme.value,
      locale: Locale('ar'),
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
        scaffoldBackgroundColor: const Color(0xFFF8FAFC),
        fontFamily: 'GRAPHIK',
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
        scaffoldBackgroundColor: const Color(0xFF11001c),
        appBarTheme: AppBarTheme(backgroundColor: const Color(0xFF11001c)),
        canvasColor: const Color(0xFF11001c),
        fontFamily: 'GRAPHIK',
        brightness: Brightness.dark,
      ),
      // home: DashBoard(),
    );
  }
}

//add connection page in this code
//add UI in different page..
